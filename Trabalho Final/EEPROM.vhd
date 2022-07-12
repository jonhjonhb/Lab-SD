library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- MEMÓRIA EEPROM
entity EEPROM is
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
		dataout : out 	std_logic_vector (R_LENGHT - 1 downto 0);
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