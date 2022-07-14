LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY tb_flip_flop_rs IS
END tb_flip_flop_rs;

ARCHITECTURE testeflip_flop_rs OF tb_flip_flop_rs IS

	COMPONENT flip_flop_rs IS
		PORT (
			clk : IN STD_LOGIC;
			set : IN STD_LOGIC;
			rst : IN STD_LOGIC;
			saida : OUT STD_LOGIC
		);
	END COMPONENT;

	SIGNAL CLK_50MHz : STD_LOGIC := '0';
	SIGNAL SET, RST : STD_LOGIC := '0';
	SIGNAL SAIDA : STD_LOGIC := '0';
	-- Clock period definitions
	CONSTANT PERIOD : TIME := 10 ns;
	CONSTANT DUTY_CYCLE : real := 0.5;
	CONSTANT OFFSET : TIME := 5 ns;

BEGIN
	instancia_Flip_flop_rs : flip_flop_rs PORT MAP(clk => CLK_50MHz, set => SET, rst => RST, saida => SAIDA);

	clock_manager : PROCESS -- clock process for clock
	BEGIN
		WAIT FOR OFFSET;
		CLOCK_LOOP : LOOP
			CLK_50MHz <= '0';
			WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
			CLK_50MHz <= '1';
			WAIT FOR (PERIOD * DUTY_CYCLE);
		END LOOP CLOCK_LOOP;
	END PROCESS clock_manager;

	SET <= '1', '0' AFTER 50 ns, '1' AFTER 150 ns;
	RST <= '1', '1' AFTER 50 ns, '0' AFTER 100 ns;

END testeflip_flop_rs;