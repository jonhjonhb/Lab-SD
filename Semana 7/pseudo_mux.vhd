library ieee;
use ieee.std_logic_1164.all;

entity pseudo_mux is
    port (
        CLOCK   : in    std_logic; -- clock input
        S       : in    std_logic; -- control input
        A,B,C,D : in    std_logic; -- data inputs
        Q       : out   std_logic  -- data output
    );
end pseudo_mux;

architecture arch of pseudo_mux is
type state_type is (inputA, inputB, inputC, inputD);
	signal THIS_STATE, NEXT_STATE : state_type := inputA;
signal lastSState : std_logic := '0';
begin
	processo_checagem: process(CLOCK)
    begin
    	if(rising_edge(CLOCK)) then
           	THIS_STATE <= NEXT_STATE;
            lastSState <= S;
        end if;
    end process processo_checagem;

    processo_computacional: process(CLOCK, THIS_STATE, lastSState, S)
    begin
    	if((S = '1') and (lastSState = '0')) then
            case THIS_STATE is
            	when inputA =>
                	NEXT_STATE <= inputB;
                when inputB =>
                	NEXT_STATE <= inputC;
                when inputC =>
                	NEXT_STATE <= inputD;
                when inputD =>
                	NEXT_STATE <= inputA;
			end case;
		elsif(rising_edge(CLOCK)) then
        	case THIS_STATE is
            	when inputA =>
                	Q <= A;
                when inputB =>
                	Q <= B;
                when inputC =>
                	Q <= C;
                when inputD =>
                	Q <= D;
			end case;
		end if;
    end process processo_computacional;
		
    
end arch;