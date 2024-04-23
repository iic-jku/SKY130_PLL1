----------------------------------------------------------------------------------
-- Company: IIC
-- Engineer: Tim Schumacher
-- 
-- Create Date: 24.02.2021 
-- Module Name: udp2spi_unit
-- Project Name: artya7_35_spi2uart
-- Target Devices: artya7_35
-- Tool Versions: Vivado 2020.2
-- Description: 
--    check uart_unit and udp_unit for protocol implementation                   
--    use with python to enable com port comunication                           
--    four  modes are possible:                                                  
--      I to reset DUT and Initialize SPI                                          
--      S to send Data to SPI register and read back internal value 
--      W to write to external PIN1,PIN2                                                       
--      R to read from external PIN3

-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library work;
	use work.artya7_35_spi2uart_pkg.all;
	
library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

entity udp2spi_unit is --!@brief entity of control-unit of UART-System
	generic (
        reset_active :              std_ulogic := '1';
        reset_dut_period :          natural := 50000
    );      
	port(clk_i :					in  std_ulogic; --! trigger on rising edge
		 rst_i :					in  std_ulogic;
		 
         UDP0_TxData               : out  std_logic_vector(7 downto 0);  --Transmit data
         UDP0_TxValid              : out  std_logic;                     --Transmit data valid
         UDP0_TxReady              : in   std_logic;                     --Transmit data ready
         UDP0_TxLast               : out  std_logic;                     --Transmit data last
        
         UDP0_RxData               : in   std_logic_vector(7 downto 0);  --Receive data
         UDP0_RxValid              : in   std_logic;                     --Receive data valid
         UDP0_RxReady              : out  std_logic;                     --Receive data ready
         UDP0_RxLast               : in   std_logic;                     --Transmit data last
		 
		 spi_data_to_write_o :		out std_ulogic_vector(DATA_MSB downto 0);
		 spi_send_strobe_o :		out std_ulogic;
		 spi_receive_data_i :		in  std_ulogic_vector(DATA_MSB downto 0);
		 spi_receive_strobe_i : 	in  std_ulogic;
		 spi_read_only_flag   :     out std_logic;

         PIN1_o :                   out std_ulogic;    -- gpio
         PIN2_o :                   out std_ulogic;    -- gpio
         PIN3_i :                   in  std_ulogic;    -- gpio

		 remote_active :			out std_ulogic;
		 reset_DUT_o :				out std_ulogic	 
		 );			 
end entity udp2spi_unit;


architecture rtl of udp2spi_unit is 
	
	type state_t is (
		idle_e, 
		receive_spi_1_e, 
		receive_spi_2_e,
		receive_spi_3_e,
		receive_spi_4_e,
		receive_spi_5_e,
		receive_spi_6_e,
		receive_spi_7_e,
		receive_spi_8_e,
		receive_spi_9_e,
		receive_spi_10_e,
		receive_spi_11_e,
		receive_spi_last_e, 
		send_spi_1_e, 
		send_spi_2_e, 
		send_spi_3_e,
		send_spi_4_e,
		send_spi_5_e,
		send_spi_6_e,
		send_spi_7_e,
		send_spi_8_e,
		send_spi_9_e,
		send_spi_10_e,
		send_spi_11_e,
		send_spi_last_e,
		write_gpio_e,
		read_gpio_e,
		reset_DUT_e
	);
	signal s_state : state_t := idle_e;
	signal reset_DUT_cnt : natural range 0 to 50000;
	signal spi_read_only_flag_s : std_ulogic;
	
begin

state_proc: process (clk_i, rst_i)
begin
	if rst_i = reset_active then
		s_state 		<= idle_e;	
        UDP0_RxReady    <= '0';                  --deactivate RX
        UDP0_TxValid    <= '0';                  --deactivate TX, activate when ready to RX or TX
        UDP0_TxLast     <= '0';    
        
        spi_data_to_write_o   <= (others => '0');
        spi_send_strobe_o 	  <= '0';		
        reset_DUT_o           <= not(reset_active);	
        PIN1_o                <= '0';
        PIN2_o                <= '0';
        spi_read_only_flag_s <= '0';
        
	elsif rising_edge(clk_i) then
        
       UDP0_RxReady    <= '0';                  --deactivate RX
       UDP0_TxValid    <= '0';                  --deactivate TX, activate when ready to RX or TX
       UDP0_TxLast     <= '0';
        case s_state is		
            when idle_e =>        
                -- set all signals to zero when in idle
                spi_data_to_write_o <= (others => '0');
                spi_send_strobe_o 	<= '0';		
                reset_DUT_o         <= not(reset_active);
                UDP0_RxReady        <= '1'; --activate RX
    
                if UDP0_RxValid = '1' then	-- valid UDP data received
                    --remote_active       <= '1';
                    
                    case UDP0_RxData is
                        when x"49" =>	                        -- "I", Init-Mode --> reset DUT and send back "I" to acknowledge,
                                                                -- that FPGA and DUT are ready for commands
                            reset_DUT_cnt 	    <= reset_dut_period;
                            reset_DUT_o 	    <= reset_active;                            
                            s_state		        <= reset_DUT_e;
                        when x"54" =>
                            spi_read_only_flag_s <= '1';
                            s_state             <= receive_spi_1_e;
                        when x"53" => 	                        -- "S", send mode
                            spi_read_only_flag_s <= '0';
                            s_state		        <= receive_spi_1_e;
    					when x"52" => 	                        -- "R"  read the GPIO PIN
                            s_state 		    <= read_gpio_e;
                        when x"57" => 	                        -- "W"  write the GPIO PIN
                            s_state 		    <= write_gpio_e;
                        when others => 
                            s_state		        <= idle_e;
                    end case;
                end if;
                
            -- this block stores all udp information for the SPI, 
            -- after all data is received, a SPI transfer is triggered 
            when receive_spi_1_e =>					                             -- receive first byte of data for the SPI
                UDP0_RxReady                            <= '1';                  -- activate RX
                if UDP0_RxValid = '1' then	                                     -- valid UART data received
                    spi_data_to_write_o(95 downto 88) 	<= std_ulogic_vector(UDP0_RxData(7 downto 0));
                    s_state						        <= receive_spi_2_e;
                end if;
            when receive_spi_2_e => 				                             -- receive second byte of data for the SPI
                UDP0_RxReady                            <= '1';                  -- activate RX
                if UDP0_RxValid = '1' then	                                     -- valid UART data received
                    spi_data_to_write_o(87 downto 80) 	<= std_ulogic_vector(UDP0_RxData(7 downto 0));
                    s_state						        <= receive_spi_3_e;
                end if;
            when receive_spi_3_e => 				                             -- receive second byte of data for the SPI
                UDP0_RxReady                            <= '1';                  -- activate RX
                if UDP0_RxValid = '1' then	                                     -- valid UART data received
                    spi_data_to_write_o(79 downto 72) 	<= std_ulogic_vector(UDP0_RxData(7 downto 0));
                    s_state						        <= receive_spi_4_e;
                end if;
             when receive_spi_4_e => 				                             -- receive second byte of data for the SPI
                UDP0_RxReady                            <= '1';                  -- activate RX
                if UDP0_RxValid = '1' then	                                     -- valid UART data received
                    spi_data_to_write_o(71 downto 64) 	<= std_ulogic_vector(UDP0_RxData(7 downto 0));
                    s_state						        <= receive_spi_5_e;
                end if;
             when receive_spi_5_e => 				                             -- receive second byte of data for the SPI
                UDP0_RxReady                            <= '1';                  -- activate RX
                if UDP0_RxValid = '1' then	                                     -- valid UART data received
                    spi_data_to_write_o(63 downto 56) 	<= std_ulogic_vector(UDP0_RxData(7 downto 0));
                    s_state						        <= receive_spi_6_e;
                end if;
             when receive_spi_6_e => 				                             -- receive second byte of data for the SPI
                UDP0_RxReady                            <= '1';                  -- activate RX
                if UDP0_RxValid = '1' then	                                     -- valid UART data received
                    spi_data_to_write_o(55 downto 48) 	<= std_ulogic_vector(UDP0_RxData(7 downto 0));
                    s_state						        <= receive_spi_7_e;
                end if;
             when receive_spi_7_e => 				                             -- receive second byte of data for the SPI
                UDP0_RxReady                            <= '1';                  -- activate RX
                if UDP0_RxValid = '1' then	                                     -- valid UART data received
                    spi_data_to_write_o(47 downto 40) 	<= std_ulogic_vector(UDP0_RxData(7 downto 0));
                    s_state						        <= receive_spi_8_e;
                end if;
             when receive_spi_8_e => 				                             -- receive second byte of data for the SPI
                UDP0_RxReady                            <= '1';                  -- activate RX
                if UDP0_RxValid = '1' then	                                     -- valid UART data received
                    spi_data_to_write_o(39 downto 32) 	<= std_ulogic_vector(UDP0_RxData(7 downto 0));
                    s_state						        <= receive_spi_9_e;
                end if;
             when receive_spi_9_e => 				                             -- receive second byte of data for the SPI
                UDP0_RxReady                            <= '1';                  -- activate RX
                if UDP0_RxValid = '1' then	                                     -- valid UART data received
                    spi_data_to_write_o(31 downto 24) 	<= std_ulogic_vector(UDP0_RxData(7 downto 0));
                    s_state						        <= receive_spi_10_e;
                end if;
            when receive_spi_10_e => 				                             -- receive second byte of data for the SPI
                UDP0_RxReady                            <= '1';                  -- activate RX
                if UDP0_RxValid = '1' then	                                     -- valid UART data received
                    spi_data_to_write_o(23 downto 16) 	<= std_ulogic_vector(UDP0_RxData(7 downto 0));
                    s_state						        <= receive_spi_11_e;
                end if;
            when receive_spi_11_e => 				                             -- receive second byte of data for the SPI
                UDP0_RxReady                            <= '1';                  -- activate RX
                if UDP0_RxValid = '1' then	                                     -- valid UART data received
                    spi_data_to_write_o(15 downto 8) 	<= std_ulogic_vector(UDP0_RxData(7 downto 0));
                    s_state						        <= receive_spi_last_e;
                end if;
            when receive_spi_last_e => 				                             -- receive second byte of data for the SPI
                UDP0_RxReady                            <= '1';                  -- activate RX
                if UDP0_RxValid = '1' then	                                     -- valid UART data received
                    spi_data_to_write_o(7 downto 0) 	<= std_ulogic_vector(UDP0_RxData(7 downto 0));
                    spi_send_strobe_o 					<= '1';                  -- trigger SPI transfer
                    s_state						        <= send_spi_1_e;
                end if;
                
                
         
            -- this block controls the received data from the SPI 
            -- a transmission to UDP is triggered and state-machine is set back to idle_e
            when send_spi_1_e =>
                spi_send_strobe_o 					<= '0';                  -- trigger SPI transfer
                if spi_receive_strobe_i = '1' and (UDP0_TxReady = '1') then                  -- valid SPI data received				
                    UDP0_TxData 	   <= std_logic_vector(spi_receive_data_i(7 downto 0)); -- transmit first byte of data from the SPI
                    UDP0_TxValid       <= '1';
                    s_state			   <= send_spi_2_e;
                end if;
            when send_spi_2_e =>
                UDP0_TxValid    	<= '0';
                if (UDP0_TxReady = '1') then                                                 -- directly start transfer after second byte 			
                    UDP0_TxData 	   <= std_logic_vector(spi_receive_data_i(15 downto 8)); -- transmit first byte of data from the SPI
                    UDP0_TxValid       <= '1';
                    s_state			   <= send_spi_3_e;
                end if;
             when send_spi_3_e =>
                UDP0_TxValid    	<= '0';
                if (UDP0_TxReady = '1') then                                                 -- directly start transfer after second byte 
                    UDP0_TxData 	   <= std_logic_vector(spi_receive_data_i(23 downto 16)); -- transmit first byte of data from the SPI
                    UDP0_TxValid       <= '1';
                    s_state			   <= send_spi_4_e;
                end if;
             when send_spi_4_e =>
                UDP0_TxValid    	<= '0';
                if (UDP0_TxReady = '1') then                                                 -- directly start transfer after second byte 
                    UDP0_TxData 	   <= std_logic_vector(spi_receive_data_i(31 downto 24)); -- transmit first byte of data from the SPI
                    UDP0_TxValid       <= '1';
                    s_state			   <= send_spi_5_e;
                end if;
             when send_spi_5_e =>
                UDP0_TxValid    	<= '0';
                if (UDP0_TxReady = '1') then                                                 -- directly start transfer after second byte 
                    UDP0_TxData 	   <= std_logic_vector(spi_receive_data_i(39 downto 32)); -- transmit first byte of data from the SPI
                    UDP0_TxValid       <= '1';
                    s_state			   <= send_spi_6_e;
                end if;
             when send_spi_6_e =>
                UDP0_TxValid    	<= '0';
                if (UDP0_TxReady = '1') then                                                 -- directly start transfer after second byte 
                    UDP0_TxData 	   <= std_logic_vector(spi_receive_data_i(47 downto 40)); -- transmit first byte of data from the SPI
                    UDP0_TxValid       <= '1';
                    s_state			   <= send_spi_7_e;
                end if;
             when send_spi_7_e =>
                UDP0_TxValid    	<= '0';
                if (UDP0_TxReady = '1') then                                                 -- directly start transfer after second byte 
                    UDP0_TxData 	   <= std_logic_vector(spi_receive_data_i(55 downto 48)); -- transmit first byte of data from the SPI
                    UDP0_TxValid       <= '1';
                    s_state			   <= send_spi_8_e;
                end if;
             when send_spi_8_e =>
                UDP0_TxValid    	<= '0';
                if (UDP0_TxReady = '1') then                                                 -- directly start transfer after second byte 
                    UDP0_TxData 	   <= std_logic_vector(spi_receive_data_i(63 downto 56)); -- transmit first byte of data from the SPI
                    UDP0_TxValid       <= '1';
                    s_state			   <= send_spi_9_e;
                end if;
             when send_spi_9_e =>
                UDP0_TxValid    	<= '0';
                if (UDP0_TxReady = '1') then                                                 -- directly start transfer after second byte 
                    UDP0_TxData 	   <= std_logic_vector(spi_receive_data_i(71 downto 64)); -- transmit first byte of data from the SPI
                    UDP0_TxValid       <= '1';
                    s_state			   <= send_spi_10_e;
                end if;
             when send_spi_10_e =>
                UDP0_TxValid    	<= '0';
                if (UDP0_TxReady = '1') then                                                 -- directly start transfer after second byte 
                    UDP0_TxData 	   <= std_logic_vector(spi_receive_data_i(79 downto 72)); -- transmit first byte of data from the SPI
                    UDP0_TxValid       <= '1';
                    s_state			   <= send_spi_11_e;
                end if;
             when send_spi_11_e =>
                UDP0_TxValid    	<= '0';
                if (UDP0_TxReady = '1') then                                                 -- directly start transfer after second byte 
                    UDP0_TxData 	   <= std_logic_vector(spi_receive_data_i(87 downto 80)); -- transmit first byte of data from the SPI
                    UDP0_TxValid       <= '1';
                    s_state			   <= send_spi_last_e;
                end if;
             
             when send_spi_last_e =>
                UDP0_TxValid    	<= '0';
                if (UDP0_TxReady = '1') then                                                 -- directly start transfer after second byte 
                    UDP0_TxData 	    <= std_logic_vector(spi_receive_data_i(95 downto 88)); -- transmit second byte of data from the SPI
                    UDP0_TxValid    	<= '1';
                    UDP0_TxLast         <= '1';
                    s_state		        <= idle_e;
                end if;  
                
    
             -- handling GPIOs
            when write_gpio_e =>          
                UDP0_RxReady                         <= '1';                 -- activate RX
                if UDP0_RxValid = '1' then	                                 -- valid UART data received
                    PIN2_o 							<= UDP0_RxData(1);
                    PIN1_o 							<= UDP0_RxData(0);
                    s_state						    <= read_gpio_e;
                end if;
            when read_gpio_e => 
                if (UDP0_TxReady = '1') then         
                    UDP0_TxData     	<= "0000000" & PIN3_i; 
                    UDP0_TxValid    	<= '1';
                    UDP0_TxLast         <= '1';
                    s_state 		    <= idle_e;
                end if;
  
            -- handling rest of DUT
            when reset_DUT_e =>
                if reset_DUT_cnt = 0 then
                    reset_DUT_o 		<= not(reset_active);
                    if (UDP0_TxReady = '1') then                         -- wait for UART to finish transmission
                        UDP0_TxData     	<= x"49"; -- "I"
                        UDP0_TxValid    	<= '1';
                        UDP0_TxLast         <= '1';
                        s_state 		    <= idle_e;
                    end if;
                else
                    reset_DUT_cnt    	<= reset_DUT_cnt - 1;
                end if;	
                
                
            -- others for handling errors
            when others =>
              s_state			<= idle_e;
              --nothing
        end case; 
    end if;
end process;

spi_read_only_flag <= spi_read_only_flag_s; 

end architecture rtl;