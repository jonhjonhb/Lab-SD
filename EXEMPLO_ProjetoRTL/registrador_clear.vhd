LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity registrador_clear is
generic (
        X       :       integer := 16
    );
    port( clock: in std_logic;
          entrada: in std_logic_vector(X-1 downto 0);
          conteudo: out std_logic_vector(X-1 downto 0);
            LD: in std_logic;
				clear: in std_logic
        );
end registrador_clear;

architecture comportamento of registrador_clear is
begin

  process(clock,entrada,LD)
    begin
		if (clear = '1') then
			conteudo <= x"0000";
		elsif (rising_edge(clock) and LD = '1')  then
			conteudo <= entrada;

      end if;
    end process;

end comportamento;