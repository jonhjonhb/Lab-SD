library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity somador is

	port 
	(
		AuxQtdProcessada	   : in std_logic_vector (15 downto 0);
		Peso	               : in std_logic_vector (15 downto 0);
		QtdProcessada        : out std_logic_vector (15 downto 0)
	);

end entity;

architecture rtl of somador is
begin

	QtdProcessada <= std_logic_vector(unsigned(AuxQtdProcessada) + unsigned(Peso));

end rtl;
