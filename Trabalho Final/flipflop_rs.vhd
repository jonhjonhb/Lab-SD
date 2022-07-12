library ieee;
use ieee.std_logic_1164.all;

-- FLIP FLOP RS
entity flip_flop_rs is
	port (
		clk : 	in std_logic;
		set : 	in std_logic;
		rst : 	in std_logic;
		saida : out std_logic;
	);
end entity flip_flop_rs;

architecture flip of flip_flop_rs is
	begin
		process (clk, rst) is
		begin
			if(rst = '0') then
				saida <= '0';
			elsif (rising_edge(clk) and (set = '1')) then
				saida <= '1';
			end if;
		end process;
end architecture flip;