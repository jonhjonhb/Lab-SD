LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY somador16bits IS
	GENERIC (n : NATURAL := 16);
	PORT (
		FirstNumber : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
		SecondNumber : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
		OutputNumber : OUT STD_LOGIC_VECTOR(n - 1 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE sum OF somador16bits IS
BEGIN
	OutputNumber <= STD_LOGIC_VECTOR(unsigned(FirstNumber) + unsigned(SecondNumber));
END sum;