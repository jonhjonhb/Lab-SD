library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux is

	generic(
	
		CombustivelMaximo: std_logic_vector(15 downto 0) := x"2710" -- 63000g
	
	);
	
	port
	(
		NovoNivelCombustivel      : in  std_logic_vector(15 downto 0);
		ChaveReabastecimento      : in  std_logic;
		NivelCombustivel          : out std_logic_vector(15 downto 0)
	);
  
end entity;

architecture rtl of mux is
begin

  with ChaveReabastecimento select
    NivelCombustivel <= CombustivelMaximo      when '1',
								NovoNivelCombustivel   when others;
									
		 
end rtl;