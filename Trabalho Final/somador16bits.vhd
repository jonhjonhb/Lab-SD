library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity somador16bits is
	generic (n : natural := 16);
	port (
		FirstNumber		: in std_logic_vector(n-1 downto 1);
		SecondNumber	: in std_logic_vector(n-1 downto 1);
		OutputNumber	: out std_logic_vector(n-1 downto 1)
	);
end entity;

architecture sum of somador16bits is
begin
	OutputNumber <= std_logic_vector(unsigned(FirstNumber) + unsigned(SecondNumber));
end sum;