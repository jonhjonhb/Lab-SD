library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity mean_4_clocks is
generic (
W : integer := 4
);
port (
CLK : in std_logic;
RESET : in std_logic;
INPUT : in std_logic_vector(W - 1 downto 0);
OUTPUT : out std_logic_vector(W - 1 downto 0)
);
end mean_4_clocks;
architecture arch of mean_4_clocks is
begin
process(CLK, RESET) is
variable var1: unsigned(W - 1 downto 0);
variable var2: unsigned(W - 1 downto 0);
variable var3: unsigned(W - 1 downto 0);
variable var4: unsigned(W - 1 downto 0);
variable AUX: std_logic_vector(W - 1 downto 0);

begin

if (RESET = '1') then
var1 := to_unsigned(0,W);
var2 := to_unsigned(0,W);
var3 := to_unsigned(0,W);
var4 := to_unsigned(0,W);
elsif (rising_edge(CLK)) then
var4 := var3;
var3 := var2;
var2 := var1;
var1 := unsigned(INPUT);
end if;
AUX := std_logic_vector(var1 + var2 + var3 + var4);
output <= std_logic_vector("00" & aux(W-1 downto 2));
end process;
end arch;