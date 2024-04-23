
--
--                                                                          ___    
--                                                                         /\  \   
--                                                                         \:\  \  
-- --------------------------------------------------------                /::\__\ 
--  Title      : SKY130 PLL Controller                                  __/:/\/__/   
--  Project    : SKY130 PLL                                            /\/:/  /  ___      
-- --------------------------------------------------------            \::/__/  /\  \     
--  File       : pll_controller.vhd                                     \:\__\  \:\  \    
--  Author     : Patrick Fath                                            \/__/  /::\__\
--  Company    : IIC                                                         __/:/\/__/
--  Created    : April 2024                                                 /\/:/  /  ___  
-- --------------------------------------------------------                 \::/__/  /\  \   
--  Description:                                                             \:\__\ /::\  \
--    Controller for digital part of the SKY130 PLL                           \/__//:/\:\  \
--                                                                                /:/  \:\  \ 
--                                                                               /:/__/ \:\__\
--                                                                               \:\  \  \/__/
--                                                                                \:\  \      
--                                                                                 \:\  \     
--  --------------------------------------------------------                        \:\__\    
--  --------------------------------------------------------                         \/__/    
--

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity pll_controller is
    generic (
        reset_active :              std_ulogic := '1';
		half_clk_period_index : natural := 50; --for 100MHz arty clk -> peripheral clock is 1MHz
        n : natural := 96
    );
        
    port (
		clk_peri    : out std_ulogic;    --clock for peripheral
		load    	: out std_ulogic;    --read strobe for transfering the data to the shiftreg
		read    	: out std_ulogic;   --reading data from the shiftreg
		s_in        : out std_ulogic;    --peripheral register input
		s_out       : in std_ulogic;    --peripheral register output
		--debug0 : out std_ulogic;
		--debug1 : out std_ulogic;
		--debug2 : out std_ulogic;
		--debug3 : out std_ulogic;

		data_received : out std_ulogic_vector(n-1 downto 0);
		data_received_strobe : out std_ulogic;

		clk     : in std_ulogic;    --master clock (100 MHz)
		rst     : in std_ulogic;     --Reset
		data_to_be_sent : in std_ulogic_vector(n-1 downto 0);
		read_only_flag : in std_ulogic; --if 1 read only data if 0 send data
		start_comm : in std_ulogic;
		transmit_flag   : out std_ulogic
    );
end pll_controller;

architecture pll_controller_bhv of pll_controller is

    type master_states is (idle, set_read, set_read_wait, send_receive_data, send_receive_data_wait, set_load, set_load_wait);
    signal master_state : master_states;
    
	signal clk_peri_s : std_ulogic;
	signal load_s : std_ulogic;
	signal read_s : std_ulogic;
	signal s_in_s : std_ulogic;
	signal data_received_trigger_s : std_ulogic_vector(n-1 downto 0);
	signal transmit_flag_s : std_ulogic;
	signal read_only_flag_s : std_ulogic;
    
    signal bit_cnt : natural range 0 to n-1;
    signal clk_cnt : natural range 0 to 2*half_clk_period_index;
	signal clk_cnt_per : natural range 0 to half_clk_period_index;

begin

    communication_proc : process (clk, rst) is   
    begin
        if rst = reset_active then
            master_state <= idle;
			
            clk_peri_s <= '0';
			load_s <= '0';
			read_s <= '0';
			s_in_s <= '0';
			transmit_flag_s <= '0';
			read_only_flag_s <= '0';
			data_received_strobe <= '0';
			data_received_trigger_s <= (others => '0');
			
			bit_cnt <= 0;
			clk_cnt <= 0;
			clk_cnt_per <= 0;
        elsif clk'event and clk = '1' then
			if clk_cnt_per < half_clk_period_index-1 then
			     clk_cnt_per <= clk_cnt_per + 1;
			else
				if (master_state /= idle) and (master_state /= set_read) then
					clk_peri_s <= not(clk_peri_s);
				end if;
			    clk_cnt_per <= 0;
			end if;
            case master_state is
                when idle =>
                    data_received_strobe <= '0';
                    if start_comm = '1' then
						read_only_flag_s <= read_only_flag;
                        transmit_flag_s <= '1';
						master_state <= set_read;
                    else
						read_only_flag_s <= '0';
                        transmit_flag_s <= '0';
                    end if;
					
                when set_read =>
					if clk_cnt_per = 0 then
						read_s <= read_only_flag_s;
						master_state <= set_read_wait;
					end if;
					
				when set_read_wait =>
					if clk_cnt < 2*half_clk_period_index-3 then
						clk_cnt <= clk_cnt + 1;
					else
						read_s <= '0';
						master_state <= send_receive_data;
					end if;
					
				when send_receive_data =>
					s_in_s <= data_to_be_sent(bit_cnt);
					clk_cnt <= 0;
					if (s_out = '1') then
					   data_received_trigger_s(n-2-bit_cnt) <= '1';
					else
					   data_received_trigger_s(n-2-bit_cnt) <= '0';
					end if;
					master_state <= send_receive_data_wait;
					
				when send_receive_data_wait =>
					if clk_cnt < 2*half_clk_period_index-2 then
						clk_cnt <= clk_cnt + 1;
					elsif bit_cnt = n - 1 then
						bit_cnt <= 0;
						data_received <= data_received_trigger_s;
						master_state <= set_load;
					else
						bit_cnt <= bit_cnt + 1;
						master_state <= send_receive_data;
					end if;
					
				when set_load =>
					clk_cnt <= 0;
					if read_only_flag_s = '1' then
						load_s <= '0';
						master_state <= idle;
						data_received_strobe <= '1';
					else
						load_s <= '1';
						master_state <= set_load_wait;
					end if;
					
				when set_load_wait =>
					if clk_cnt < 2*half_clk_period_index-1 then
						clk_cnt <= clk_cnt + 1;
					else
						load_s <= '0';
						clk_cnt <= 0;
						master_state <= idle;
						data_received_strobe <= '1';
					end if;
					
            end case;
        end if;
    end process;
	
	clk_peri <= clk_peri_s;
	load <= load_s;
	read <= read_s;
	s_in <= s_in_s;
	transmit_flag <= transmit_flag_s;
	
	--debug0 <= data_received_trigger_s(0);
	--debug1 <= data_received_trigger_s(1);
	--debug2 <= data_received_trigger_s(94);
	--debug3 <= data_received_trigger_s(95);

end architecture pll_controller_bhv;