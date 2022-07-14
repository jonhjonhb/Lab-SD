library ieee;
use ieee.std_logic_1164.all;

entity Datapath is
	port (
		CLOCK			: in std_logic;
		return_all 		: in std_logic;
		REG_MONEY_ld	: in std_logic;
		REG_MONEY_clr	: in std_logic;
		Cvalue			: in std_logic_vector(15 downto 0);
		RTRN_REG_ld		: in std_logic;
		RTRN_REG_clr	: in std_logic;
		RELEASE_ld		: in std_logic;
		RELEASE_clr		: in std_logic;
		SLC_PRODUCT_ld	: in std_logic;
		SLC_PRODUCT_clr	: in std_logic;
		SLC				: in std_logic_vector(4 downto 0);
		MANUT_STATE_set	: in std_logic;
		MANUT_STATE_clr	: in std_logic;
		MEM_wr			: in std_logic;
		MEM_data_input	: in std_logic_vector(15 downto 0);

		display_money		: out std_logic(15 downto 0);
		display_price		: out std_logic(15 downto 0);
		return_value		: out std_logic(15 downto 0);
		dispense_product_id	: out std_logic(4 downto 0);
		REG_MONEY_lt_mem	: out std_logic;
		COIN_LOCK			: out std_logic;
		in_manutenance		: out std_logic
	);
end DataPath;

architecture RTLDatapath of Datapath is
	-- Componentes
	component flip_flop_rs is
		port (
			clk : 	in std_logic;
			set : 	in std_logic;
			rst : 	in std_logic;
			saida : out std_logic
		);
	end component;

	component EEPROM is
		generic (
			ADDR_LENGHT	: natural := 4;
			R_LENGHT	: natural := 8;
			NUM_OF_REGS	: natural := 16
		);
		port (
			clk 	: in 	std_logic
			wr 		: in 	std_logic
			addr 	: in 	std_logic_vector (ADDR_LENGHT - 1 downto 0);
			datain 	: in 	std_logic_vector (R_LENGHT - 1 downto 0);
			dataout : out 	std_logic_vector (R_LENGHT - 1 downto 0)
		);
	end component;

	component mux2X1 is
		port (
			CurrentChange	: in std_logic_vector(15 downto 0);
			CurrentMoney	: in std_logic_vector(15 downto 0);
			ChaveRetorno	: in std_logic;
			ReturnValue		: out std_logic_vector(15 downto 0)
		);
	end component;

	component registrador16bits is
		generic (n : natural := 16);
		port (
			entrada	: in 	std_logic_vector(n-1 downto 0);
			clk 	: in 	std_logic;
			rst 	: in 	std_logic;
			load 	: in 	std_logic;
			saida 	: out 	std_logic_vector(n-1 downto 0)
		);
	end component;

	component registrador5bits is
		generic (n : natural := 5);
		port (
			entrada	: in 	std_logic_vector(n-1 downto 0);
			clk 	: in 	std_logic;
			rst 	: in 	std_logic;
			load 	: in 	std_logic;
			saida 	: out 	std_logic_vector(n-1 downto 0)
		);
	end component;

	component somador16bits is
		generic (n : natural := 16);
		port (
			FirstNumber		: in std_logic_vector(n-1 downto 1);
			SecondNumber	: in std_logic_vector(n-1 downto 1);
			OutputNumber	: out std_logic_vector(n-1 downto 1)
		);
	end component;

	component subtrator16bits is
		generic (n : natural := 16);
		port (
			FirstNumber		: in std_logic_vector(n-1 downto 0);
			SecondNumber	: in std_logic_vector(n-1 downto 0);
			OutputNumber	: out std_logic_vector(n-1 downto 0)
		);
	end component;

	component comparador16bits is
		port (
			FirstNumber		: in std_logic_vector(15 downto 0);
			SecondNumber	: in std_logic_vector(15 downto 0);
			First_lt_Second : out std_logic
		);
	end component;

	component incrementador5bits IS
		generic (n : NATURAL := 5);
		port (
			Number : in STD_LOGIC_VECTOR(n - 1 downto 0);
			OutputNumber : out STD_LOGIC_VECTOR(n - 1 downto 0)
		);
	end component;

	-- Cabos genéricos caboA_B são cabos que ligam A a B. Cabos cabo_A_BCD ligam A a todos B, C e D.
	signal caboF_A, caboA_FGJK, caboB_K, caboG_B, caboI_GJ : std_logic_vector(15 downto 0);
	signal caboD_HI, caboH_C : std_logic_vector(4 downto 0);
	signal auxE_outputs;

	begin
		-- Chamada dos objetos
		A_REG_MONEY 	: registrador16bits port map (clk=>CLOCK, entrada=>caboF_A, rst=>REG_MONEY_clr, load=>REG_MONEY_ld, saida=>caboA_FGJK);
		display_money <= caboA_FGJK;

		B_RTRN_REG 		: registrador16bits port map (clk=>CLOCK, entrada=>caboG_B, rst=>RTRN_REG_clr, load=>RTRN_REG_ld, saida=>caboB_K);
		
		C_RELEASE		: registrador5bits	port map (clk=>CLOCK, entrada=>caboH_C, rst=>RELEASE_clr, load=>RELEASE_ld, saida=>dispense_product_id);

		D_SLC_PRODUCT	: registrador5bits	port map (clk=>CLOCK, entrada=>SLC, rst=>SLC_PRODUCT_clr, load=>SLC_PRODUCT_ld, saida=>caboD_HI);

		E_MANUT_STATE	: flip_flop_rs		port map (clk=>CLOCK, set=>MANUT_STATE_set, rst=>MANUT_STATE_clr, saida=>auxE_outputs);
		COIN_LOCK <= auxE_outputs;
		in_manutenance <= auxE_outputs;

		F_SOMADOR		: somador16bits		port map (FirstNumber=>Cvalue, SecondNumber=>caboA_FGJK, OutputNumber=>caboF_A);

		G_SUBTRATOR		: subtrator16bits	port map (FirstNumber=>caboA_FGJK, SecondNumber=>caboI_GJ, OutputNumber=>caboG_B);

		H_INCREMENTADOR : incrementador5bits port map (Number=>caboD_HI, OutputNumber=>caboH_C);

		I_PRICES		: EEPROM			port map (clk=>CLOCK, wr=>MEM_wr, addr=>, datain=>, dataout=> )

end RTLDataPath;