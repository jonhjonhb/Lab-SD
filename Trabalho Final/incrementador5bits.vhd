LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY incrementador5bits IS
	GENERIC (n : NATURAL := 5);
	PORT (
		Number : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
		OutputNumber : OUT STD_LOGIC_VECTOR(n - 1 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE sum OF incrementador5bits IS
BEGIN
	OutputNumber <= STD_LOGIC_VECTOR(unsigned(FirstNumber) + unsigned('1'));
END sum;