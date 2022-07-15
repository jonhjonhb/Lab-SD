LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- REGISTRADOR DE 16 BITS
ENTITY registrador16bits IS
	GENERIC (n : NATURAL := 16);
	PORT (
		entrada : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
		clk : IN STD_LOGIC;
		rst : IN STD_LOGIC;
		load : IN STD_LOGIC;
		saida : OUT STD_LOGIC_VECTOR(n - 1 DOWNTO 0) := (others => '0')
	);
END ENTITY registrador16bits;

ARCHITECTURE beh OF registrador16bits IS
BEGIN
	PROCESS (clk, rst) IS
	BEGIN
		IF (rst = '1') THEN
			saida <= (OTHERS => '0');
		ELSIF (rising_edge(clk) AND (load = '1')) THEN
			saida <= entrada;
		END IF;
	END PROCESS;
END ARCHITECTURE beh;