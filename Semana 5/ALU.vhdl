library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity alu is
    generic (
        W       :       integer := 32
    );
    port (
        CONTROL : in    std_logic_vector(3 downto 0);
        SRC1    : in    std_logic_vector(W - 1 downto 0);
        SRC2    : in    std_logic_vector(W - 1 downto 0);
        RESULT  : out   std_logic_vector(W - 1 downto 0);
        ZERO    : out   std_logic
    );
end alu;


-- Define the architecture for this entity.
-- Consider the following operations to calculate the value or RESULT:
--      CONTROL             RESULT
--      0000                SRC1 and SRC2 
--      0001                SRC1 or SRC2
--      0010                SRC1 + SRC2
--      0110                SRC1 - SRC2
--      0111                SRC1 < SRC2 ? 1 : 0
--      1100                NOT( SRC1 or SRC2 )

-- Consider the following behavior for the ZERO output:
--  ZERO <= RESULT == 0 ? 1 : 0

architecture arch of alu is

signal ALU_Resultado : std_logic_vector (w-1 downto 0) := (others => '0');
begin

	process(SRC1, SRC2, CONTROL)
	begin
		case (CONTROL) is
		when "0000" =>
			ALU_Resultado <= SRC1 and SRC2;
		when "0001" =>
			ALU_Resultado <= SRC1 or SRC2;
		when "0010" =>
			ALU_Resultado <= SRC1 + SRC2;
		when "0110" =>
			ALU_Resultado <= SRC1 - SRC2;
		when "0111" =>
			if(SRC1 < SRC2) then
				ALU_Resultado <= std_logic_vector(to_unsigned(1, w));
			else 
				ALU_Resultado <= std_logic_vector(to_unsigned(0, w));
			end if;
		when "1100" =>
			ALU_Resultado <= not(SRC1 or SRC2);
		when others =>
			ALU_Resultado <= std_logic_vector(to_unsigned(0, w));
		end case;
	end process;

	RESULT <= ALU_Resultado;
	
	ZERO <= '1' when (to_integer(unsigned(ALU_Resultado)) = 0)
				else '0';

end arch;