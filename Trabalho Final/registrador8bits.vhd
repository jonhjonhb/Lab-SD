library ieee;
use ieee.std_logic_1164.all;

-- REGISTRADOR DE 8 BITS
entity registrador8bits is
	generic (n : natural := 8);
	port (
		entrada	: in 	std_logic_vector(n-1 downto 1);
		clk 	: in 	std_logic;
		rst 	: in 	std_logic;
		load 	: in 	std_logic;
		saida 	: out 	std_logic_vector(n-1 downto 1)
	);
end entity registrador8bits;

architecture beh of registrador8bits is
	begin
		process (clk, rst) is
		begin
			if(rst = '0') then
				saida 	<= (others => '0');
			elsif (rising_edge(clk) and (load = '1')) then
				saida 	<= entrada
			end if;
		end process;
end architecture beh;

-- OUTROS REGISTRADORES:

-- entity registrador3bits is
-- 	generic (n : natural := 3);
-- 	port (
-- 		entrada	: in std_logic_vector(n-1 downto 1);
-- 		clk 	: in std_logic;
-- 		rst 	: in std_logic;
-- 		load 	: in std_logic;
-- 		saida 	: out std_logic_vector(n-1 downto 1)
-- 	);
-- end entity registrador3bits;

-- architecture beh of registrador3bits is
-- 	begin
-- 		process (clk, rst) is
-- 		begin
-- 			if(rst = '0') then
-- 				saida 	<= (others => '0');
-- 			elsif (rising_edge(clk) and (load = '1')) then
-- 				saida 	<= entrada
-- 			end if;
-- 		end process;
-- end architecture beh;

-- entity registrador2bits is
-- 	generic (n : natural := 2);
-- 	port (
-- 		entrada	: in std_logic_vector(n-1 downto 1);
-- 		clk 	: in std_logic;
-- 		rst 	: in std_logic;
-- 		load 	: in std_logic;
-- 		saida 	: out std_logic_vector(n-1 downto 1)
-- 	);
-- end entity registrador2bits;

-- architecture beh of registrador2bits is
-- 	begin
-- 		process (clk, rst) is
-- 		begin
-- 			if(rst = '0') then
-- 				saida 	<= (others => '0');
-- 			elsif (rising_edge(clk) and (load = '1')) then
-- 				saida 	<= entrada
-- 			end if;
-- 		end process;
-- end architecture beh;
