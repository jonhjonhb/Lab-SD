LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY subtrator16bits IS
	GENERIC (n : NATURAL := 16);
	PORT (
		FirstNumber : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
		SecondNumber : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
		OutputNumber : OUT STD_LOGIC_VECTOR(n - 1 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE subtraction OF subtrator16bits IS
BEGIN
	OutputNumber <= STD_LOGIC_VECTOR(unsigned(FirstNumber) - unsigned(SecondNumber));
END subtraction;