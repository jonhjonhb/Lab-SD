LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY tb_registrador16bits IS
END tb_registrador16bits;

ARCHITECTURE testeregistrador16bits OF tb_registrador16bits IS

	COMPONENT registrador16bits IS
		GENERIC (n : NATURAL := 16);
		PORT (
			entrada : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
			clk : IN STD_LOGIC;
			rst : IN STD_LOGIC;
			load : IN STD_LOGIC;
			saida : OUT STD_LOGIC_VECTOR(n - 1 DOWNTO 0) := (others => '0')
		);
	END COMPONENT;

	SIGNAL CLK_50MHz : STD_LOGIC := '0';
	SIGNAL LOAD, RST : STD_LOGIC := '0';
	SIGNAL ENT : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL SAIDA : STD_LOGIC_VECTOR(15 DOWNTO 0);
	-- Clock period definitions
	CONSTANT PERIOD : TIME := 10 ns;
	CONSTANT DUTY_CYCLE : real := 0.5;
	CONSTANT OFFSET : TIME := 5 ns;

BEGIN
	instancia_Registrador16bits : registrador16bits PORT MAP(entrada => ENT, clk => CLK_50MHz, rst => RST, load => LOAD, saida => SAIDA);

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

	ENT <= STD_LOGIC_VECTOR(to_unsigned(1, 16)),
		STD_LOGIC_VECTOR(to_unsigned(5, 16)) AFTER 50 ns,
		STD_LOGIC_VECTOR(to_unsigned(10, 16)) AFTER 100 ns;
	LOAD <= '0', '1' AFTER 50 ns, '0' AFTER 100 ns;
	RST <= '1', '0' AFTER 50 ns, '1' AFTER 140 ns;

END testeregistrador16bits;