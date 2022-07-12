library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity comparador_temperatura_max is
generic (
		Fixo : std_logic_vector (15 downto 0) := x"047E"
	);
port (  
		a :IN STD_LOGIC_VECTOR(0 to 15); -- primeira entrada
--    b :IN STD_LOGIC_VECTOR(0 to 15); -- segunda entrada
      temp_gt_tempmax :OUT STD_LOGIC);					 -- saída A > B 

end comparador_temperatura_max;

architecture dataflow_comparador_temperatura_max of comparador_temperatura_max is

begin
	with a > Fixo select

	temp_gt_tempmax <=   '1' when true,
								'0' when others;

end dataflow_comparador_temperatura_max;