----------------------------------------------------------------------------------
-- Company: IIC
-- Engineer: Tim Schumacher
-- 
-- Create Date: 24.02.2021 15:29:38
-- Module Name: arty7_35_spi2uart_pkg
-- Project Name: artya7_35_spi2uart
-- Target Devices: artya7_35
-- Tool Versions: Vivado 2020.2
-- Description: 
--      Global Definition Package
--      Includes comments from previous projects, may be deleted later on 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package artya7_35_spi2uart_pkg is

    --general
    constant RESET_ACTIVE     : std_ulogic := '0';  -- reset-active for whole stimuli entity
    constant RESET_ACTIVE_DUT  : std_ulogic := '1';   -- reset_active for external DUT (only for SPI Slave)
	constant RESET_DUT_PERIOD : natural := 50000; -- 500000 @ 100MHz Arty CLK => 500us Reset Time
    
    --Comm
    constant DATA_MSB : natural := 95;
    constant HALF_CLK_PERIOD_INDEX : natural := 100; --100 @ 100MHz Arty CLK => half clk = 10.00us => clk = 5MHz
    constant HALF_1MCLK_PERIOD_INDEX : natural := 100; --100 @ 100MHz Arty CLK => half clk = 10.00us => clk = 5MHz

    -- udp config
	constant BOARD_IP       : std_logic_vector(31 downto 0) := x"8C4EA151"; --IP address if not using DHCP 140.78.161.39
    constant UDP_SERVICE    : std_logic_vector(15 downto 0) := x"0112"; 
    constant UDP_SERVERPORT : std_logic_vector(15 downto 0) := x"E001"; --57345
    
end package artya7_35_spi2uart_pkg;

package body artya7_35_spi2uart_pkg is

    function sulv2str(N : std_ulogic_vector) return string is
        variable res : string(1 to N'length);
    begin
        for i in 0 to N'length -1 loop
            if N(i) = '1' then
                res(i+1) := '1';
            else
                res(i+1) := '0';
            end if;
        end loop;
        return res;   
    end sulv2str;

end artya7_35_spi2uart_pkg;