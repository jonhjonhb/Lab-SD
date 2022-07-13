library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Controladora is
    port 
    ( 
		--Entradas--
		SensorDeInsercao : in std_logic;
		ChavedeManutencao : in std_logic;
		BotaoDeSelecao : in std_logic;
		FinalizarEscolha : in std_logic;
		ProximoProduto : in std_logic;
		Resetar : in std_logic;
		Cvalue : in std_logic_vector(15 downto 0);
		PRICE_INPUT : in std_logic_vector(7 downto 0);
		SLC : in std_logic_vector(3 downto 0);
		--Saidas--
		MEM_data_input : out std_logic_vector(7 downto 0);
		MEM_wr  : out std_logic;
		REG_MONEY_ld  : out std_logic;
		REG_MONEY_clr  : out std_logic;
		RTRN_REG_ld  : out std_logic;
		RTNR_REG_clr  : out std_logic;
		SLC_PRODUCT_ld  : out std_logic;
		SLC_PRODUCT_clr  : out std_logic;
		RELEASE_ld  : out std_logic;
		RELEASE_clr  : out std_logic;
		MANUT_STATE_ld  : out std_logic;
		MANUT_STATE_clr  : out std_logic;
		display_price : out std_logic_vector(15 downto 0);
		REG_MONEY_lt_mem : out std_logic;
		in_manutenance : out std_logic;
		display_price : out std_logic_vector(15 downto 0);
		display_money : out std_logic_vector(15 downto 0);
		return_value : out std_logic_vector(15 downto 0);
		dispense_product : out std_logic_vector(2 downto 0);
		COIN_LOCK : out std_logic;
 		);

end entity;

architecture RTLControladora of Controladora is
type state is (S0, S1, S2, S3, S4, S5, S6, S7, S8);
signal estado_atual, proximo_estado: state;

begin

	-- REGISTRADOR DE ESTADOS
	process(ClrRegEstados, ClkRegEstados) is	
	begin
		if(ClrRegEstados = '1') then
			-- Sentencas sequenciais assincronas
			estado_atual <= S0;
		elsif(rising_edge(ClkRegEstados)) then
			-- Sentencas sequenciais sincronas
			estado_atual <= proximo_estado;
		end if;
	end process;
	
	
 process (SensorDeInsercao,
 		ChavedeManutencao,
 		BotaoDeSelecao,
 		FinalizarEscolha,
 		ProximoProduto,
 		Resetar,
		Cvalue,
		PRICE_INPUT,
		SLC,
		estado_atual)
 begin
				MEM_data_input <='00000000';
				MEM_wr <='0';
				REG_MONEY_ld <='0';
				REG_MONEY_clr <='0';
				RTRN_REG_ld <='0';
				RTNR_REG_clr <='0';
				SLC_PRODUCT_ld <='0';
				SLC_PRODUCT_clr <='0';
				RELEASE_ld <='0';
				RELEASE_clr <='0';
				MANUT_STATE_ld <='0';
				MANUT_STATE_clr <='0';
				display_price <= '0000000000000000';
				REG_MONEY_lt_mem <='0';
				in_manutenance <='0';
				display_price <= '0000000000000000';
				display_money <= '0000000000000000';
				return_value <= '0000000000000000';
				dispense_product <= '000';
				COIN_LOCK <='0';
	case estado_atual is 
			when S0 =>
				--Idle
				display_price <= '00000000';
				SELEC_PRICE <= '00000000';
				RTRN <= '0';
				return_value <= '00000000';
				dispense_product <= '000';
				COIN_LOCK <= '0';
				SLC_PRODUCT <= '00';
				REG_MONEY <= '00000000';
				proximo_estado <= S1;
				if ( SensorDeInsercao = '1' and ChavedeManutencao = '0') then
					proximo_estado <= S1;
				elsif ( BotaoDeSelecao = '1' and ChavedeManutencao = '0' and SensorDeInsercao = '0') then
					proximo_estado <= S2;
				elsif ( ChavedeManutencao = '1' and SensorDeInsercao = '0') then
					proximo_estado <= S4;
				else
					proximo_estado <= S0; -- É necessário isso?
				end if;
			when S1 =>
				-- Soma dinheiro inserido
				proximo_estado <= S3;
			when S2 =>
				-- Selecionar Produto
				SLC_PRODUCT_ld <= '1';
				if ( ChavedeManutencao = '1' ) then
					proximo_estado <= S4;
				elsif ( ChavedeManutencao = '0' ) then
					proximo_estado <= S3;
				end if;
			when S3=>
				-- Wait
				if ( FinalizarEscolha = '0' and ChavedeManutencao = '0' and SensorDeInsercao = '0') then
					proximo_estado <= S3;
				elsif ( BotaoDeSelecao = '1' and FinalizarEscolha = '0' and ChavedeManutencao = '0' and SensorDeInsercao = '0') then
					proximo_estado <= S2;
				elsif ( SensorDeInsercao = '1' and FinalizarEscolha = '0' and ChavedeManutencao = '0') then
					proximo_estado <= S1;
				elsif ( Resetar = '1') then
					proximo_estado <= S0;
				elsif ( FinalizarEscolha = '1' and ChavedeManutencao = '1' and SensorDeInsercao = '0') then
					proximo_estado <= S5;
				elsif ( FinalizarEscolha = '1' and ChavedeManutencao = '0' and SensorDeInsercao = '0') then
					proximo_estado <= S6; -- Dinheiro suficiente
					-- Colocar condição para verificar o dinheiro
				elsif ( FinalizarEscolha = '1' and ChavedeManutencao = '0' and SensorDeInsercao = '0') then
					proximo_estado <= S7; -- Dinheiro insuficiente
					-- Colocar condição para verificar o dinheiro
				end if;
			when S4 =>
				-- Manutenção
				COIN_LOCK <= '1';
				ProximoProduto <= '0'; -- É possivel isso? 
				if ( ChavedeManutencao = '1' and BotaoDeSelecao = '0') then
					proximo_estado <= S4;
				elsif ( BotaoDeSelecao = '1' and ChavedeManutencao = '1' ) then
					proximo_estado <= S2;
				elseif ( ChavedeManutencao = '0' ) then
					proximo_estado <= S0;
				end if;
			when S5 =>
				-- Edita preço do input
				MEM_wr <= '1';
				if ( ProximoProduto = '0' ) then
					proximo_estado <= S5;
				elsif ( ProximoProduto = '1' ) then
					proximo_estado <= S4;
				end if;
			when S6 =>
				-- Dispensa produto 
				-- atribui troco
				-- dispense_product = SLC_PRODUCT;
				proximo_estado <= S8;
			when S7 =>
				-- Não dispensa produto
				-- coloca o dinheiro no troco
				proximo_estado <= S8; 
			when S8 =>
				--Dispensa Troco
				REG_MONEY_lt_mem <= '1';
				proximo_estado <= S0;
		end case;
	end process;
--	-- Declaracoes
end RTLControladora;