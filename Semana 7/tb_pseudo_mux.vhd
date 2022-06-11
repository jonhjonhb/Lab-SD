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

-- Clock period definitions
   constant PERIOD     : time := 20 ns;
   constant DUTY_CYCLE : real := 0.5;
   constant OFFSET     : time := 5 ns;


---------------------------------------------------
------- process para gerar o sinal de clock -------
---------------------------------------------------
        PROCESS(OFFSET)    -- clock process for clock
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                CLOCK_50MHz <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                CLOCK_50MHz <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;