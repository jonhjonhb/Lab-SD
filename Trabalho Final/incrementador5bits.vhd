LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY incrementador5bits IS
	GENERIC (
		n : NATURAL := 5;
		one : STD_LOGIC_VECTOR(n - 1 DOWNTO 0) := "00001"
	);
	PORT (
		Number : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
		OutputNumber : OUT STD_LOGIC_VECTOR(n - 1 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE sum OF incrementador5bits IS
BEGIN
	OutputNumber <= STD_LOGIC_VECTOR(unsigned(Number) + unsigned(one));
END sum;