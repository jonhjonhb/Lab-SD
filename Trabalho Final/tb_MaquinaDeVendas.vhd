LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY tb_MaquinaDeVendas IS
END tb_MaquinaDeVendas;

ARCHITECTURE testeMaquinaDeVendas OF tb_MaquinaDeVendas IS

	COMPONENT MaquinaDeVendas IS
		PORT (
			CLOCK_UNIVERSAL : IN STD_LOGIC;
			MONEY_VALUE : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			PRICE_INPUT : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			PRODUCT_SELECTOR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			InsertionSensor : IN STD_LOGIC;
			ManutenanceKey : IN STD_LOGIC;
			FinishProcess : IN STD_LOGIC;
			SelectionButton : IN STD_LOGIC;
			NextProduct : IN STD_LOGIC;
			RESET : IN STD_LOGIC;

			CURRENT_MONEY : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			PRODUCT_PRICE : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			MONEY_TO_RETURN : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			DISPENSE_PRODUCT_ID : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
			LOCK_MECHANISM : OUT STD_LOGIC;
			DISPENSE_MONEY : OUT STD_LOGIC;
			DISPENSE_PRODUCT : OUT STD_LOGIC;
		);
	END COMPONENT;

	SIGNAL CLK_50MHz : STD_LOGIC := '0';

	SIGNAL money_value, price_input, current_money, product_price, money_to_return : STD_LOGIC_VECTOR(15 DOWNTO 0);

	SIGNAL product_selector, dispense_product_id : STD_LOGIC_VECTOR(4 DOWNTO 0);

	SIGNAL lock_mechanism, dispense_money, dispense_product, insertion, manutenancao,
	finish_all, selection, next_p, reset : STD_LOGIC := '0';
	-- Clock period definitions
	CONSTANT PERIOD : TIME := 10 ns;
	CONSTANT DUTY_CYCLE : real := 0.5;
	CONSTANT OFFSET : TIME := 5 ns;

BEGIN
	instancia_MaquinaDeVendas : MaquinaDeVendas PORT MAP(
		CLOCK_UNIVERSAL => CLK_50MHz, MONEY_VALUE => money_value, PRICE_INPUT => price_input,
		PRODUCT_SELECTOR => product_selector, InsertionSensor => insertion, ManutenanceKey => manutenancao,
		FinishProcess => finish_all, SelectionButton => selection, NextProduct => next_p, RESET => reset,
		CURRENT_MONEY => current_money, PRODUCT_PRICE => product_price, MONEY_TO_RETURN => money_to_return,
		DISPENSE_PRODUCT_ID => dispense_product_id, LOCK_MECHANISM => lock_mechanism, DISPENSE_MONEY => dispense_money,
		DISPENSE_PRODUCT => dispense_product);

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

	MONEY_VALUE <= STD_LOGIC_VECTOR(to_unsigned(10, 16)),
		STD_LOGIC_VECTOR(to_unsigned(10, 16)) AFTER 50 ns,
		STD_LOGIC_VECTOR(to_unsigned(40, 16)) AFTER 100 ns,
		STD_LOGIC_VECTOR(to_unsigned(0, 16)) AFTER 200 ns;
	PRICE_INPUT <= STD_LOGIC_VECTOR(to_unsigned(0, 16));

	PRODUCT_SELECTOR <= STD_LOGIC_VECTOR(to_unsigned(2, 5));

	InsertionSensor <= '1', '0' AFTER 50 ns, '0' AFTER 100 ns;
	ManutenanceKey <= '0', '0' AFTER 50 ns, '0' AFTER 100 ns;
	FinishProcess <= '0', '0' AFTER 50 ns, '0' AFTER 100 ns;
	SelectionButton <= '0', '1' AFTER 50 ns, '0' AFTER 100 ns;
	NextProduct <= '0', '0' AFTER 50 ns, '1' AFTER 100 ns;
	RESET <= '0', '0' AFTER 50 ns, '0' AFTER 100 ns;

END testeMaquinaDeVendas;