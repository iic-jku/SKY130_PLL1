library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity wrapper_tb is
end entity;

architecture wrapper_tb_bhv of wrapper_tb is

    constant c_half_clk_period_index : natural := 50;	-- 50 for 100MHz arty clk -> peripheral clock is 1MHz
	constant c_n : natural := 96;		--shift register entries
	constant c_m : natural := 10;

component pll_controller is
    generic (
        half_clk_period_index : natural := 50; --for 100MHz arty clk -> peripheral clock is 1MHz
        n : natural := 96
    );
        
    port (
        clk_peri    : out std_ulogic;    --clock for peripheral
		load    	: out std_ulogic;    --read strobe for transfering the data to the shiftreg
		read    	: out std_ulogic;   --reading data from the shiftreg
		s_in        : out std_ulogic;    --peripheral register input
		s_out       : in std_ulogic;    --peripheral register output

		data_received : out std_ulogic_vector(n-1 downto 0);
		data_received_strobe : out std_ulogic;

		data_to_be_sent : in std_ulogic_vector(n-1 downto 0);
		read_only_flag : in std_ulogic; --if 1 read only data if 0 send data
		start_comm : in std_ulogic;
		transmit_flag   : out std_ulogic;
		clk     : in std_ulogic;    --master clock (100 MHz)
		rst     : in std_ulogic     --Reset
    );
end component pll_controller;


component wrapper is
    generic (
        N : natural := 96;
        M : natural := 10
    );
        
    port (
        clk_in      : in std_ulogic;  
		s_in    	: in std_ulogic;   
		read    	: in std_ulogic;  
		load        : in std_ulogic;   
		reset       : in std_ulogic;     
		s_out    	: out std_ulogic
    );
end component wrapper;


signal clk : std_ulogic := '0';
signal rst : std_ulogic := '0';
signal clk_peri    : std_ulogic;    --clock for peripheral
signal load    : std_ulogic;    --read strobe for transfering the data to the shiftreg
signal read    : std_ulogic;   --reading data from the shiftreg
signal s_in      : std_ulogic;    --peripheral register input
signal s_out	: std_ulogic;		--peripheral register output

signal data_to_be_sent : std_ulogic_vector(c_n-1 downto 0) := (others => '0');
signal transmit_flag   : std_ulogic;
signal start_comm : std_ulogic := '0';
signal data_received : std_ulogic_vector(c_n-1 downto 0);
signal data_received_strobe_s : std_ulogic;
signal read_only_flag : std_ulogic;


signal ref_in_s	: std_ulogic := '0';
signal vco_in_s	: std_ulogic := '0';
signal dac_s : std_ulogic_vector(c_m-1 downto 0);
signal corner_s : std_ulogic_vector(2 downto 0);
signal lock_s	: std_ulogic;		
signal slope_ctrl_s : std_ulogic_vector(2 downto 0);
signal vbias1_s : std_ulogic_vector(7 downto 0);
signal vbias2_s	: std_ulogic_vector(7 downto 0);
signal vbias3_s	: std_ulogic_vector(7 downto 0);


begin

    pll_controller_inst : pll_controller 
        generic map(
			half_clk_period_index => c_half_clk_period_index,
            n => c_n
        )           
        port map(
			clk_peri    => clk_peri,
			load    => load,
			read    => read,
			s_in      => s_in,
			s_out      => s_out,
			data_received => data_received,
			data_received_strobe => data_received_strobe_s,
			data_to_be_sent => data_to_be_sent,
			read_only_flag => read_only_flag,
			start_comm => start_comm,
			transmit_flag => transmit_flag,
			clk     => clk,
			rst     => rst
        );   

	
	 wrapper_inst : wrapper 
        generic map(
			N => c_n,
            M => c_m
        )           
        port map(
			clk_in    => clk_peri,
			s_in    => s_in,
			read      => read,
			load      => load,
			reset => rst,
			s_out => s_out
        );


            
    stim : process is
    begin
		rst <= '1';
        wait for 20 ns;
        rst <= not(rst);
        --write all Regs
		--data_to_be_sent <= (others => '1');
        data_to_be_sent <= "100100111001001110010011100100111001001110010011100100111001001110010011100100111001001110010011";
		--data_to_be_sent <= "100100111001001110010011100100111001001110010011";
		wait for 100 us;
        start_comm <= '1';
		read_only_flag <= '0';
        wait for 50 ns;
        start_comm <= '0';
		read_only_flag <= '0';
        wait until transmit_flag <= '0';
		--data_to_be_sent <= (others => '0');
		wait for 100 us;
		--data_to_be_sent <= (others => '1');
		data_to_be_sent <= "100100111001001110010011100100111001001110010011100100111001001110010011100100111001001110010011";
		--data_to_be_sent <= "111111111111111111111111111111111111111111111111";
		wait for 100 us;
        start_comm <= '1';
		read_only_flag <= '0';
        wait for 50 ns;
        start_comm <= '0';
		read_only_flag <= '0';
        wait until transmit_flag <= '0';
		--data_to_be_sent <= (others => '1');
		wait for 100 us;
		--data_to_be_sent <= (others => '1');
		data_to_be_sent <= "100100111001001110010011100100111001001110010011100100111001001110010011100100111001001110010011";
		--data_to_be_sent <= "111001111110011111100111111001111110011111100111";
        start_comm <= '1';
		read_only_flag <= '0';
        wait for 50 ns;
        start_comm <= '0';
		read_only_flag <= '0';
        wait until transmit_flag <= '0';
		
	    wait for 4 us;
        
        wait;
    end process;
            
            
    --clk generation
    clk <= not(clk) after 5 ns; --100MHz
            
end architecture wrapper_tb_bhv;
