library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity subtrator is

	port 
	(
		AuxNivelCombustivel		: in std_logic_vector(15 downto 0);
		CombustivelNecessario	: in std_logic_vector(15 downto 0);
		NovoNivelCombustivel   	: out std_logic_vector(15 downto 0)
	);

end entity;

architecture rtl of subtrator is
begin

	NovoNivelCombustivel <= std_logic_vector(unsigned(AuxNivelCombustivel) - unsigned(CombustivelNecessario));

end rtl;
