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
signal CR: std_logic;

begin
instancia_Mux2X1: tb_mux2X1 port map(CurrentChange=>CC,CurrentMoney=>CM,
																		ReturnValue=>RV,ChaveRetorno=>CR);

CC <= x"0000", x"20" after 100 ns, x"80" after 200 ns;
CM <= x"0000", x"25" after 100 ns, x"350" after 200 ns;
CR <= '0', '1' after 100 ns, '0' after 150 ns, '1' after 200 ns;

end testeMux;