library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- REGISTRADORES
entity registrador8bits is
	generic (n : natural := 8);
	port (
		d 		: in std_logic_vector(n-1 downto 1);
		clk 	: in std_logic;
		rst 	: in std_logic;
		load 	: in std_logic;
		q : out std_logic_vector(n-1 downto 1)
	);
end entity registrador8bits;

architecture beh of registrador8bits is
	begin
		process (clk, rst) is
		begin
			if(rst = '0') then
				q <= (others => '0');
			elsif (rising_edge(clk) and (load = '1')) then
				q <= d;
			end if;
		end process;
end architecture beh;

entity registrador3bits is
	generic (n : natural := 3);
	port (
		d 		: in std_logic_vector(n-1 downto 1);
		clk 	: in std_logic;
		rst 	: in std_logic;
		load 	: in std_logic;
		q : out std_logic_vector(n-1 downto 1)
	);
end entity registrador3bits;

architecture beh of registrador3bits is
	begin
		process (clk, rst) is
		begin
			if(rst = '0') then
				q <= (others => '0');
			elsif (rising_edge(clk) and (load = '1')) then
				q <= d;
			end if;
		end process;
end architecture beh;

entity registrador2bits is
	generic (n : natural := 2);
	port (
		d 		: in std_logic_vector(n-1 downto 1);
		clk 	: in std_logic;
		rst 	: in std_logic;
		load 	: in std_logic;
		q : out std_logic_vector(n-1 downto 1)
	);
end entity registrador2bits;

architecture beh of registrador2bits is
	begin
		process (clk, rst) is
		begin
			if(rst = '0') then
				q <= (others => '0');
			elsif (rising_edge(clk) and (load = '1')) then
				q <= d;
			end if;
		end process;
end architecture beh;

-- FLIP FLOP RS
entity flip_flop_rs is
	port (
		clk : in std_logic;
		set : in std_logic;
		rst : in std_logic;
		q : out std_logic;
	);
end entity flip_flop_rs;

architecture flip of flip_flop_rs is
	begin
		process (clk, rst) is
		begin
			if(rst = '0') then
				q <= '0';
			elsif (rising_edge(clk) and (set = '1')) then
				q <= '1';
			end if;
		end process;
end architecture flip;

-- MEMÓRIA EEPROM
entity EEPROM is
	generic (
		ADDR_LENGHT	: natural := 4;
		R_LENGHT	: natural := 8;
		NUM_OF_REGS	: natural := 16
	);
	port (
		clk 	: in std_logic
		wr 		: in std_logic
		addr 	: in std_logic_vector (ADDR_LENGHT - 1 downto 0);
		datain 	: in std_logic_vector (R_LENGHT - 1 downto 0);
		dataout : out std_logic_vector (R_LENGHT - 1 downto 0);
	);
end entity;

architecture ROM_REGISTER of EEPROM is
	type rom_reg is array (0 to NUM_OF_REGS - 1) of
			std_logic_vector (R_LENGHT - 1 downto 0);
	signal rom_s : rom_reg;

	process(clk)
	variable loc : integer;
	begin
		if (rising_edge(clk)) then
			loc := to_integer(unsigned(addr));
			if (wr = '1') then
				rom_s(loc) <= datain;
			end if;
			dataout <= ram_s(loc);
		end if;
	end process;
end architecture ROM_REGISTER;