library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity shift_right_3x is
	port 
	(
		entrada	   : in std_logic_vector (15 downto 0);
		resultado  : out std_logic_vector (15 downto 0)
	);

end entity;

architecture comportamento of shift_right_3x is

begin

	resultado <= std_logic_vector(shift_right(unsigned(entrada), 3));

end comportamento;


