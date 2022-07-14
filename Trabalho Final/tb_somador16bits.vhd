LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY tb_somador16bits IS
END tb_somador16bits;

ARCHITECTURE testeSomador16bits OF tb_somador16bits IS

	COMPONENT somador16bits IS
		GENERIC (n : NATURAL := 16);
		PORT (
			FirstNumber : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
			SecondNumber : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
			OutputNumber : OUT STD_LOGIC_VECTOR(n - 1 DOWNTO 0)
		);
	END COMPONENT;

	SIGNAL ONE, TWO, Output1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
BEGIN
	instancia_Somador16bits : somador16bits PORT MAP(
		FirstNumber => ONE, SecondNumber => TWO,
		OutputNumber => Output1);
	ONE <= STD_LOGIC_VECTOR(to_unsigned(0, 16)),
		STD_LOGIC_VECTOR(to_unsigned(10, 16)) AFTER 50 ns,
		STD_LOGIC_VECTOR(to_unsigned(40, 16)) AFTER 100 ns,
		STD_LOGIC_VECTOR(to_unsigned(0, 16)) AFTER 200 ns;
	TWO <= STD_LOGIC_VECTOR(to_unsigned(0, 16)),
		STD_LOGIC_VECTOR(to_unsigned(20, 16)) AFTER 50 ns,
		STD_LOGIC_VECTOR(to_unsigned(60, 16)) AFTER 100 ns;

END testeSomador16bits;