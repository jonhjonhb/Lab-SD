library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplicador is
	generic (
		Fixo : std_logic_vector (15 downto 0) := x"0003"
	);
	
	port 
	(
		entrada1	   : in std_logic_vector (15 downto 0);
--		entrada2	   : in std_logic_vector (15 downto 0);
		resultado  : out std_logic_vector (15 downto 0)
	);

end entity;

architecture comportamento of multiplicador is
signal converte :  std_logic_vector(31 downto 0);
begin
	
	converte <= std_logic_vector(unsigned(entrada1) * unsigned(Fixo));
	resultado <= converte (15 downto 0);

end comportamento;





