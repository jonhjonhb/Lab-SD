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
		SLC_PRODUCT_ld	: in std_logic;
		SLC				: in std_logic_vector(15 downto 0);
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
	signal caboF_A, 

	-- Chamada dos objetos
	A_REG_MONEY : registrador16bits port map (clk=>CLOCK, );

end RTLDataPath;