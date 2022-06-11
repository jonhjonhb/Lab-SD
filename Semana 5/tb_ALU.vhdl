-- ALU EM 32 BITS
-- Testbench

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

-- Declaração da entidade testbench
entity testbench is
end testbench;

-- Arquitetura da entidade // Comportamento
architecture comportamento of testbench is

-- Declaração de componente a ser testado
component ALU is
	port (
        CONTROL : in    std_logic_vector(3 downto 0);
        SRC1    : in    std_logic_vector(31 downto 0);
        SRC2    : in    std_logic_vector(31 downto 0);
        RESULT  : out   std_logic_vector(31 downto 0);
        ZERO    : out   std_logic
    );
end component;

-- Declaração de signals
signal num1, num2, resultado : std_logic_vector(31 downto 0) := (others => '0');
signal control : std_logic_vector(3 downto 0) := (others => '0');
signal zero : std_logic := '0';
signal i : integer;


begin
	instancia_ALU: ALU port map(CONTROL=>control, SRC1=>num1, SRC2=>num2, RESULT=>resultado, ZERO=>zero);
	
	stim_proc: process
	begin
		num1 <= std_logic_vector(to_unsigned(10, 32));
		num2 <= std_logic_vector(to_unsigned(4, 32));
		control <= std_logic_vector(to_unsigned(0, 4));
		
		for i in 0 to 12 loop
			control <= std_logic_vector(to_unsigned(i, 4));
			wait for 20 ns;
		end loop;
	end process;
		
end comportamento;