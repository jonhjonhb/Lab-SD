LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity MaquinaDeVendas is
	port (
		CLOCK_UNIVERSAL : in std_logic;
		MONEY_VALUE : in std_logic_vector(15 downto 0);
		PRICE_INPUT : in std_logic_vector(15 downto 0);
		PRODUCT_SELECTOR : in std_logic_vector(4 downto 0);
		InsertionSensor : in std_logic;
		ManutenanceKey : in std_logic;
		FinishProcess : in std_logic;
		SelectionButton : in std_logic;
		NextProduct : in std_logic;
		RESET : in std_logic;

		CURRENT_MONEY : out std_logic_vector(15 downto 0);
		PRODUCT_PRICE : out std_logic_vector(15 downto 0);
		MONEY_TO_RETURN : out std_logic_vector(15 downto 0);
		DISPENSE_PRODUCT_ID : out std_logic_vector(4 downto 0);
		LOCK_MECHANISM : out std_logic;
		DISPENSE_MONEY : out std_logic;
		DISPENSE_PRODUCT : out std_logic
	);
end MaquinaDeVendas;

architecture RTLMaquinaDeVendas of MaquinaDeVendas is
	component Datapath IS
		PORT (
			CLOCK : IN STD_LOGIC;
			return_all : IN STD_LOGIC;
			REG_MONEY_ld : IN STD_LOGIC;
			REG_MONEY_clr : IN STD_LOGIC;
			Cvalue : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			RTRN_REG_ld : IN STD_LOGIC;
			RTRN_REG_clr : IN STD_LOGIC;
			RELEASE_ld : IN STD_LOGIC;
			RELEASE_clr : IN STD_LOGIC;
			SLC_PRODUCT_ld : IN STD_LOGIC;
			SLC_PRODUCT_clr : IN STD_LOGIC;
			SLC : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			MANUT_STATE_set : IN STD_LOGIC;
			MANUT_STATE_clr : IN STD_LOGIC;
			MEM_wr : IN STD_LOGIC;
			MEM_data_input : IN STD_LOGIC_VECTOR(15 DOWNTO 0);

			display_money : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			display_price : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			return_value : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			dispense_product_id : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
			REG_MONEY_lt_mem : OUT STD_LOGIC;
			COIN_LOCK : OUT STD_LOGIC
		);
	END component;

	component Controladora is
		port (
			--Entradas--
			SensorDeInsercao : in std_logic;
			ChavedeManutencao : in std_logic;
			BotaoDeSelecao : in std_logic;
			FinalizarEscolha : in std_logic;
			ProximoProduto : in std_logic;
			REG_MONEY_lt_mem : in std_logic;
			ClkRegEstados : in std_logic;
			ClrRegEstados : in std_logic;
			--Saidas--
			MEM_wr  : out std_logic;
			REG_MONEY_ld  : out std_logic;
			REG_MONEY_clr  : out std_logic;
			RTRN_REG_ld  : out std_logic;
			RTRN_REG_clr  : out std_logic;
			SLC_PRODUCT_ld  : out std_logic;
			SLC_PRODUCT_clr  : out std_logic;
			RELEASE_ld  : out std_logic;
			RELEASE_clr  : out std_logic;
			MANUT_STATE_set  : out std_logic;
			MANUT_STATE_clr  : out std_logic;
			return_all : out std_logic;
			dispense_money : out std_logic;
			dispense_product : out std_logic
		);
	end component;

	signal caboCD1, caboCD2, caboCD3, caboCD4, caboCD5, caboCD6, caboCD7, caboCD8, caboCD9, caboCD10, caboCD11, caboCD12 : std_logic;
	signal caboDC1 : std_logic;

	begin
		BLOCK_DATAPATH : Datapath port map (
			CLOCK => CLOCK_UNIVERSAL,
			Cvalue => MONEY_VALUE,
			MEM_data_input => PRICE_INPUT,
			SLC => PRODUCT_SELECTOR,
			MEM_wr => caboCD1,
			REG_MONEY_ld => caboCD2,
			REG_MONEY_clr => caboCD3,
			RTRN_REG_ld => caboCD4,
			RTRN_REG_clr => caboCD5,
			SLC_PRODUCT_ld => caboCD6,
			SLC_PRODUCT_clr => caboCD7,
			RELEASE_ld => caboCD8,
			RELEASE_clr => caboCD9,
			MANUT_STATE_set => caboCD10,
			MANUT_STATE_clr => caboCD11,
			return_all => caboCD12,
			REG_MONEY_lt_mem => caboDC1,
			display_money => CURRENT_MONEY,
			display_price => PRODUCT_PRICE,
			return_value => MONEY_TO_RETURN,
			dispense_product_id => DISPENSE_PRODUCT_ID,
			COIN_LOCK => LOCK_MECHANISM);
		
		BLOCK_CONTROLADORA : Controladora port map(
			ClkRegEstados => CLOCK_UNIVERSAL,
			ClrRegEstados => RESET,
			SensorDeInsercao => InsertionSensor,
			ChavedeManutencao => ManutenanceKey,
			BotaoDeSelecao => SelectionButton,
			FinalizarEscolha => FinishProcess,
			ProximoProduto => NextProduct,
			REG_MONEY_lt_mem => caboDC1,
			MEM_wr => caboCD1,
			REG_MONEY_ld => caboCD2,
			REG_MONEY_clr => caboCD3,
			RTRN_REG_ld => caboCD4,
			RTRN_REG_clr => caboCD5,
			SLC_PRODUCT_ld => caboCD6,
			SLC_PRODUCT_clr => caboCD7,
			RELEASE_ld => caboCD8,
			RELEASE_clr => caboCD9,
			MANUT_STATE_set => caboCD10,
			MANUT_STATE_clr => caboCD11,
			return_all => caboCD12,
			dispense_money => DISPENSE_MONEY,
			dispense_product => DISPENSE_PRODUCT);

end RTLMaquinaDeVendas;