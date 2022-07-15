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
			DISPENSE_PRODUCT : OUT STD_LOGIC
		);
	END COMPONENT;

	SIGNAL CLK_50MHz : STD_LOGIC := '0';

	SIGNAL money_value, price_input, current_money, product_price, money_to_return : STD_LOGIC_VECTOR(15 DOWNTO 0);

	SIGNAL product_selector, dispense_product_id : STD_LOGIC_VECTOR(4 DOWNTO 0);

	SIGNAL lock_mechanism, dispense_money, dispense_product, insertion, manutenance,
	finish_all, selection, next_p, reset : STD_LOGIC := '0';
	-- Clock period definitions
	CONSTANT PERIOD : TIME := 10 ns;
	CONSTANT DUTY_CYCLE : real := 0.5;
	CONSTANT OFFSET : TIME := 5 ns;

BEGIN
	instancia_MaquinaDeVendas : MaquinaDeVendas PORT MAP(
		CLOCK_UNIVERSAL => CLK_50MHz, MONEY_VALUE => money_value, PRICE_INPUT => price_input,
		PRODUCT_SELECTOR => product_selector, InsertionSensor => insertion, ManutenanceKey => manutenance,
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

	-- 1: Edição dos preços dos produtos 1 e 2 -- 0~190ns
	-- 2: Tentativa de transação com dinheiro insuficiente, produto 1, retorna 10 reais -- 200~310ns
	-- 3: Transação com dinheiro suficiente, produto 2, retorna 5 reais de troco --400~510ns
	manutenance <= '0', '1' AFTER 10 ns, '0' AFTER 170 ns;
	selection <= '0', '1' AFTER 25 ns, '0' AFTER 50 ns, '1' AFTER 90 ns, '0' AFTER 130 ns, '1' AFTER 250 ns, '0' AFTER 270 ns, '1' AFTER 350 ns, '0' AFTER 370 ns;
	finish_all <= '0', '1' AFTER 50 ns, '0' AFTER 70 ns, '1' AFTER 130 ns, '0' AFTER 150 ns, '1' AFTER 290 ns, '0' AFTER 310 ns, '1' AFTER 510 ns, '0' AFTER 530 ns;
	next_p <= '0', '1' AFTER 70 ns, '0' AFTER 90 ns, '1' AFTER 150 ns, '0' AFTER 170 ns;
	insertion <= '0', '1' AFTER 200 ns, '0' AFTER 230 ns, '1' AFTER 400 ns, '0' AFTER 430 ns;

	product_selector <= STD_LOGIC_VECTOR(to_unsigned(0, 5)), STD_LOGIC_VECTOR(to_unsigned(1, 5)) AFTER 25 ns, 
						STD_LOGIC_VECTOR(to_unsigned(2, 5)) AFTER 90 ns, STD_LOGIC_VECTOR(to_unsigned(0, 5)) AFTER 130 ns,
						STD_LOGIC_VECTOR(to_unsigned(1, 5)) AFTER 250 ns, STD_LOGIC_VECTOR(to_unsigned(2, 5)) AFTER 350 ns;

	price_input <= STD_LOGIC_VECTOR(to_unsigned(0, 16)), STD_LOGIC_VECTOR(to_unsigned(30, 16)) AFTER 50 ns, 
						STD_LOGIC_VECTOR(to_unsigned(20, 16)) AFTER 110 ns, STD_LOGIC_VECTOR(to_unsigned(0, 16)) AFTER 200 ns;

	money_value <= STD_LOGIC_VECTOR(to_unsigned(0, 16)), STD_LOGIC_VECTOR(to_unsigned(10, 16)) AFTER 200 ns, STD_LOGIC_VECTOR(to_unsigned(0, 16)) AFTER 230 ns,
					STD_LOGIC_VECTOR(to_unsigned(25, 16)) AFTER 400 ns, STD_LOGIC_VECTOR(to_unsigned(0, 16)) AFTER 430 ns;

	reset <= '0';

END testeMaquinaDeVendas;
