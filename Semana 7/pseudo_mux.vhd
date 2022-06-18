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
  processo_computacional1: process(CLOCK, THIS_STATE, lastSState, S)
  begin
    case THIS_STATE is
      when inputA =>
        if((S = '1') and (lastSState = '0')) then
          NEXT_STATE <= inputB;
        else
          NEXT_STATE <= inputA;
        end if;
      when inputB =>
        if((S = '1') and (lastSState = '0')) then
          NEXT_STATE <= inputC;
        else
          NEXT_STATE <= inputB;
        end if;
      when inputC =>
        if((S = '1') and (lastSState = '0')) then
          NEXT_STATE <= inputD;
        else
          NEXT_STATE <= inputC;
        end if;
      when inputD =>
        if((S = '1') and (lastSState = '0')) then
          NEXT_STATE <= inputA;
        else
          NEXT_STATE <= inputD;
        end if;
      end case;
    end process processo_computacional1;
    processo_computacional: process(CLOCK, THIS_STATE, lastSState, S)
    begin
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
    end process processo_computacional;    
end arch;