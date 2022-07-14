library ieee;
use ieee.std_logic_1164.all;

-- REGISTRADOR DE 5 BITS
entity registrador5bits is
	generic (n : natural := 5);
	port (
		entrada	: in 	std_logic_vector(n-1 downto 0);
		clk 	: in 	std_logic;
		rst 	: in 	std_logic;
		load 	: in 	std_logic;
		saida 	: out 	std_logic_vector(n-1 downto 0)
	);
end entity registrador5bits;

architecture beh of registrador5bits is
	begin
		process (clk, rst) is
		begin
			if(rst = '1') then
				saida 	<= (others => '0');
			elsif (rising_edge(clk) and (load = '1')) then
				saida 	<= entrada
			end if;
		end process;
end architecture beh;