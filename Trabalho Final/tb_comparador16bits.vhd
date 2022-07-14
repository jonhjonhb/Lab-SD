LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;

ENTITY tb_comparador16bits IS
END tb_comparador16bits;

ARCHITECTURE testecomparador16bits OF tb_comparador16bits IS

	COMPONENT comparador16bits IS
		PORT (
			FirstNumber : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			SecondNumber : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			First_lt_Second : OUT STD_LOGIC
		);
	END COMPONENT;

	SIGNAL ONE, TWO : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL RESULT : STD_LOGIC;
BEGIN
	instancia_comparador16bits : comparador16bits PORT MAP(
		FirstNumber => ONE, SecondNumber => TWO,
		First_lt_Second => RESULT);
	ONE <= STD_LOGIC_VECTOR(to_unsigned(0, 16)),
		STD_LOGIC_VECTOR(to_unsigned(10, 16)) AFTER 50 ns,
		STD_LOGIC_VECTOR(to_unsigned(40, 16)) AFTER 100 ns,
		STD_LOGIC_VECTOR(to_unsigned(0, 16)) AFTER 200 ns;
	TWO <= STD_LOGIC_VECTOR(to_unsigned(0, 16)),
		STD_LOGIC_VECTOR(to_unsigned(20, 16)) AFTER 50 ns,
		STD_LOGIC_VECTOR(to_unsigned(60, 16)) AFTER 100 ns;

END testecomparador16bits;