library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_flip_flop_rs is
end tb_flip_flop_rs;

architecture testeflip_flop_rs of tb_flip_flop_rs is

component flip_flop_rs is
	port (
		clk : 	in std_logic;
		set : 	in std_logic;
		rst : 	in std_logic;
		saida : out std_logic
	);
end component;

signal CLK_50MHz : std_logic := '0';
signal SET, RST : std_logic := '0';
signal SAIDA: std_logic := '0';
-- Clock period definitions
constant PERIOD     : time := 10 ns;
constant DUTY_CYCLE : real := 0.5;
constant OFFSET     : time := 5 ns;

begin
instancia_Flip_flop_rs: flip_flop_rs port map(clk=>CLK_50MHz,set=>SET,rst=>RST,saida=>SAIDA);

	clock_manager: process    -- clock process for clock
	begin
		wait for OFFSET;
		CLOCK_LOOP : loop
			CLK_50MHz <= '0';
			wait for (PERIOD - (PERIOD * DUTY_CYCLE));
			CLK_50MHz <= '1';
			wait for (PERIOD * DUTY_CYCLE);
		end loop CLOCK_LOOP;
	end process clock_manager;

	SET <= '1', '0' after 50 ns, '1' after 150 ns;
	RST <= '1', '1' after 50 ns, '0' after 100 ns;

end testeflip_flop_rs;