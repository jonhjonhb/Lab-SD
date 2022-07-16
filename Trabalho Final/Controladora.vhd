LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Controladora IS
	PORT (
		--Entradas--
		SensorDeInsercao : IN STD_LOGIC;
		ChavedeManutencao : IN STD_LOGIC;
		BotaoDeSelecao : IN STD_LOGIC;
		FinalizarEscolha : IN STD_LOGIC;
		ProximoProduto : IN STD_LOGIC;
		REG_MONEY_lt_mem : IN STD_LOGIC;
		ClkRegEstados : IN STD_LOGIC;
		ClrRegEstados : IN STD_LOGIC;
		--Saidas--
		MEM_wr : OUT STD_LOGIC;
		REG_MONEY_ld : OUT STD_LOGIC;
		REG_MONEY_clr : OUT STD_LOGIC;
		RTRN_REG_ld : OUT STD_LOGIC;
		RTRN_REG_clr : OUT STD_LOGIC;
		SLC_PRODUCT_ld : OUT STD_LOGIC;
		SLC_PRODUCT_clr : OUT STD_LOGIC;
		RELEASE_ld : OUT STD_LOGIC;
		RELEASE_clr : OUT STD_LOGIC;
		MANUT_STATE_set : OUT STD_LOGIC;
		MANUT_STATE_clr : OUT STD_LOGIC;
		return_all : OUT STD_LOGIC;
		dispense_money : OUT STD_LOGIC;
		dispense_product : OUT STD_LOGIC
	);

END ENTITY;

ARCHITECTURE RTLControladora OF Controladora IS
	TYPE state IS (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9);
	SIGNAL estado_atual, proximo_estado : state;

BEGIN

	-- REGISTRADOR DE ESTADOS
	PROCESS (ClrRegEstados, ClkRegEstados) IS
	BEGIN
		IF (ClrRegEstados = '1') THEN
			-- Sentencas sequenciais assincronas
			estado_atual <= S0;
		ELSIF (rising_edge(ClkRegEstados)) THEN
			-- Sentencas sequenciais sincronas
			estado_atual <= proximo_estado;
		END IF;
	END PROCESS;
	PROCESS (
		SensorDeInsercao,
		ChavedeManutencao,
		BotaoDeSelecao,
		FinalizarEscolha,
		ProximoProduto,
		REG_MONEY_lt_mem,
		ClkRegEstados,
		ClrRegEstados)
	BEGIN
		MEM_wr <= '0';
		REG_MONEY_ld <= '0';
		REG_MONEY_clr <= '0';
		RTRN_REG_ld <= '0';
		RTRN_REG_clr <= '0';
		SLC_PRODUCT_ld <= '0';
		SLC_PRODUCT_clr <= '0';
		RELEASE_ld <= '0';
		RELEASE_clr <= '0';
		MANUT_STATE_set <= '0';
		MANUT_STATE_clr <= '0';
		return_all <= '0';
		dispense_money <= '0';
		dispense_product <= '0';

		CASE estado_atual IS
			WHEN S0 =>
				--Idle
				dispense_money <= '0';
				return_all <= '0';
				MEM_wr <= '0';
				REG_MONEY_ld <= '0';
				RTRN_REG_ld <= '0';
				SLC_PRODUCT_ld <= '0';
				RELEASE_ld <= '0';
				MANUT_STATE_set <= '0';
				REG_MONEY_clr <= '1';
				RTRN_REG_clr <= '1';
				SLC_PRODUCT_clr <= '1';
				RELEASE_clr <= '1';
				MANUT_STATE_clr <= '1';
				IF (SensorDeInsercao = '1' AND ChavedeManutencao = '0') THEN
					proximo_estado <= S1;
				ELSIF (BotaoDeSelecao = '1' AND ChavedeManutencao = '0' AND SensorDeInsercao = '0') THEN
					proximo_estado <= S2;
				ELSIF (ChavedeManutencao = '1') THEN
					proximo_estado <= S4;
				ELSE --(BotaoDeSelecao = '0' AND ChavedeManutencao = '0' AND SensorDeInsercao = '0')
					proximo_estado <= S0;
				END IF;
			WHEN S1 =>
				-- Soma dinheiro inserido
				REG_MONEY_ld <= '1';
				REG_MONEY_clr <= '0';
				RTRN_REG_clr <= '0';
				SLC_PRODUCT_clr <= '0';
				RELEASE_clr <= '0';
				MANUT_STATE_clr <= '0';
				--RTRN_REG_ld <= '0';
				proximo_estado <= S9;
			WHEN S2 =>
				-- Selecionar Produto
				SLC_PRODUCT_ld <= '1';
				SLC_PRODUCT_clr <= '0';
				REG_MONEY_clr <= '0';
				RTRN_REG_clr <= '0';
				--RTRN_REG_ld <= '0';
				RELEASE_clr <= '0';
				MANUT_STATE_clr <= '0';
				IF (ChavedeManutencao = '1') THEN
					proximo_estado <= S4;
				ELSE --(ChavedeManutencao = '0')
					proximo_estado <= S3;
				END IF;
			WHEN S3 =>
				-- Wait
				REG_MONEY_ld <= '0';
				SLC_PRODUCT_ld <= '0';
				--RTRN_REG_ld <= '1';
				IF (ChavedeManutencao = '1') THEN
					proximo_estado <= S4;
				ELSIF (SensorDeInsercao = '1' AND ChavedeManutencao = '0') THEN
					proximo_estado <= S1;
				ELSIF (BotaoDeSelecao = '1' AND ChavedeManutencao = '0' AND SensorDeInsercao = '0') THEN
					proximo_estado <= S2;
				ELSIF (FinalizarEscolha = '1' AND REG_MONEY_lt_mem = '0' AND ChavedeManutencao = '0' AND SensorDeInsercao = '0' AND BotaoDeSelecao = '0') THEN
					proximo_estado <= S6;
				ELSIF (FinalizarEscolha = '1' AND REG_MONEY_lt_mem = '1' AND ChavedeManutencao = '0' AND SensorDeInsercao = '0' AND BotaoDeSelecao = '0') THEN
					proximo_estado <= S7;
				ELSE --(FinalizarEscolha = '0' AND ChavedeManutencao = '0' AND SensorDeInsercao = '0' AND BotaoDeSelecao = '0')
					proximo_estado <= S3;
				END IF;
			WHEN S4 =>
				-- Manutenção
				MANUT_STATE_set <= '1';
				MEM_wr <= '0';
				SLC_PRODUCT_ld <= '0';
				REG_MONEY_clr <= '0';
				RTRN_REG_clr <= '0';
				SLC_PRODUCT_clr <= '0';
				RELEASE_clr <= '0';
				MANUT_STATE_clr <= '0';
				--RTRN_REG_ld <= '0';
				IF (ChavedeManutencao = '0') THEN
					proximo_estado <= S0;
				ELSIF (BotaoDeSelecao = '1' AND ChavedeManutencao = '1') THEN
					proximo_estado <= S2;
				ELSIF (ChavedeManutencao = '1' AND FinalizarEscolha = '1' AND BotaoDeSelecao = '0') THEN
					proximo_estado <= S5;
				ELSE --(ChavedeManutencao = '1' AND BotaoDeSelecao = '0' AND FinalizarEscolha = '0')
					proximo_estado <= S4;
				END IF;
			WHEN S5 =>
				-- Edita preço do input
				MEM_wr <= '1';
				IF (ProximoProduto = '1') THEN
					proximo_estado <= S4;
				ELSE --(ProximoProduto = '0')
					proximo_estado <= S5;
				END IF;
			WHEN S6 =>
				-- Dispensa produto 
				RTRN_REG_ld <= '1';
				RELEASE_ld <= '1';
				proximo_estado <= S8;
			WHEN S7 =>
				-- Não dispensa produto
				return_all <= '1';
				RELEASE_clr <= '1';
				proximo_estado <= S8;
			WHEN S8 =>
				--Dispensa Troco
				RELEASE_clr <= '0';
				dispense_money <= '1';
				dispense_product <= '1';
				proximo_estado <= S0;
			WHEN S9 =>
				--Tranca de inserção momentânea
				REG_MONEY_ld <= '0';
				IF (SensorDeInsercao = '1') THEN
					proximo_estado <= S9;
				ELSE
					proximo_estado <= S3;
				END IF;
		END CASE;
	END PROCESS;
END RTLControladora;
