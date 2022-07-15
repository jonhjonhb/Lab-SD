LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Datapath IS
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
END Datapath;

ARCHITECTURE RTLDatapath OF Datapath IS
	-- Componentes
	COMPONENT flip_flop_rs IS
		PORT (
			clk : IN STD_LOGIC;
			set : IN STD_LOGIC;
			rst : IN STD_LOGIC;
			saida : OUT STD_LOGIC
		);
	END COMPONENT;

	COMPONENT EEPROM IS
		GENERIC (
			ADDR_LENGHT : NATURAL := 5;
			R_LENGHT : NATURAL := 16;
			NUM_OF_REGS : NATURAL := 32
		);
		PORT (
			clk : IN STD_LOGIC;
			wr : IN STD_LOGIC;
			addr : IN STD_LOGIC_VECTOR (ADDR_LENGHT - 1 DOWNTO 0);
			datain : IN STD_LOGIC_VECTOR (R_LENGHT - 1 DOWNTO 0);
			dataout : OUT STD_LOGIC_VECTOR (R_LENGHT - 1 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT mux2X1 IS
		PORT (
			CurrentChange : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			CurrentMoney : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			ChaveRetorno : IN STD_LOGIC;
			ReturnValue : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
	END COMPONENT;

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

	COMPONENT registrador5bits IS
		GENERIC (n : NATURAL := 5);
		PORT (
			entrada : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
			clk : IN STD_LOGIC;
			rst : IN STD_LOGIC;
			load : IN STD_LOGIC;
			saida : OUT STD_LOGIC_VECTOR(n - 1 DOWNTO 0) := (others => '0')
		);
	END COMPONENT;

	COMPONENT somador16bits IS
		GENERIC (n : NATURAL := 16);
		PORT (
			FirstNumber : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
			SecondNumber : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
			OutputNumber : OUT STD_LOGIC_VECTOR(n - 1 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT subtrator16bits IS
		GENERIC (n : NATURAL := 16);
		PORT (
			FirstNumber : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
			SecondNumber : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
			OutputNumber : OUT STD_LOGIC_VECTOR(n - 1 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT comparador16bits IS
		PORT (
			FirstNumber : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			SecondNumber : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			First_lt_Second : OUT STD_LOGIC
		);
	END COMPONENT;

	COMPONENT incrementador5bits IS
		GENERIC (n : NATURAL := 5);
		PORT (
			Number : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
			OutputNumber : OUT STD_LOGIC_VECTOR(n - 1 DOWNTO 0)
		);
	END COMPONENT;

	-- Cabos genéricos caboA_B são cabos que ligam A a B. Cabos cabo_A_BCD ligam A a todos B, C e D.
	SIGNAL caboF_A, caboA_FGJK, caboB_K, caboG_B, caboI_GJ : STD_LOGIC_VECTOR(15 DOWNTO 0)  := (others => '0');
	SIGNAL caboD_HI, caboH_C : STD_LOGIC_VECTOR(4 DOWNTO 0)  := (others => '0');

BEGIN
	-- Chamada dos objetos
	A_REG_MONEY : registrador16bits PORT MAP(clk => CLOCK, entrada => caboF_A, rst => REG_MONEY_clr, load => REG_MONEY_ld, saida => caboA_FGJK);
	display_money <= caboA_FGJK;
	B_RTRN_REG : registrador16bits PORT MAP(clk => CLOCK, entrada => caboG_B, rst => RTRN_REG_clr, load => RTRN_REG_ld, saida => caboB_K);
	C_RELEASE : registrador5bits PORT MAP(clk => CLOCK, entrada => caboH_C, rst => RELEASE_clr, load => RELEASE_ld, saida => dispense_product_id);
	D_SLC_PRODUCT : registrador5bits PORT MAP(clk => CLOCK, entrada => SLC, rst => SLC_PRODUCT_clr, load => SLC_PRODUCT_ld, saida => caboD_HI);
	E_MANUT_STATE : flip_flop_rs PORT MAP(clk => CLOCK, set => MANUT_STATE_set, rst => MANUT_STATE_clr, saida => COIN_LOCK);
	F_SOMADOR : somador16bits PORT MAP(FirstNumber => Cvalue, SecondNumber => caboA_FGJK, OutputNumber => caboF_A);
	G_SUBTRATOR : subtrator16bits PORT MAP(FirstNumber => caboA_FGJK, SecondNumber => caboI_GJ, OutputNumber => caboG_B);
	H_INCREMENTADOR : incrementador5bits PORT MAP(Number => caboD_HI, OutputNumber => caboH_C);
	I_PRICES : EEPROM PORT MAP(clk => CLOCK, wr => MEM_wr, addr => caboD_HI, datain => MEM_data_input, dataout => caboI_GJ);
	display_price <= caboI_GJ;
	J_COMPARADOR_LT : comparador16bits PORT MAP(FirstNumber => caboA_FGJK, SecondNumber => caboI_GJ, First_lt_Second => REG_MONEY_lt_mem);
	K_MULTIPLEXADOR : mux2X1 PORT MAP(CurrentChange => caboB_K, CurrentMoney => caboA_FGJK, ChaveRetorno => return_all, ReturnValue => return_value);

END RTLDatapath;