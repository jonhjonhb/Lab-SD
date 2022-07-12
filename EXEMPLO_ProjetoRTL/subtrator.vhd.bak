library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity subtrator is

	port 
	(
		AuxNivelCombustivel		: in unsigned (15 downto 0);
		CombustivelNecessario	: in unsigned (15 downto 0);
		NovoNivelCombustivel   	: out unsigned (15 downto 0)
	);

end entity;

architecture rtl of subtrator is
begin

	NovoNivelCombustivel <= AuxNivelCombustivel - CombustivelNecessario;

end rtl;
