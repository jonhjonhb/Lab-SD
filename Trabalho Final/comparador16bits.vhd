library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity comparador16bits is
	port (
		FirstNumber		: in std_logic_vector(15 downto 0);
		SecondNumber	: in std_logic_vector(15 downto 0);
		First_lt_Second : out std_logic
	);
end comparador16bits;

architecture compara of comparador16bits is
begin
	with FirstNumber < SecondNumber select
		First_lt_Second <= '1' when true,
						   '0' when others;
end compara;