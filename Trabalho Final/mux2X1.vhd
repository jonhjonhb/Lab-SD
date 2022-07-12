library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux2X1 is
	port (
		CurrentChange	: in std_logic_vector(15 downto 0);
		CurrentMoney	: in std_logic_vector(15 downto 0);
		ChaveRetorno	: in std_logic;
		ReturnValue		: in std_logic_vector(15 downto 0)
	);
end entity;

architecture rtl of mux2X1 is
begin
	with ChaveRetorno select
		ReturnValue <= 	CurrentChange 	when '1',
						CurrentMoney	when others;
end rtl;