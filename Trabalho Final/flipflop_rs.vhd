LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- FLIP FLOP RS
ENTITY flip_flop_rs IS
	PORT (
		clk : IN STD_LOGIC;
		set : IN STD_LOGIC;
		rst : IN STD_LOGIC;
		saida : OUT STD_LOGIC
	);
END ENTITY flip_flop_rs;

ARCHITECTURE flip OF flip_flop_rs IS
BEGIN
	PROCESS (clk, rst) IS
	BEGIN
		IF (rst = '0') THEN
			saida <= '0';
		ELSIF (rising_edge(clk) AND (set = '1')) THEN
			saida <= '1';
		END IF;
	END PROCESS;
END ARCHITECTURE flip;