library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux2X1 is
	generic (n : natural := 16);
	port (
		CurrentChange	: in std_logic_vector(n-1 downto 0);
		CurrentMoney	: in std_logic_vector(n-1 downto 0);
		ChaveRetorno	: in std_logic;
		ReturnValue		: out std_logic_vector(n-1 downto 0)
	);
end entity;

architecture rtl of mux2X1 is
begin
	with ChaveRetorno select
		ReturnValue <= 	CurrentMoney 	when '1',
						CurrentChange	when others;
end rtl;