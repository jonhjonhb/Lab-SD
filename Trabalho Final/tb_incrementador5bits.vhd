LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY tb_incrementador5bits IS
END tb_incrementador5bits;

ARCHITECTURE testeIncrementador5bits OF tb_incrementador5bits IS

	COMPONENT incrementador5bits IS
		GENERIC (n : NATURAL := 16);
		PORT (
			Number : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
			OutputNumber : OUT STD_LOGIC_VECTOR(n - 1 DOWNTO 0)
		);
	END COMPONENT;

	SIGNAL NUM : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);

BEGIN
	instancia_Incrementador5bits : incrementador5bits PORT MAP(Number => NUM, OutputNumber => OUT);

	NUM <= STD_LOGIC_VECTOR(to_unsigned(1, 16)),
		STD_LOGIC_VECTOR(to_unsigned(5, 16)) AFTER 50 ns;

END testeIncrementador5bits;