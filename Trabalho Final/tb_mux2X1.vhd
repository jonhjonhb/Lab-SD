library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_mux2X1 is
end tb_mux2X1;

architecture testeMux of tb_mux2X1 is

component mux2X1 is
	port (
		CurrentChange	: in std_logic_vector(15 downto 0);
		CurrentMoney	: in std_logic_vector(15 downto 0);
		ChaveRetorno	: in std_logic;
		ReturnValue		: out std_logic_vector(15 downto 0)
	);
end component;

signal CC, CM, RV: std_logic_vector(15 downto 0);
signal CR: std_logic := '0';

begin
instancia_Mux2X1: mux2X1 port map(CurrentChange=>CC,CurrentMoney=>CM,
																		ReturnValue=>RV,ChaveRetorno=>CR);

CC <= x"0000", x"0020" after 50 ns, x"0080" after 100 ns;
CM <= x"0000", x"0025" after 50 ns, x"0350" after 100 ns;
CR <= not(CR) after 25 ns;

end testeMux;