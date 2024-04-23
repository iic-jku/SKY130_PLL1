----------------------------------------------------------------------------------
-- Company: IIC
-- Engineer: Tim Schumacher
--
-- Create Date: 24.02.2021
-- Module Name: arty7_35_spi2uart
-- Project Name: artya7_35_spi2uart
-- Target Devices: artya7_35
-- Tool Versions: Vivado 2020.2
-- Description:
--    check uart_unit and udp_unit for protocoll implementation
--    board uses a switch to toogle between both modes
--    IP is fixed to   140.78.161.39
--                     UDP Port 57345
--    CLK is fixed in SPI module to <200KHz modify in this module!
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- Modul combiining TX and RX of UART
----------------------------------------------------------------------------------


library work;
	use work.artya7_35_spi2uart_pkg.all;

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity artya7_35_spi2uart is
    port (
    CLK100MHZ       : in std_ulogic;
    SW_1MCLK_EN            : in std_ulogic;      -- switch 3
    BTN_RST            : in std_ulogic;      -- BTN 0
    --SPI
    REG_CLK            : out std_ulogic;    -- 
    READ            : out std_ulogic;    -- 
    LOAD            : out std_ulogic;     -- 
    SIN            : out std_ulogic;     -- 
    SOUT              : in std_ulogic;    --
    reset_to_chip   : out std_ulogic; -- reset to chip IC
    reset_to_chip_mgmt : out std_ulogic;
	PIN1_o          : out std_ulogic;
	PIN2_o          : out std_ulogic;
	PIN3_i          : in std_ulogic;
	-- Ethernet MII  DP83848J
    eth_ref_clk     : out std_ulogic;                     -- Reference Clock X1
    eth_mdc         : out std_ulogic;
    eth_mdio        : inout std_ulogic;
    eth_rstn        : out std_ulogic;                     -- Reset Phy
    eth_rx_clk      : in  std_ulogic;                     -- Rx Clock
    eth_rx_dv       : in  std_ulogic;                     -- Rx Data Valid
    eth_rxd         : in  std_logic_vector(3 downto 0);  -- RxData
    eth_rxerr       : in  std_ulogic;                     -- Receive Error
    eth_col         : in  std_ulogic;                     -- Ethernet Collision
    eth_crs         : in  std_ulogic;                     -- Ethernet Carrier Sense
    eth_tx_clk      : in  std_ulogic;                     -- Tx Clock
    eth_tx_en       : out std_ulogic;                     -- Transmit Enable
    eth_txd         : out std_logic_vector(3 downto 0);   -- Transmit Data
    
        --DEBUG
    	--debug0 : out std_ulogic;
		--debug1 : out std_ulogic;
		--debug2 : out std_ulogic;
		--debug3 : out std_ulogic;
    
        -- CLK1M IC
    CLK_1M_OUT : out std_ulogic --output of 1M clk
    );
end entity;

architecture artya7_35_spi2uart_bhv of artya7_35_spi2uart is

--Signals
--=============================================================
    signal udp_spi_data_to_send     : std_ulogic_vector(DATA_MSB downto 0);
    signal udp_spi_send_strobe      : std_ulogic;
   	signal udp_reset_dut            : std_ulogic;
   	
   	signal dhcp_ready               : std_logic;

    signal udp0_service             : std_logic_vector(15 downto 0);
    signal udp0_serverPort          : std_logic_vector(15 downto 0);
    signal udp0_connected           : std_logic;
    signal udp0_outIsEmpty          : std_logic;
    signal udp0_txData              : std_logic_vector(7 downto 0);
    signal udp0_txValid             : std_logic;
    signal udp0_txReady             : std_logic;
    signal udp0_txLast              : std_logic;
    signal udp0_rxData              : std_logic_vector(7 downto 0);
    signal udp0_rxValid             : std_logic;
    signal udp0_rxReady             : std_logic;
    signal udp0_rxLast              : std_logic;

    signal udp_PIN1                 : std_ulogic;    -- gpio
    signal udp_PIN2                 : std_ulogic;    -- gpio
    signal uart_PIN1                : std_ulogic;    -- gpio
    signal uart_PIN2                : std_ulogic;    -- gpio
	
	signal transmit_flag            : std_ulogic; --not used

    signal spi_data_to_send         : std_ulogic_vector(DATA_MSB downto 0);
    signal spi_send_strobe          : std_ulogic;
    signal spi_read_only_flag_s      : std_ulogic;
	signal spi_data_received        : std_ulogic_vector(DATA_MSB downto 0);
	signal spi_received_strobe      : std_ulogic;
	
    -- SPI
    signal reset_s                    : std_ulogic;
	signal reset_DUT			    : std_ulogic;
	signal reset_DUT_corr_s         : std_ulogic;      --reset for DUT corrected by reset_active_dut!
	-- ADC CLK
    signal clk_1M_out_s            : std_ulogic := '0';   -- clk64k for IC1/IC2
    signal clk_1M_out_cnt_s        : natural range 0 to 1000 := 0;  -- counter for clk64k

        

    component FC1001_MII is
    port (
        --Sys/Common
        Clk             : in  std_logic; --100 MHz
        Reset           : in  std_logic; --Active high
        UseDHCP         : in  std_logic; --'1' to use DHCP
        IP_Addr         : in  std_logic_vector(31 downto 0); --IP address if not using DHCP
        IP_Ok           : out std_logic; --DHCP ready

        --MAC/MII
        MII_REF_CLK_25M : out std_logic; --MII continous 25 MHz reference clock
        MII_RST_N       : out std_logic; --Phy reset, active low
        MII_COL         : in  std_logic; --Collision detect
        MII_CRS         : in  std_logic; --Carrier sense
        MII_RX_CLK      : in  std_logic; --Receive clock
        MII_CRS_DV      : in  std_logic; --Receive data valid
        MII_RXD         : in  std_logic_vector(3 downto 0); --Receive data
        MII_RXERR       : in  std_logic; --Receive error
        MII_TX_CLK      : in  std_logic; --Transmit clock
        MII_TXEN        : out std_logic; --Transmit enable
        MII_TXD         : out std_logic_vector(3 downto 0); --Transmit data
        MII_MDC         : out std_logic; --Management clock
        MII_MDIO        : inout std_logic; --Management data

        --UDP Basic Server
        UDP0_Reset      : in  std_logic; --Reset interface, active high
        UDP0_Service    : in  std_logic_vector(15 downto 0); --Service
        UDP0_ServerPort : in  std_logic_vector(15 downto 0); --UDP local server port
        UDP0_Connected  : out std_logic; --Client connected
        UDP0_OutIsEmpty : out std_logic; --All outgoing data acked
        UDP0_TxData     : in  std_logic_vector(7 downto 0); --Transmit data
        UDP0_TxValid    : in  std_logic; --Transmit data valid
        UDP0_TxReady    : out std_logic; --Transmit data ready
        UDP0_TxLast     : in  std_logic; --Transmit data last
        UDP0_RxData     : out std_logic_vector(7 downto 0); --Receive data
        UDP0_RxValid    : out std_logic; --Receive data valid
        UDP0_RxReady    : in  std_logic; --Receive data ready
        UDP0_RxLast     : out std_logic  --Transmit data last
    );
end component;

begin

    PLL_CONTROLLER_inst : entity work.pll_controller(pll_controller_bhv)
    generic map (
        reset_active => RESET_ACTIVE,
		half_clk_period_index => HALF_CLK_PERIOD_INDEX,
		n => 96
    )   
    port map (
		clk_peri => REG_CLK,
		load  => LOAD,
		read => READ,
		s_in => SIN,
		s_out => SOUT,
		--debug0 => debug0,
		--debug1 => debug1,
		--debug2 => debug2,
		--debug3 => debug3,

		data_received => spi_data_received,
		data_received_strobe => spi_received_strobe,

		clk   => CLK100MHZ,
		rst => reset_s,
		data_to_be_sent => spi_data_to_send,
		read_only_flag  => spi_read_only_flag_s,
		start_comm  => spi_send_strobe,
		transmit_flag  => transmit_flag
    );
        
      ETH_inst: FC1001_MII
        port map(
            Clk             => CLK100MHZ,         --100 MHz
            Reset           => '0',               --Active high
            UseDHCP         => '0',               --'1' to use DHCP
            IP_Addr         => BOARD_IP,          --x"8C4EA151",       --(31 downto 0);  --IP address if not using DHCP 140.78.161.81
            IP_Ok           => dhcp_ready,        -- out std_logic; --DHCP ready

            --MAC/MII
            MII_REF_CLK_25M => eth_ref_clk,       --MII continous 25 MHz reference clock
            MII_RST_N       => eth_rstn,         --Phy reset, active low
            MII_COL         => eth_col,           --Collision detect
            MII_CRS         => eth_crs,           --Carrier sense
            MII_RX_CLK      => eth_rx_clk,        --Receive clock
            MII_CRS_DV      => eth_rx_dv,        --Receive data valid
            MII_RXD         => eth_rxd,           --Receive data
            MII_RXERR       => eth_rxerr,         --Receive error
            MII_TX_CLK      => eth_tx_clk,        --Transmit clock
            MII_TXEN        => eth_tx_en,         --Transmit enable
            MII_TXD         => eth_txd,           --Transmit data
            MII_MDC         => eth_mdc,           --Management clock
            MII_MDIO        => eth_mdio,          --Management data

            --UDP Basic Server
            UDP0_Reset      => '0',        --Reset interface, active high
            UDP0_Service    =>UDP_SERVICE,       --Service
            UDP0_ServerPort =>UDP_SERVERPORT,    --UDP local server port
            UDP0_Connected  =>udp0_connected,    --Client connected

            UDP0_OutIsEmpty =>udp0_outIsEmpty,   --All outgoing data acked

            UDP0_TxData     =>udp0_txData,       --Transmit data
            UDP0_TxValid    =>udp0_txValid,      --Transmit data valid
            UDP0_TxReady    =>udp0_txReady,      --Transmit data ready
            UDP0_TxLast     =>udp0_txLast,       --Transmit data last

            UDP0_RxData     =>udp0_rxData,       --Receive data
            UDP0_RxValid    =>udp0_rxValid,      --Receive data valid
            UDP0_RxReady    =>udp0_rxReady,      --Receive data ready
            UDP0_RxLast     =>udp0_rxLast       --Transmit data last
        );

	 UDP2SPI_inst : entity work.udp2spi_unit(rtl)
        generic map(
            reset_active              => RESET_ACTIVE,
            reset_dut_period          => RESET_DUT_PERIOD
        )
        port map(
            clk_i					  => CLK100MHZ,
            rst_i					  => reset_s,
            UDP0_TxData               => udp0_txData, --Transmit data
            UDP0_TxValid              => udp0_txValid, --Transmit data valid
            UDP0_TxReady              => udp0_txReady, --Transmit data ready
            UDP0_TxLast               => udp0_txLast, --Transmit data last
            UDP0_RxData               => udp0_rxData, --Receive data
            UDP0_RxValid              => udp0_rxValid, --Receive data valid
            UDP0_RxReady              => udp0_rxReady, --Receive data ready
            UDP0_RxLast               => udp0_rxLast, --Transmit data last
            spi_data_to_write_o		  => udp_spi_data_to_send,
            spi_send_strobe_o	      => udp_spi_send_strobe,
            spi_receive_data_i		  => spi_data_received,
            spi_receive_strobe_i	  => spi_received_strobe,
            spi_read_only_flag        => spi_read_only_flag_s,
            PIN1_o                    => udp_PIN1,
            PIN2_o                    => udp_PIN2,
            PIN3_i                    => PIN3_i,
            remote_active			  => open,
            reset_DUT_o			      => udp_reset_DUT
        );
        

    spi_data_to_send       <= udp_spi_data_to_send;
    spi_send_strobe        <= udp_spi_send_strobe;
    reset_DUT              <= udp_reset_DUT;
    PIN1_o                 <= udp_PIN1;
    PIN2_o                 <= udp_PIN2;
    reset_to_chip <= reset_DUT_corr_s;
    reset_to_chip_mgmt <= not(reset_DUT_corr_s);
	CLK_1M_OUT <= clk_1M_out_s;
	--ck_io37 <= spi_send_strobe;
	
	reset_correcter: process (BTN_RST)  --corrects reset switch BTN_RST so that '1' is reset active!
	begin
	   if (BTN_RST = '1') then
	       reset_s <= RESET_ACTIVE;
	   else
	       reset_s <= not(RESET_ACTIVE);
	   end if;
	end process;
	
	reset_DUT_correcter: process (reset_DUT, reset_s) --corrects external reset to special needs of DUT (high active or low active)
	begin
	   if ((reset_DUT = RESET_ACTIVE) or (reset_s = RESET_ACTIVE)) then
	       reset_DUT_corr_s <= RESET_ACTIVE_DUT;
	   else
	       reset_DUT_corr_s <= not(RESET_ACTIVE_DUT);
	   end if;
	end process;
	
	clk_1M_gen: process (CLK100MHZ, reset_s, SW_1MCLK_EN) --generation of 64kHz CLK
	begin
        if (reset_s = RESET_ACTIVE or SW_1MCLK_EN = '0') then
            clk_1M_out_s <= '0';
            clk_1M_out_cnt_s <= 0;
        elsif rising_edge(CLK100MHZ) then 
            if (clk_1M_out_cnt_s < HALF_1MCLK_PERIOD_INDEX-1) then
                clk_1M_out_cnt_s <= clk_1M_out_cnt_s + 1;
            else
                clk_1M_out_s <= not(clk_1M_out_s);
                clk_1M_out_cnt_s <= 0;
            end if;
        end if;
	end process;

	
end architecture artya7_35_spi2uart_bhv;
