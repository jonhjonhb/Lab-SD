library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_mean_4_clocks is
generic (
W : integer := 4
);
end tb_mean_4_clocks;

architecture teste of tb_mean_4_clocks is
component mean_4_clocks is
port (
CLK : in std_logic;
RESET : in std_logic;
INPUT : in std_logic_vector(W - 1 downto 0);
OUTPUT : out std_logic_vector(W - 1 downto 0)
);
end component;
signal clk: std_logic := '0';
signal reset : std_logic;
signal input,output : std_logic_vector(W-1 downto 0);
begin
instancia_mean_4_cloks: mean_4_clocks port map(clk=>CLK,reset=>RESET,input=>INPUT,output=>OUTPUT);
clk <= not(clk) after 10 ns;
RESET <= '0', '0' after 20 ns, '0' after 40 ns, '0' after 60 ns, '1' after 120 ns;
INPUT <= x"0", x"4" after 12 ns, x"3" after 25 ns, x"4" after 39 ns,x"4" after 78 ns;
end teste;