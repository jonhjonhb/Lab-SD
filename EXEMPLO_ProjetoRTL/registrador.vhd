LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity registrador is
generic (
        X       :       integer := 16
    );
    port( clock: in std_logic;
          entrada: in std_logic_vector(X-1 downto 0);
          conteudo: out std_logic_vector(X-1 downto 0);
            LD: in std_logic
        );
end registrador;

architecture comportamento of registrador is
begin

  process(clock,entrada,LD)
    begin
        if (rising_edge(clock))  then
                if (LD = '1') then
					conteudo <= entrada;
                end if;
          end if;
    end process;

end comportamento;



