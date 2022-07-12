library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use ieee.std_logic_unsigned.all;
 
entity temporizador2minutos is

Port 	  ( 
				Clk	         : in  std_logic; -- Clock de 1 ms
				StartCount	   : in  std_logic; -- Inicia o tempo
				Output		   : out	std_logic  -- Saída 1 no momento que o temporizador atinge 5 min
			);
end temporizador2minutos;
 
architecture RTL of temporizador2minutos is

 begin
    process(Clk, StartCount)
	 variable count	: natural	:=	0;
    begin
			if (StartCount='1') then
			count		:=	 0 ;
			Output	<= '0';
			else
				if (rising_edge(clk)) then
					if (count<10) then 		  -- 2 minutos
						count 		:= count + 1;  						
					elsif (count<12) then 	  -- pequeno delay para saída voltar a ser 0
						Output	<=	'1';
						count 	:= count + 1; 
					else
						Output   <= '0';
					end if;
				end if;
			end if;
    end process; 
 end RTL;