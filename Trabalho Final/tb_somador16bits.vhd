library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_somador16bits is
end tb_somador16bits;

architecture testeSomador16bits of tb_somador16bits is

component somador16bits is
	generic (n : natural := 16);
	port (
		FirstNumber		: in std_logic_vector(n-1 downto 0);
		SecondNumber	: in std_logic_vector(n-1 downto 0);
		OutputNumber	: out std_logic_vector(n-1 downto 0)
	);
end component;

signal ONE, TWO, Output1: std_logic_vector(15 downto 0);
begin
	instancia_Somador16bits: somador16bits port map(FirstNumber=>ONE,SecondNumber=>TWO,
																									OutputNumber=>Output1);
ONE <= std_logic_vector(to_unsigned(0,16)), 
			 std_logic_vector(to_unsigned(10,16)) after 50 ns, 
			 std_logic_vector(to_unsigned(40,16)) after 100 ns,
			 std_logic_vector(to_unsigned(0,16)) after 200 ns;
TWO <= std_logic_vector(to_unsigned(0,16)), 
			 std_logic_vector(to_unsigned(20,16)) after 50 ns, 
			 std_logic_vector(to_unsigned(60,16)) after 100 ns;

end testeSomador16bits;