library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_Incinerador is
end tb_Incinerador;

architecture teste of tb_Incinerador is

component Incinerador is
port (
		BotaoManutencaoFeita : in std_logic; 
		BotaoCombustivelCheio  : in std_logic;
		BotaoPesar  : in std_logic;
		BotaoCarregar : in std_logic;
		BotaoLiga : in std_logic;
		BotaoDesliga : in std_logic;
		BotaoDescarregar : in std_logic;
		
      PesoMedido : std_logic_vector(15 downto 0);
		TemperaturaForno : in std_logic_vector(15 downto 0);
		Clk1ms :  in std_logic;
		Clk : in std_logic;
		ClrControladora : in std_logic;
		
		
		AlarmePeso: out std_logic;
		AlarmeCombustivel : out std_logic;
		AlarmeTemperatura: out std_logic;
		Carregar: out std_logic;
		Descarregar: out std_logic;
		Fogo: out std_logic;
		AvisoFornoLigado: out std_logic;
		AvisoCarregamentoHabilitado: out std_logic;
		DesligamentoForcado: out std_logic;
		
		QtdProcessada  : out std_logic_vector(15 downto 0);
		NivelCombustivel  : out std_logic_vector(15 downto 0)
        );
end component;



signal TemperaturaForno1, PesoMedido1, QtdProcessada1, NivelCombustivel1  : std_logic_vector(15 downto 0);
signal BotaoManutencaoFeita1, BotaoCombustivelCheio1, BotaoPesar1, BotaoCarregar1, BotaoLiga1,
		 BotaoDesliga1, BotaoDescarregar1, AlarmePeso1, AlarmeCombustivel1, AlarmeTemperatura1, 
		 Carregar1, Descarregar1, Fogo1, AvisoFornoLigado1, AvisoCarregamentoHabilitado1, 
		 DesligamentoForcado1, ClrControladora1: std_logic;
signal Clk1,Clk1ms1: std_logic := '1';

begin
instancia_Incinerador: Incinerador port map(BotaoManutencaoFeita=>BotaoManutencaoFeita1,
												  BotaoCombustivelCheio=> BotaoCombustivelCheio1,
												  BotaoPesar=> BotaoPesar1,  BotaoCarregar=> BotaoCarregar1,
												  BotaoLiga=> BotaoLiga1, BotaoDesliga=>BotaoDesliga1,
												  BotaoDescarregar=> BotaoDescarregar1,  AlarmePeso=> AlarmePeso1,
												  AlarmeCombustivel=> AlarmeCombustivel1,
												  AlarmeTemperatura=> AlarmeTemperatura1,  Carregar=> Carregar1,
												  Descarregar=> Descarregar1,  Fogo=> Fogo1,
												  AvisoFornoLigado=> AvisoFornoLigado1,
												  AvisoCarregamentoHabilitado=> AvisoCarregamentoHabilitado1,
												  DesligamentoForcado=> DesligamentoForcado1,
												  TemperaturaForno=>TemperaturaForno1, PesoMedido=>PesoMedido1,
												  QtdProcessada=>QtdProcessada1, NivelCombustivel=>NivelCombustivel1,
												  Clk=>Clk1, Clk1ms=>Clk1ms1, ClrControladora=>ClrControladora1);

ClrControladora1 <= '0';
BotaoManutencaoFeita1<= '0';
BotaoCombustivelCheio1<= '0', '1' after 200 ns, '0' after 202 ns;
BotaoPesar1<= '0', '1' after 4 ns, '0' after 6 ns, '1' after 150 ns, '0' after 152 ns, '1' after 210 ns, '0' after 212 ns;
BotaoCarregar1<= '0', '1' after 20 ns, '0' after 22 ns, '1' after 220 ns, '0' after 222 ns;
BotaoLiga1<= '0', '1' after 50 ns, '0' after 52 ns, '1' after 250 ns, '0' after 252 ns;
BotaoDesliga1<= '0';
BotaoDescarregar1<= '0', '1' after 100 ns, '0' after 102 ns, '1' after 300 ns, '0' after 302 ns;
TemperaturaForno1<= x"0002", x"0009" after 60 ns, x"0010" after 100 ns;
PesoMedido1<= x"5000", x"4E20" after 14 ns;
Clk1 <= not Clk1 after 1 ns;
Clk1ms1<= not Clk1ms1 after 1 ns;


end teste;