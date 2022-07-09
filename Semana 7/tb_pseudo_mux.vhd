library ieee;
use ieee.std_logic_1164.all;

entity tb_pseudo_mux is
end tb_pseudo_mux;

architecture teste of tb_pseudo_mux is

component pseudo_mux is
	port (
        CLOCK   : in    std_logic; -- clock input
        S       : in    std_logic; -- control input
        A,B,C,D : in    std_logic; -- data inputs
        Q       : out   std_logic  -- data output
    );
end component;


signal CLOCK_50MHz : std_logic := '0';
signal buttonPress : std_logic := '0';
signal inputA, inputB, inputC, inputD : std_logic := '0';
signal output : std_logic := '0';
-- Clock period definitions
constant PERIOD     : time := 10 ns;
constant DUTY_CYCLE : real := 0.5;
constant OFFSET     : time := 5 ns;

begin
    instancia_pseudo_mux : pseudo_mux port map(CLOCK=>CLOCK_50MHz, S=>buttonPress, A=>inputA, B=>inputB, C=>inputC, D=>inputD, Q=>output);

    clock_manager: process    -- clock process for clock
    begin
        wait for OFFSET;
        CLOCK_LOOP : loop
            CLOCK_50MHz <= '0';
            wait for (PERIOD - (PERIOD * DUTY_CYCLE));
            CLOCK_50MHz <= '1';
            wait for (PERIOD * DUTY_CYCLE);
        end loop CLOCK_LOOP;
    end process clock_manager;
    
    inputA <= '1', '0' after 50 ns;
    inputB <= '0', '1' after 76 ns, '0' after 150 ns;
    inputC <= '0', '1' after 176 ns, '0' after 250 ns;
    inputD <= '0', '1' after 276 ns, '0' after 350 ns;
    buttonPress <= not(buttonPress) after 50 ns;

end teste;
