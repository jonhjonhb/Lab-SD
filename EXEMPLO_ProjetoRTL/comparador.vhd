library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity comparador is
port (  
		a :IN STD_LOGIC_VECTOR(0 to 15); -- primeira entrada
      b :IN STD_LOGIC_VECTOR(0 to 15); -- segunda entrada
      a_gt_b :OUT STD_LOGIC);					 -- saída A > B 

end comparador;

architecture dataflow_comparador of comparador is

begin
	with a > b select

	a_gt_b <=   '1' when true,
					'0' when others;

end dataflow_comparador;
