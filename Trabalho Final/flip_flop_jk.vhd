LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- FLIP FLOP RS
ENTITY flip_flop_rs IS
	PORT (
		clk : IN STD_LOGIC;
		set : IN STD_LOGIC;
		rst : IN STD_LOGIC;
		saida : OUT STD_LOGIC;
		saidaInv : OUT STD_LOGIC
	);
END ENTITY flip_flop_rs;

ARCHITECTURE flip OF flip_flop_rs IS
BEGIN
	PROCESS (clk) IS
	variable tmp : std_logic;
	BEGIN
		IF (rising_edge(clk)) THEN
			IF ((set = '0') AND (rst = '0')) THEN
				tmp := tmp;
			ELSIF ((set = '1') AND (rst = '1')) THEN
				tmp := not tmp;
			ELSIF ((set = '0') AND (rst = '1')) THEN
				tmp := '0';
			ELSE
				tmp := '1';
			END IF;
		END IF;
		saida <= tmp;
		saidaInv <= not tmp;
	END PROCESS;
END ARCHITECTURE flip;