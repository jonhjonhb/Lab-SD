-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "03/23/2021 18:50:03"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Incinerador IS
    PORT (
	BotaoManutencaoFeita : IN std_logic;
	BotaoCombustivelCheio : IN std_logic;
	BotaoPesar : IN std_logic;
	BotaoCarregar : IN std_logic;
	BotaoLiga : IN std_logic;
	BotaoDesliga : IN std_logic;
	BotaoDescarregar : IN std_logic;
	PesoMedido : IN std_logic_vector(15 DOWNTO 0);
	TemperaturaForno : IN std_logic_vector(15 DOWNTO 0);
	Clk1ms : IN std_logic;
	Clk : IN std_logic;
	ClrControladora : IN std_logic;
	AlarmePeso : OUT std_logic;
	AlarmeCombustivel : OUT std_logic;
	AlarmeTemperatura : OUT std_logic;
	Carregar : OUT std_logic;
	Descarregar : OUT std_logic;
	Fogo : OUT std_logic;
	AvisoFornoLigado : OUT std_logic;
	AvisoCarregamentoHabilitado : OUT std_logic;
	DesligamentoForcado : OUT std_logic;
	QtdProcessada : OUT std_logic_vector(15 DOWNTO 0);
	NivelCombustivel : OUT std_logic_vector(15 DOWNTO 0)
	);
END Incinerador;

-- Design Ports Information
-- AlarmePeso	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AlarmeCombustivel	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AlarmeTemperatura	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Carregar	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Descarregar	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Fogo	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AvisoFornoLigado	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AvisoCarregamentoHabilitado	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DesligamentoForcado	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- QtdProcessada[0]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- QtdProcessada[1]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- QtdProcessada[2]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- QtdProcessada[3]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- QtdProcessada[4]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- QtdProcessada[5]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- QtdProcessada[6]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- QtdProcessada[7]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- QtdProcessada[8]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- QtdProcessada[9]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- QtdProcessada[10]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- QtdProcessada[11]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- QtdProcessada[12]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- QtdProcessada[13]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- QtdProcessada[14]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- QtdProcessada[15]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NivelCombustivel[0]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NivelCombustivel[1]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NivelCombustivel[2]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NivelCombustivel[3]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NivelCombustivel[4]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NivelCombustivel[5]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NivelCombustivel[6]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NivelCombustivel[7]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NivelCombustivel[8]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NivelCombustivel[9]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NivelCombustivel[10]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NivelCombustivel[11]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NivelCombustivel[12]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NivelCombustivel[13]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NivelCombustivel[14]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NivelCombustivel[15]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ClrControladora	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BotaoCombustivelCheio	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BotaoDesliga	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TemperaturaForno[10]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TemperaturaForno[7]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TemperaturaForno[8]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TemperaturaForno[9]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TemperaturaForno[0]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TemperaturaForno[1]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TemperaturaForno[2]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TemperaturaForno[3]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TemperaturaForno[4]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TemperaturaForno[5]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TemperaturaForno[6]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TemperaturaForno[15]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TemperaturaForno[11]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TemperaturaForno[12]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TemperaturaForno[13]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TemperaturaForno[14]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BotaoCarregar	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BotaoDescarregar	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PesoMedido[5]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PesoMedido[9]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PesoMedido[10]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PesoMedido[11]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PesoMedido[14]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PesoMedido[4]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PesoMedido[0]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PesoMedido[1]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PesoMedido[2]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PesoMedido[3]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PesoMedido[6]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PesoMedido[7]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PesoMedido[8]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PesoMedido[15]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PesoMedido[12]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PesoMedido[13]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BotaoPesar	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BotaoManutencaoFeita	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clk1ms	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BotaoLiga	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Incinerador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_BotaoManutencaoFeita : std_logic;
SIGNAL ww_BotaoCombustivelCheio : std_logic;
SIGNAL ww_BotaoPesar : std_logic;
SIGNAL ww_BotaoCarregar : std_logic;
SIGNAL ww_BotaoLiga : std_logic;
SIGNAL ww_BotaoDesliga : std_logic;
SIGNAL ww_BotaoDescarregar : std_logic;
SIGNAL ww_PesoMedido : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_TemperaturaForno : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Clk1ms : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_ClrControladora : std_logic;
SIGNAL ww_AlarmePeso : std_logic;
SIGNAL ww_AlarmeCombustivel : std_logic;
SIGNAL ww_AlarmeTemperatura : std_logic;
SIGNAL ww_Carregar : std_logic;
SIGNAL ww_Descarregar : std_logic;
SIGNAL ww_Fogo : std_logic;
SIGNAL ww_AvisoFornoLigado : std_logic;
SIGNAL ww_AvisoCarregamentoHabilitado : std_logic;
SIGNAL ww_DesligamentoForcado : std_logic;
SIGNAL ww_QtdProcessada : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_NivelCombustivel : std_logic_vector(15 DOWNTO 0);
SIGNAL \Clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk1ms~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ClrControladora~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[5]~27_combout\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[9]~35_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[5]~41_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[9]~49_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[18]~67_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[20]~71_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[25]~81_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[29]~90\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[30]~91_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[9]~59_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[23]~88\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[24]~89_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[24]~90\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[25]~91_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[25]~92\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[26]~93_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[26]~94\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[27]~95_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[27]~96\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[28]~97_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[28]~98\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[29]~99_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[29]~100\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[30]~101_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[4]~39_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[5]~41_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[7]~45_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[9]~49_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[27]~85_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[29]~90\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[30]~91_combout\ : std_logic;
SIGNAL \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~0_combout\ : std_logic;
SIGNAL \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~1_combout\ : std_logic;
SIGNAL \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~2_combout\ : std_logic;
SIGNAL \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~3_combout\ : std_logic;
SIGNAL \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~5_combout\ : std_logic;
SIGNAL \B_Controladora|Selector10~0_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|LessThan0~3_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|LessThan0~8_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[6]~33_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[6]~37_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[6]~38_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|LessThan0~0_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|LessThan1~0_combout\ : std_logic;
SIGNAL \A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~0_combout\ : std_logic;
SIGNAL \A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~1_combout\ : std_logic;
SIGNAL \Clk1ms~combout\ : std_logic;
SIGNAL \Clk1ms~clkctrl_outclk\ : std_logic;
SIGNAL \A_DataPath|H_RegAuxQtdProcessada|conteudo[1]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|H_RegAuxQtdProcessada|conteudo[6]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|H_RegAuxQtdProcessada|conteudo[9]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|H_RegAuxQtdProcessada|conteudo[12]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|F_RegAuxNivelCombustivel|conteudo[1]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|F_RegAuxNivelCombustivel|conteudo[2]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|F_RegAuxNivelCombustivel|conteudo[3]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|F_RegAuxNivelCombustivel|conteudo[11]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|F_RegAuxNivelCombustivel|conteudo[12]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|A_RegPeso|conteudo[2]~feeder_combout\ : std_logic;
SIGNAL \Clk~combout\ : std_logic;
SIGNAL \Clk~clkctrl_outclk\ : std_logic;
SIGNAL \A_DataPath|A_RegPeso|conteudo[14]~feeder_combout\ : std_logic;
SIGNAL \BotaoCombustivelCheio~combout\ : std_logic;
SIGNAL \BotaoManutencaoFeita~combout\ : std_logic;
SIGNAL \B_Controladora|Selector1~0_combout\ : std_logic;
SIGNAL \B_Controladora|estado_atual.S0~feeder_combout\ : std_logic;
SIGNAL \ClrControladora~combout\ : std_logic;
SIGNAL \ClrControladora~clkctrl_outclk\ : std_logic;
SIGNAL \B_Controladora|estado_atual.S0~regout\ : std_logic;
SIGNAL \B_Controladora|Selector0~0_combout\ : std_logic;
SIGNAL \B_Controladora|estado_atual.S1~regout\ : std_logic;
SIGNAL \B_Controladora|Selector2~0_combout\ : std_logic;
SIGNAL \B_Controladora|estado_atual.S3~regout\ : std_logic;
SIGNAL \B_Controladora|Selector1~1_combout\ : std_logic;
SIGNAL \A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~2_combout\ : std_logic;
SIGNAL \BotaoLiga~combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[0]~39_combout\ : std_logic;
SIGNAL \BotaoCarregar~combout\ : std_logic;
SIGNAL \A_DataPath|D_ComparadorPeso|LessThan0~0_combout\ : std_logic;
SIGNAL \A_DataPath|A_RegPeso|conteudo[7]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|D_ComparadorPeso|LessThan0~3_combout\ : std_logic;
SIGNAL \A_DataPath|A_RegPeso|conteudo[1]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|A_RegPeso|conteudo[0]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|D_ComparadorPeso|LessThan0~1_combout\ : std_logic;
SIGNAL \A_DataPath|D_ComparadorPeso|LessThan0~2_combout\ : std_logic;
SIGNAL \B_Controladora|Selector5~0_combout\ : std_logic;
SIGNAL \A_DataPath|F_RegAuxNivelCombustivel|conteudo[14]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[0]~14_cout\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[0]~16_cout\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[0]~18\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[1]~20\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[2]~22\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[3]~24\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[4]~26\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[5]~28\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[6]~30\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[7]~32\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[8]~34\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[9]~36\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[10]~38\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[11]~40\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[12]~41_combout\ : std_logic;
SIGNAL \BotaoPesar~combout\ : std_logic;
SIGNAL \B_Controladora|Selector3~0_combout\ : std_logic;
SIGNAL \B_Controladora|estado_atual.S4~regout\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[11]~39_combout\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[7]~31_combout\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[6]~29_combout\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[3]~23_combout\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[2]~21_combout\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[1]~19_combout\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[0]~16_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \B_Controladora|WideOr0~0_combout\ : std_logic;
SIGNAL \B_Controladora|Selector6~0_combout\ : std_logic;
SIGNAL \B_Controladora|estado_atual.S9~regout\ : std_logic;
SIGNAL \B_Controladora|WideOr0~combout\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[0]~17\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[1]~19\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[2]~21\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[3]~23\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[4]~24_combout\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[4]~25\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[5]~26_combout\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[5]~27\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[6]~29\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[7]~31\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[8]~32_combout\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[8]~33\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[9]~34_combout\ : std_logic;
SIGNAL \A_DataPath|F_RegAuxNivelCombustivel|conteudo[9]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[9]~35\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[10]~36_combout\ : std_logic;
SIGNAL \A_DataPath|F_RegAuxNivelCombustivel|conteudo[10]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[10]~37\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[11]~39\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[12]~41\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[13]~42_combout\ : std_logic;
SIGNAL \A_DataPath|F_RegAuxNivelCombustivel|conteudo[13]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[13]~43\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[14]~44_combout\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[12]~40_combout\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[10]~37_combout\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[8]~33_combout\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[4]~25_combout\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[3]~22_combout\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[2]~20_combout\ : std_logic;
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo[0]~17_combout\ : std_logic;
SIGNAL \A_DataPath|K_ComparadorCombustivel|LessThan0~1_cout\ : std_logic;
SIGNAL \A_DataPath|K_ComparadorCombustivel|LessThan0~3_cout\ : std_logic;
SIGNAL \A_DataPath|K_ComparadorCombustivel|LessThan0~5_cout\ : std_logic;
SIGNAL \A_DataPath|K_ComparadorCombustivel|LessThan0~7_cout\ : std_logic;
SIGNAL \A_DataPath|K_ComparadorCombustivel|LessThan0~9_cout\ : std_logic;
SIGNAL \A_DataPath|K_ComparadorCombustivel|LessThan0~11_cout\ : std_logic;
SIGNAL \A_DataPath|K_ComparadorCombustivel|LessThan0~13_cout\ : std_logic;
SIGNAL \A_DataPath|K_ComparadorCombustivel|LessThan0~15_cout\ : std_logic;
SIGNAL \A_DataPath|K_ComparadorCombustivel|LessThan0~17_cout\ : std_logic;
SIGNAL \A_DataPath|K_ComparadorCombustivel|LessThan0~19_cout\ : std_logic;
SIGNAL \A_DataPath|K_ComparadorCombustivel|LessThan0~21_cout\ : std_logic;
SIGNAL \A_DataPath|K_ComparadorCombustivel|LessThan0~23_cout\ : std_logic;
SIGNAL \A_DataPath|K_ComparadorCombustivel|LessThan0~24_combout\ : std_logic;
SIGNAL \A_DataPath|K_ComparadorCombustivel|LessThan0~26_combout\ : std_logic;
SIGNAL \B_Controladora|Selector5~1_combout\ : std_logic;
SIGNAL \B_Controladora|estado_atual.S7~regout\ : std_logic;
SIGNAL \B_Controladora|proximo_estado.S8~0_combout\ : std_logic;
SIGNAL \B_Controladora|estado_atual.S8~regout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[2]~43_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[6]~49_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[19]~80\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[20]~82\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[21]~84\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[22]~85_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[22]~86\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[23]~87_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[20]~81_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[21]~83_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[6]~36_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[0]~40\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[1]~41_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[1]~42\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[2]~44\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[3]~45_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[3]~46\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[4]~48\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[5]~52\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[6]~53_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[6]~54\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[7]~56\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[8]~57_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[8]~58\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[9]~60\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[10]~61_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[10]~62\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[11]~64\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[12]~65_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[12]~66\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[13]~67_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[13]~68\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[14]~69_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[14]~70\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[15]~71_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[15]~72\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[16]~73_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[16]~74\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[17]~75_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[17]~76\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[18]~78\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[19]~79_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[18]~77_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[6]~34_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[5]~51_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[7]~55_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[4]~47_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[6]~31_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[11]~63_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[6]~32_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|count[6]~35_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|Output~0_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|Output~1_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorCarregamento|Output~regout\ : std_logic;
SIGNAL \B_Controladora|Selector7~0_combout\ : std_logic;
SIGNAL \B_Controladora|estado_atual.S10~regout\ : std_logic;
SIGNAL \B_Controladora|proximo_estado.S11~0_combout\ : std_logic;
SIGNAL \B_Controladora|estado_atual.S11~regout\ : std_logic;
SIGNAL \BotaoDesliga~combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[0]~31_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[1]~34\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[2]~35_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[2]~36\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[3]~37_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[3]~38\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[4]~39_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|LessThan1~0_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[4]~40\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[5]~42\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[6]~43_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[6]~44\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[7]~46\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[8]~47_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[8]~48\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[9]~50\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[10]~51_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[10]~52\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[11]~54\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[12]~55_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[12]~56\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[13]~57_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[13]~58\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[14]~59_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[14]~60\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[15]~61_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[15]~62\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[16]~63_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[16]~64\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[17]~65_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[17]~66\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[18]~68\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[19]~69_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[19]~70\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[20]~72\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[21]~74\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[22]~75_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[22]~76\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[23]~78\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[24]~79_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[24]~80\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[25]~82\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[26]~83_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[26]~84\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[27]~86\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[28]~87_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[28]~88\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[29]~89_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[27]~85_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|LessThan0~6_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[23]~77_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[21]~73_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|LessThan0~5_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|LessThan0~7_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[7]~45_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|LessThan0~0_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[11]~53_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|LessThan0~1_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|LessThan0~2_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|LessThan0~4_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|Output~1_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[0]~32\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|count[1]~33_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|LessThan0~9_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|Output~0_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorAquecimento|Output~regout\ : std_logic;
SIGNAL \B_Controladora|Selector9~0_combout\ : std_logic;
SIGNAL \B_Controladora|Selector8~0_combout\ : std_logic;
SIGNAL \B_Controladora|estado_atual.S12~regout\ : std_logic;
SIGNAL \B_Controladora|Selector9~1_combout\ : std_logic;
SIGNAL \B_Controladora|estado_atual.S13~regout\ : std_logic;
SIGNAL \B_Controladora|Fogo~combout\ : std_logic;
SIGNAL \B_Controladora|Selector11~0_combout\ : std_logic;
SIGNAL \B_Controladora|estado_atual.S15~regout\ : std_logic;
SIGNAL \BotaoDescarregar~combout\ : std_logic;
SIGNAL \B_Controladora|Selector10~1_combout\ : std_logic;
SIGNAL \B_Controladora|estado_atual.S14~regout\ : std_logic;
SIGNAL \B_Controladora|proximo_estado.S16~0_combout\ : std_logic;
SIGNAL \B_Controladora|estado_atual.S16~regout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[0]~31_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[1]~34\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[2]~36\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[3]~37_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[3]~38\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[4]~40\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[5]~42\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[6]~43_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[6]~44\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[7]~46\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[8]~47_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[8]~48\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[9]~50\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[10]~51_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[10]~52\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[11]~54\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[12]~55_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[12]~56\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[13]~57_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[13]~58\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[14]~59_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[14]~60\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[15]~61_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[15]~62\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[16]~63_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[16]~64\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[17]~65_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[17]~66\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[18]~68\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[19]~69_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[19]~70\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[20]~72\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[21]~74\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[22]~75_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[22]~76\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[23]~77_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[20]~71_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[21]~73_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|LessThan0~5_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[23]~78\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[24]~79_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[24]~80\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[25]~82\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[26]~83_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[26]~84\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[27]~86\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[28]~87_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[28]~88\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[29]~89_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[25]~81_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|LessThan0~6_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|LessThan0~7_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|LessThan0~2_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[11]~53_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|LessThan0~1_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[18]~67_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|LessThan0~3_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|LessThan0~4_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[0]~32\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[1]~33_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|count[2]~35_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|LessThan0~9_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|LessThan0~8_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|Output~0_combout\ : std_logic;
SIGNAL \A_DataPath|TemporizadorDescarregamento|Output~regout\ : std_logic;
SIGNAL \B_Controladora|Selector12~0_combout\ : std_logic;
SIGNAL \B_Controladora|estado_atual.S17~regout\ : std_logic;
SIGNAL \B_Controladora|Selector13~0_combout\ : std_logic;
SIGNAL \B_Controladora|Selector13~1_combout\ : std_logic;
SIGNAL \B_Controladora|estado_atual.S18~regout\ : std_logic;
SIGNAL \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~4_combout\ : std_logic;
SIGNAL \A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~3_combout\ : std_logic;
SIGNAL \B_Controladora|Selector1~2_combout\ : std_logic;
SIGNAL \B_Controladora|estado_atual.S2~regout\ : std_logic;
SIGNAL \B_Controladora|LdPeso~combout\ : std_logic;
SIGNAL \A_DataPath|A_RegPeso|conteudo[15]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|D_ComparadorPeso|LessThan0~4_combout\ : std_logic;
SIGNAL \A_DataPath|D_ComparadorPeso|LessThan0~5_combout\ : std_logic;
SIGNAL \B_Controladora|proximo_estado.S5~0_combout\ : std_logic;
SIGNAL \B_Controladora|estado_atual.S5~regout\ : std_logic;
SIGNAL \B_Controladora|Selector4~0_combout\ : std_logic;
SIGNAL \B_Controladora|estado_atual.S6~regout\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[0]~16_combout\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[0]~17\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[1]~18_combout\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[1]~19\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[2]~20_combout\ : std_logic;
SIGNAL \A_DataPath|H_RegAuxQtdProcessada|conteudo[3]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[2]~21\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[3]~22_combout\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[3]~23\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[4]~24_combout\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[4]~25\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[5]~26_combout\ : std_logic;
SIGNAL \A_DataPath|A_RegPeso|conteudo[6]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[5]~27\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[6]~28_combout\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[6]~29\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[7]~30_combout\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[7]~31\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[8]~32_combout\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[8]~33\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[9]~34_combout\ : std_logic;
SIGNAL \A_DataPath|H_RegAuxQtdProcessada|conteudo[10]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[9]~35\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[10]~36_combout\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[10]~37\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[11]~38_combout\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[11]~39\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[12]~40_combout\ : std_logic;
SIGNAL \A_DataPath|A_RegPeso|conteudo[13]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[12]~41\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[13]~42_combout\ : std_logic;
SIGNAL \A_DataPath|H_RegAuxQtdProcessada|conteudo[14]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[13]~43\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[14]~44_combout\ : std_logic;
SIGNAL \A_DataPath|H_RegAuxQtdProcessada|conteudo[15]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[14]~45\ : std_logic;
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo[15]~46_combout\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[1]~18_combout\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[6]~28_combout\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[7]~30_combout\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[11]~38_combout\ : std_logic;
SIGNAL \A_DataPath|F_RegAuxNivelCombustivel|conteudo[15]~feeder_combout\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[14]~45\ : std_logic;
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo[15]~46_combout\ : std_logic;
SIGNAL \TemperaturaForno~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PesoMedido~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \A_DataPath|G_RegNivelCombustivel|conteudo\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \A_DataPath|E_RegCombustivelNecessario|conteudo\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \A_DataPath|F_RegAuxNivelCombustivel|conteudo\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \A_DataPath|TemporizadorCarregamento|count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \A_DataPath|H_RegAuxQtdProcessada|conteudo\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \A_DataPath|I_RegQtdProcessada|conteudo\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \A_DataPath|TemporizadorDescarregamento|count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \A_DataPath|TemporizadorAquecimento|count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \A_DataPath|A_RegPeso|conteudo\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_BotaoManutencaoFeita <= BotaoManutencaoFeita;
ww_BotaoCombustivelCheio <= BotaoCombustivelCheio;
ww_BotaoPesar <= BotaoPesar;
ww_BotaoCarregar <= BotaoCarregar;
ww_BotaoLiga <= BotaoLiga;
ww_BotaoDesliga <= BotaoDesliga;
ww_BotaoDescarregar <= BotaoDescarregar;
ww_PesoMedido <= PesoMedido;
ww_TemperaturaForno <= TemperaturaForno;
ww_Clk1ms <= Clk1ms;
ww_Clk <= Clk;
ww_ClrControladora <= ClrControladora;
AlarmePeso <= ww_AlarmePeso;
AlarmeCombustivel <= ww_AlarmeCombustivel;
AlarmeTemperatura <= ww_AlarmeTemperatura;
Carregar <= ww_Carregar;
Descarregar <= ww_Descarregar;
Fogo <= ww_Fogo;
AvisoFornoLigado <= ww_AvisoFornoLigado;
AvisoCarregamentoHabilitado <= ww_AvisoCarregamentoHabilitado;
DesligamentoForcado <= ww_DesligamentoForcado;
QtdProcessada <= ww_QtdProcessada;
NivelCombustivel <= ww_NivelCombustivel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clk~combout\);

\Clk1ms~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clk1ms~combout\);

\ClrControladora~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ClrControladora~combout\);

-- Location: LCFF_X46_Y26_N25
\A_DataPath|E_RegCombustivelNecessario|conteudo[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|E_RegCombustivelNecessario|conteudo[9]~35_combout\,
	sload => VCC,
	ena => \B_Controladora|estado_atual.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|E_RegCombustivelNecessario|conteudo\(9));

-- Location: LCFF_X46_Y26_N17
\A_DataPath|E_RegCombustivelNecessario|conteudo[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|E_RegCombustivelNecessario|conteudo[5]~27_combout\,
	sload => VCC,
	ena => \B_Controladora|estado_atual.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|E_RegCombustivelNecessario|conteudo\(5));

-- Location: LCCOMB_X47_Y30_N14
\A_DataPath|E_RegCombustivelNecessario|conteudo[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[5]~27_combout\ = (\PesoMedido~combout\(7) & ((\PesoMedido~combout\(8) & (\A_DataPath|E_RegCombustivelNecessario|conteudo[4]~26\ & VCC)) # (!\PesoMedido~combout\(8) & 
-- (!\A_DataPath|E_RegCombustivelNecessario|conteudo[4]~26\)))) # (!\PesoMedido~combout\(7) & ((\PesoMedido~combout\(8) & (!\A_DataPath|E_RegCombustivelNecessario|conteudo[4]~26\)) # (!\PesoMedido~combout\(8) & 
-- ((\A_DataPath|E_RegCombustivelNecessario|conteudo[4]~26\) # (GND)))))
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[5]~28\ = CARRY((\PesoMedido~combout\(7) & (!\PesoMedido~combout\(8) & !\A_DataPath|E_RegCombustivelNecessario|conteudo[4]~26\)) # (!\PesoMedido~combout\(7) & 
-- ((!\A_DataPath|E_RegCombustivelNecessario|conteudo[4]~26\) # (!\PesoMedido~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PesoMedido~combout\(7),
	datab => \PesoMedido~combout\(8),
	datad => VCC,
	cin => \A_DataPath|E_RegCombustivelNecessario|conteudo[4]~26\,
	combout => \A_DataPath|E_RegCombustivelNecessario|conteudo[5]~27_combout\,
	cout => \A_DataPath|E_RegCombustivelNecessario|conteudo[5]~28\);

-- Location: LCCOMB_X47_Y30_N22
\A_DataPath|E_RegCombustivelNecessario|conteudo[9]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[9]~35_combout\ = (\PesoMedido~combout\(11) & ((\PesoMedido~combout\(12) & (\A_DataPath|E_RegCombustivelNecessario|conteudo[8]~34\ & VCC)) # (!\PesoMedido~combout\(12) & 
-- (!\A_DataPath|E_RegCombustivelNecessario|conteudo[8]~34\)))) # (!\PesoMedido~combout\(11) & ((\PesoMedido~combout\(12) & (!\A_DataPath|E_RegCombustivelNecessario|conteudo[8]~34\)) # (!\PesoMedido~combout\(12) & 
-- ((\A_DataPath|E_RegCombustivelNecessario|conteudo[8]~34\) # (GND)))))
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[9]~36\ = CARRY((\PesoMedido~combout\(11) & (!\PesoMedido~combout\(12) & !\A_DataPath|E_RegCombustivelNecessario|conteudo[8]~34\)) # (!\PesoMedido~combout\(11) & 
-- ((!\A_DataPath|E_RegCombustivelNecessario|conteudo[8]~34\) # (!\PesoMedido~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PesoMedido~combout\(11),
	datab => \PesoMedido~combout\(12),
	datad => VCC,
	cin => \A_DataPath|E_RegCombustivelNecessario|conteudo[8]~34\,
	combout => \A_DataPath|E_RegCombustivelNecessario|conteudo[9]~35_combout\,
	cout => \A_DataPath|E_RegCombustivelNecessario|conteudo[9]~36\);

-- Location: LCFF_X37_Y29_N13
\A_DataPath|TemporizadorAquecimento|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[5]~41_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(5));

-- Location: LCFF_X37_Y29_N21
\A_DataPath|TemporizadorAquecimento|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[9]~49_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(9));

-- Location: LCFF_X37_Y28_N7
\A_DataPath|TemporizadorAquecimento|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[18]~67_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(18));

-- Location: LCFF_X37_Y28_N11
\A_DataPath|TemporizadorAquecimento|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[20]~71_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(20));

-- Location: LCFF_X37_Y28_N21
\A_DataPath|TemporizadorAquecimento|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[25]~81_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(25));

-- Location: LCFF_X37_Y28_N31
\A_DataPath|TemporizadorAquecimento|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[30]~91_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(30));

-- Location: LCFF_X41_Y29_N21
\A_DataPath|TemporizadorCarregamento|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[9]~59_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(9));

-- Location: LCFF_X41_Y28_N19
\A_DataPath|TemporizadorCarregamento|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[24]~89_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(24));

-- Location: LCFF_X41_Y28_N21
\A_DataPath|TemporizadorCarregamento|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[25]~91_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(25));

-- Location: LCFF_X41_Y28_N23
\A_DataPath|TemporizadorCarregamento|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[26]~93_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(26));

-- Location: LCFF_X41_Y28_N25
\A_DataPath|TemporizadorCarregamento|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[27]~95_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(27));

-- Location: LCFF_X41_Y28_N27
\A_DataPath|TemporizadorCarregamento|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[28]~97_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(28));

-- Location: LCFF_X41_Y28_N29
\A_DataPath|TemporizadorCarregamento|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[29]~99_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(29));

-- Location: LCFF_X41_Y28_N31
\A_DataPath|TemporizadorCarregamento|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[30]~101_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(30));

-- Location: LCFF_X37_Y32_N11
\A_DataPath|TemporizadorDescarregamento|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[4]~39_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(4));

-- Location: LCFF_X37_Y32_N13
\A_DataPath|TemporizadorDescarregamento|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[5]~41_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(5));

-- Location: LCFF_X37_Y32_N17
\A_DataPath|TemporizadorDescarregamento|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[7]~45_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(7));

-- Location: LCFF_X37_Y32_N21
\A_DataPath|TemporizadorDescarregamento|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[9]~49_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(9));

-- Location: LCFF_X37_Y31_N25
\A_DataPath|TemporizadorDescarregamento|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[27]~85_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(27));

-- Location: LCFF_X37_Y31_N31
\A_DataPath|TemporizadorDescarregamento|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[30]~91_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(30));

-- Location: LCCOMB_X37_Y29_N12
\A_DataPath|TemporizadorAquecimento|count[5]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[5]~41_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(5) & (!\A_DataPath|TemporizadorAquecimento|count[4]~40\)) # (!\A_DataPath|TemporizadorAquecimento|count\(5) & 
-- ((\A_DataPath|TemporizadorAquecimento|count[4]~40\) # (GND)))
-- \A_DataPath|TemporizadorAquecimento|count[5]~42\ = CARRY((!\A_DataPath|TemporizadorAquecimento|count[4]~40\) # (!\A_DataPath|TemporizadorAquecimento|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|count\(5),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[4]~40\,
	combout => \A_DataPath|TemporizadorAquecimento|count[5]~41_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[5]~42\);

-- Location: LCCOMB_X37_Y29_N20
\A_DataPath|TemporizadorAquecimento|count[9]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[9]~49_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(9) & (!\A_DataPath|TemporizadorAquecimento|count[8]~48\)) # (!\A_DataPath|TemporizadorAquecimento|count\(9) & 
-- ((\A_DataPath|TemporizadorAquecimento|count[8]~48\) # (GND)))
-- \A_DataPath|TemporizadorAquecimento|count[9]~50\ = CARRY((!\A_DataPath|TemporizadorAquecimento|count[8]~48\) # (!\A_DataPath|TemporizadorAquecimento|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|count\(9),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[8]~48\,
	combout => \A_DataPath|TemporizadorAquecimento|count[9]~49_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[9]~50\);

-- Location: LCCOMB_X37_Y28_N6
\A_DataPath|TemporizadorAquecimento|count[18]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[18]~67_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(18) & (\A_DataPath|TemporizadorAquecimento|count[17]~66\ $ (GND))) # (!\A_DataPath|TemporizadorAquecimento|count\(18) & 
-- (!\A_DataPath|TemporizadorAquecimento|count[17]~66\ & VCC))
-- \A_DataPath|TemporizadorAquecimento|count[18]~68\ = CARRY((\A_DataPath|TemporizadorAquecimento|count\(18) & !\A_DataPath|TemporizadorAquecimento|count[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|count\(18),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[17]~66\,
	combout => \A_DataPath|TemporizadorAquecimento|count[18]~67_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[18]~68\);

-- Location: LCCOMB_X37_Y28_N10
\A_DataPath|TemporizadorAquecimento|count[20]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[20]~71_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(20) & (\A_DataPath|TemporizadorAquecimento|count[19]~70\ $ (GND))) # (!\A_DataPath|TemporizadorAquecimento|count\(20) & 
-- (!\A_DataPath|TemporizadorAquecimento|count[19]~70\ & VCC))
-- \A_DataPath|TemporizadorAquecimento|count[20]~72\ = CARRY((\A_DataPath|TemporizadorAquecimento|count\(20) & !\A_DataPath|TemporizadorAquecimento|count[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|count\(20),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[19]~70\,
	combout => \A_DataPath|TemporizadorAquecimento|count[20]~71_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[20]~72\);

-- Location: LCCOMB_X37_Y28_N20
\A_DataPath|TemporizadorAquecimento|count[25]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[25]~81_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(25) & (!\A_DataPath|TemporizadorAquecimento|count[24]~80\)) # (!\A_DataPath|TemporizadorAquecimento|count\(25) & 
-- ((\A_DataPath|TemporizadorAquecimento|count[24]~80\) # (GND)))
-- \A_DataPath|TemporizadorAquecimento|count[25]~82\ = CARRY((!\A_DataPath|TemporizadorAquecimento|count[24]~80\) # (!\A_DataPath|TemporizadorAquecimento|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|count\(25),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[24]~80\,
	combout => \A_DataPath|TemporizadorAquecimento|count[25]~81_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[25]~82\);

-- Location: LCCOMB_X37_Y28_N28
\A_DataPath|TemporizadorAquecimento|count[29]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[29]~89_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(29) & (!\A_DataPath|TemporizadorAquecimento|count[28]~88\)) # (!\A_DataPath|TemporizadorAquecimento|count\(29) & 
-- ((\A_DataPath|TemporizadorAquecimento|count[28]~88\) # (GND)))
-- \A_DataPath|TemporizadorAquecimento|count[29]~90\ = CARRY((!\A_DataPath|TemporizadorAquecimento|count[28]~88\) # (!\A_DataPath|TemporizadorAquecimento|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorAquecimento|count\(29),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[28]~88\,
	combout => \A_DataPath|TemporizadorAquecimento|count[29]~89_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[29]~90\);

-- Location: LCCOMB_X37_Y28_N30
\A_DataPath|TemporizadorAquecimento|count[30]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[30]~91_combout\ = \A_DataPath|TemporizadorAquecimento|count[29]~90\ $ (!\A_DataPath|TemporizadorAquecimento|count\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \A_DataPath|TemporizadorAquecimento|count\(30),
	cin => \A_DataPath|TemporizadorAquecimento|count[29]~90\,
	combout => \A_DataPath|TemporizadorAquecimento|count[30]~91_combout\);

-- Location: LCCOMB_X41_Y29_N20
\A_DataPath|TemporizadorCarregamento|count[9]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[9]~59_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(9) & (!\A_DataPath|TemporizadorCarregamento|count[8]~58\)) # (!\A_DataPath|TemporizadorCarregamento|count\(9) & 
-- ((\A_DataPath|TemporizadorCarregamento|count[8]~58\) # (GND)))
-- \A_DataPath|TemporizadorCarregamento|count[9]~60\ = CARRY((!\A_DataPath|TemporizadorCarregamento|count[8]~58\) # (!\A_DataPath|TemporizadorCarregamento|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|count\(9),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[8]~58\,
	combout => \A_DataPath|TemporizadorCarregamento|count[9]~59_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[9]~60\);

-- Location: LCCOMB_X41_Y28_N16
\A_DataPath|TemporizadorCarregamento|count[23]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[23]~87_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(23) & (!\A_DataPath|TemporizadorCarregamento|count[22]~86\)) # (!\A_DataPath|TemporizadorCarregamento|count\(23) & 
-- ((\A_DataPath|TemporizadorCarregamento|count[22]~86\) # (GND)))
-- \A_DataPath|TemporizadorCarregamento|count[23]~88\ = CARRY((!\A_DataPath|TemporizadorCarregamento|count[22]~86\) # (!\A_DataPath|TemporizadorCarregamento|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|count\(23),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[22]~86\,
	combout => \A_DataPath|TemporizadorCarregamento|count[23]~87_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[23]~88\);

-- Location: LCCOMB_X41_Y28_N18
\A_DataPath|TemporizadorCarregamento|count[24]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[24]~89_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(24) & (\A_DataPath|TemporizadorCarregamento|count[23]~88\ $ (GND))) # (!\A_DataPath|TemporizadorCarregamento|count\(24) & 
-- (!\A_DataPath|TemporizadorCarregamento|count[23]~88\ & VCC))
-- \A_DataPath|TemporizadorCarregamento|count[24]~90\ = CARRY((\A_DataPath|TemporizadorCarregamento|count\(24) & !\A_DataPath|TemporizadorCarregamento|count[23]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorCarregamento|count\(24),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[23]~88\,
	combout => \A_DataPath|TemporizadorCarregamento|count[24]~89_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[24]~90\);

-- Location: LCCOMB_X41_Y28_N20
\A_DataPath|TemporizadorCarregamento|count[25]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[25]~91_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(25) & (!\A_DataPath|TemporizadorCarregamento|count[24]~90\)) # (!\A_DataPath|TemporizadorCarregamento|count\(25) & 
-- ((\A_DataPath|TemporizadorCarregamento|count[24]~90\) # (GND)))
-- \A_DataPath|TemporizadorCarregamento|count[25]~92\ = CARRY((!\A_DataPath|TemporizadorCarregamento|count[24]~90\) # (!\A_DataPath|TemporizadorCarregamento|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|count\(25),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[24]~90\,
	combout => \A_DataPath|TemporizadorCarregamento|count[25]~91_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[25]~92\);

-- Location: LCCOMB_X41_Y28_N22
\A_DataPath|TemporizadorCarregamento|count[26]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[26]~93_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(26) & (\A_DataPath|TemporizadorCarregamento|count[25]~92\ $ (GND))) # (!\A_DataPath|TemporizadorCarregamento|count\(26) & 
-- (!\A_DataPath|TemporizadorCarregamento|count[25]~92\ & VCC))
-- \A_DataPath|TemporizadorCarregamento|count[26]~94\ = CARRY((\A_DataPath|TemporizadorCarregamento|count\(26) & !\A_DataPath|TemporizadorCarregamento|count[25]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorCarregamento|count\(26),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[25]~92\,
	combout => \A_DataPath|TemporizadorCarregamento|count[26]~93_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[26]~94\);

-- Location: LCCOMB_X41_Y28_N24
\A_DataPath|TemporizadorCarregamento|count[27]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[27]~95_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(27) & (!\A_DataPath|TemporizadorCarregamento|count[26]~94\)) # (!\A_DataPath|TemporizadorCarregamento|count\(27) & 
-- ((\A_DataPath|TemporizadorCarregamento|count[26]~94\) # (GND)))
-- \A_DataPath|TemporizadorCarregamento|count[27]~96\ = CARRY((!\A_DataPath|TemporizadorCarregamento|count[26]~94\) # (!\A_DataPath|TemporizadorCarregamento|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|count\(27),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[26]~94\,
	combout => \A_DataPath|TemporizadorCarregamento|count[27]~95_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[27]~96\);

-- Location: LCCOMB_X41_Y28_N26
\A_DataPath|TemporizadorCarregamento|count[28]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[28]~97_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(28) & (\A_DataPath|TemporizadorCarregamento|count[27]~96\ $ (GND))) # (!\A_DataPath|TemporizadorCarregamento|count\(28) & 
-- (!\A_DataPath|TemporizadorCarregamento|count[27]~96\ & VCC))
-- \A_DataPath|TemporizadorCarregamento|count[28]~98\ = CARRY((\A_DataPath|TemporizadorCarregamento|count\(28) & !\A_DataPath|TemporizadorCarregamento|count[27]~96\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorCarregamento|count\(28),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[27]~96\,
	combout => \A_DataPath|TemporizadorCarregamento|count[28]~97_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[28]~98\);

-- Location: LCCOMB_X41_Y28_N28
\A_DataPath|TemporizadorCarregamento|count[29]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[29]~99_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(29) & (!\A_DataPath|TemporizadorCarregamento|count[28]~98\)) # (!\A_DataPath|TemporizadorCarregamento|count\(29) & 
-- ((\A_DataPath|TemporizadorCarregamento|count[28]~98\) # (GND)))
-- \A_DataPath|TemporizadorCarregamento|count[29]~100\ = CARRY((!\A_DataPath|TemporizadorCarregamento|count[28]~98\) # (!\A_DataPath|TemporizadorCarregamento|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorCarregamento|count\(29),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[28]~98\,
	combout => \A_DataPath|TemporizadorCarregamento|count[29]~99_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[29]~100\);

-- Location: LCCOMB_X41_Y28_N30
\A_DataPath|TemporizadorCarregamento|count[30]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[30]~101_combout\ = \A_DataPath|TemporizadorCarregamento|count[29]~100\ $ (!\A_DataPath|TemporizadorCarregamento|count\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \A_DataPath|TemporizadorCarregamento|count\(30),
	cin => \A_DataPath|TemporizadorCarregamento|count[29]~100\,
	combout => \A_DataPath|TemporizadorCarregamento|count[30]~101_combout\);

-- Location: LCCOMB_X37_Y32_N10
\A_DataPath|TemporizadorDescarregamento|count[4]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[4]~39_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(4) & (\A_DataPath|TemporizadorDescarregamento|count[3]~38\ $ (GND))) # (!\A_DataPath|TemporizadorDescarregamento|count\(4) & 
-- (!\A_DataPath|TemporizadorDescarregamento|count[3]~38\ & VCC))
-- \A_DataPath|TemporizadorDescarregamento|count[4]~40\ = CARRY((\A_DataPath|TemporizadorDescarregamento|count\(4) & !\A_DataPath|TemporizadorDescarregamento|count[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorDescarregamento|count\(4),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[3]~38\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[4]~39_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[4]~40\);

-- Location: LCCOMB_X37_Y32_N12
\A_DataPath|TemporizadorDescarregamento|count[5]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[5]~41_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(5) & (!\A_DataPath|TemporizadorDescarregamento|count[4]~40\)) # (!\A_DataPath|TemporizadorDescarregamento|count\(5) & 
-- ((\A_DataPath|TemporizadorDescarregamento|count[4]~40\) # (GND)))
-- \A_DataPath|TemporizadorDescarregamento|count[5]~42\ = CARRY((!\A_DataPath|TemporizadorDescarregamento|count[4]~40\) # (!\A_DataPath|TemporizadorDescarregamento|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorDescarregamento|count\(5),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[4]~40\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[5]~41_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[5]~42\);

-- Location: LCCOMB_X37_Y32_N16
\A_DataPath|TemporizadorDescarregamento|count[7]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[7]~45_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(7) & (!\A_DataPath|TemporizadorDescarregamento|count[6]~44\)) # (!\A_DataPath|TemporizadorDescarregamento|count\(7) & 
-- ((\A_DataPath|TemporizadorDescarregamento|count[6]~44\) # (GND)))
-- \A_DataPath|TemporizadorDescarregamento|count[7]~46\ = CARRY((!\A_DataPath|TemporizadorDescarregamento|count[6]~44\) # (!\A_DataPath|TemporizadorDescarregamento|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorDescarregamento|count\(7),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[6]~44\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[7]~45_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[7]~46\);

-- Location: LCCOMB_X37_Y32_N20
\A_DataPath|TemporizadorDescarregamento|count[9]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[9]~49_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(9) & (!\A_DataPath|TemporizadorDescarregamento|count[8]~48\)) # (!\A_DataPath|TemporizadorDescarregamento|count\(9) & 
-- ((\A_DataPath|TemporizadorDescarregamento|count[8]~48\) # (GND)))
-- \A_DataPath|TemporizadorDescarregamento|count[9]~50\ = CARRY((!\A_DataPath|TemporizadorDescarregamento|count[8]~48\) # (!\A_DataPath|TemporizadorDescarregamento|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorDescarregamento|count\(9),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[8]~48\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[9]~49_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[9]~50\);

-- Location: LCCOMB_X37_Y31_N24
\A_DataPath|TemporizadorDescarregamento|count[27]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[27]~85_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(27) & (!\A_DataPath|TemporizadorDescarregamento|count[26]~84\)) # (!\A_DataPath|TemporizadorDescarregamento|count\(27) & 
-- ((\A_DataPath|TemporizadorDescarregamento|count[26]~84\) # (GND)))
-- \A_DataPath|TemporizadorDescarregamento|count[27]~86\ = CARRY((!\A_DataPath|TemporizadorDescarregamento|count[26]~84\) # (!\A_DataPath|TemporizadorDescarregamento|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorDescarregamento|count\(27),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[26]~84\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[27]~85_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[27]~86\);

-- Location: LCCOMB_X37_Y31_N28
\A_DataPath|TemporizadorDescarregamento|count[29]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[29]~89_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(29) & (!\A_DataPath|TemporizadorDescarregamento|count[28]~88\)) # (!\A_DataPath|TemporizadorDescarregamento|count\(29) & 
-- ((\A_DataPath|TemporizadorDescarregamento|count[28]~88\) # (GND)))
-- \A_DataPath|TemporizadorDescarregamento|count[29]~90\ = CARRY((!\A_DataPath|TemporizadorDescarregamento|count[28]~88\) # (!\A_DataPath|TemporizadorDescarregamento|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorDescarregamento|count\(29),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[28]~88\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[29]~89_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[29]~90\);

-- Location: LCCOMB_X37_Y31_N30
\A_DataPath|TemporizadorDescarregamento|count[30]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[30]~91_combout\ = \A_DataPath|TemporizadorDescarregamento|count[29]~90\ $ (!\A_DataPath|TemporizadorDescarregamento|count\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \A_DataPath|TemporizadorDescarregamento|count\(30),
	cin => \A_DataPath|TemporizadorDescarregamento|count[29]~90\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[30]~91_combout\);

-- Location: LCFF_X47_Y31_N5
\A_DataPath|A_RegPeso|conteudo[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \PesoMedido~combout\(5),
	sload => VCC,
	ena => \B_Controladora|LdPeso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|A_RegPeso|conteudo\(5));

-- Location: LCFF_X47_Y31_N13
\A_DataPath|A_RegPeso|conteudo[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \PesoMedido~combout\(10),
	sload => VCC,
	ena => \B_Controladora|LdPeso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|A_RegPeso|conteudo\(10));

-- Location: LCFF_X47_Y31_N25
\A_DataPath|A_RegPeso|conteudo[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|A_RegPeso|conteudo[2]~feeder_combout\,
	ena => \B_Controladora|LdPeso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|A_RegPeso|conteudo\(2));

-- Location: LCCOMB_X64_Y31_N28
\A_DataPath|M_ComparadorTemperaturaMax|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~0_combout\ = (\TemperaturaForno~combout\(10) & ((\TemperaturaForno~combout\(8)) # ((\TemperaturaForno~combout\(7)) # (\TemperaturaForno~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TemperaturaForno~combout\(8),
	datab => \TemperaturaForno~combout\(7),
	datac => \TemperaturaForno~combout\(9),
	datad => \TemperaturaForno~combout\(10),
	combout => \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~0_combout\);

-- Location: LCCOMB_X64_Y31_N18
\A_DataPath|M_ComparadorTemperaturaMax|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~1_combout\ = (\TemperaturaForno~combout\(3) & \TemperaturaForno~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TemperaturaForno~combout\(3),
	datad => \TemperaturaForno~combout\(2),
	combout => \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~1_combout\);

-- Location: LCCOMB_X64_Y31_N12
\A_DataPath|M_ComparadorTemperaturaMax|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~2_combout\ = (\TemperaturaForno~combout\(6) & (\TemperaturaForno~combout\(10) & (\TemperaturaForno~combout\(4) & \TemperaturaForno~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TemperaturaForno~combout\(6),
	datab => \TemperaturaForno~combout\(10),
	datac => \TemperaturaForno~combout\(4),
	datad => \TemperaturaForno~combout\(5),
	combout => \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~2_combout\);

-- Location: LCCOMB_X64_Y31_N26
\A_DataPath|M_ComparadorTemperaturaMax|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~3_combout\ = (\A_DataPath|M_ComparadorTemperaturaMax|LessThan0~2_combout\ & (\A_DataPath|M_ComparadorTemperaturaMax|LessThan0~1_combout\ & (\TemperaturaForno~combout\(1) & \TemperaturaForno~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~2_combout\,
	datab => \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~1_combout\,
	datac => \TemperaturaForno~combout\(1),
	datad => \TemperaturaForno~combout\(0),
	combout => \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~3_combout\);

-- Location: LCCOMB_X64_Y31_N4
\A_DataPath|M_ComparadorTemperaturaMax|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~5_combout\ = ((\A_DataPath|M_ComparadorTemperaturaMax|LessThan0~3_combout\) # ((\TemperaturaForno~combout\(15)) # (\A_DataPath|M_ComparadorTemperaturaMax|LessThan0~0_combout\))) # 
-- (!\A_DataPath|M_ComparadorTemperaturaMax|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~4_combout\,
	datab => \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~3_combout\,
	datac => \TemperaturaForno~combout\(15),
	datad => \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~0_combout\,
	combout => \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~5_combout\);

-- Location: LCCOMB_X38_Y31_N16
\B_Controladora|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|Selector10~0_combout\ = (!\BotaoDescarregar~combout\ & \B_Controladora|estado_atual.S14~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BotaoDescarregar~combout\,
	datad => \B_Controladora|estado_atual.S14~regout\,
	combout => \B_Controladora|Selector10~0_combout\);

-- Location: LCFF_X44_Y31_N15
\A_DataPath|H_RegAuxQtdProcessada|conteudo[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|H_RegAuxQtdProcessada|conteudo[1]~feeder_combout\,
	ena => \B_Controladora|estado_atual.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(1));

-- Location: LCFF_X44_Y31_N3
\A_DataPath|H_RegAuxQtdProcessada|conteudo[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|I_RegQtdProcessada|conteudo\(4),
	sload => VCC,
	ena => \B_Controladora|estado_atual.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(4));

-- Location: LCFF_X44_Y31_N31
\A_DataPath|H_RegAuxQtdProcessada|conteudo[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|H_RegAuxQtdProcessada|conteudo[6]~feeder_combout\,
	ena => \B_Controladora|estado_atual.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(6));

-- Location: LCFF_X44_Y31_N21
\A_DataPath|H_RegAuxQtdProcessada|conteudo[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|H_RegAuxQtdProcessada|conteudo[9]~feeder_combout\,
	ena => \B_Controladora|estado_atual.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(9));

-- Location: LCFF_X44_Y31_N9
\A_DataPath|H_RegAuxQtdProcessada|conteudo[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|I_RegQtdProcessada|conteudo\(11),
	sload => VCC,
	ena => \B_Controladora|estado_atual.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(11));

-- Location: LCFF_X44_Y31_N11
\A_DataPath|H_RegAuxQtdProcessada|conteudo[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|H_RegAuxQtdProcessada|conteudo[12]~feeder_combout\,
	ena => \B_Controladora|estado_atual.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(12));

-- Location: LCFF_X44_Y31_N13
\A_DataPath|H_RegAuxQtdProcessada|conteudo[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|I_RegQtdProcessada|conteudo\(13),
	sload => VCC,
	ena => \B_Controladora|estado_atual.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(13));

-- Location: LCFF_X44_Y26_N31
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|F_RegAuxNivelCombustivel|conteudo[1]~feeder_combout\,
	ena => \B_Controladora|estado_atual.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(1));

-- Location: LCFF_X44_Y26_N1
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|F_RegAuxNivelCombustivel|conteudo[2]~feeder_combout\,
	ena => \B_Controladora|estado_atual.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(2));

-- Location: LCFF_X44_Y26_N15
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|F_RegAuxNivelCombustivel|conteudo[3]~feeder_combout\,
	ena => \B_Controladora|estado_atual.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(3));

-- Location: LCFF_X44_Y26_N3
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|G_RegNivelCombustivel|conteudo\(6),
	sload => VCC,
	ena => \B_Controladora|estado_atual.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(6));

-- Location: LCFF_X44_Y26_N9
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|G_RegNivelCombustivel|conteudo\(7),
	sload => VCC,
	ena => \B_Controladora|estado_atual.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(7));

-- Location: LCFF_X44_Y26_N13
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|F_RegAuxNivelCombustivel|conteudo[11]~feeder_combout\,
	ena => \B_Controladora|estado_atual.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(11));

-- Location: LCFF_X44_Y26_N11
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|F_RegAuxNivelCombustivel|conteudo[12]~feeder_combout\,
	ena => \B_Controladora|estado_atual.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(12));

-- Location: LCCOMB_X38_Y28_N6
\A_DataPath|TemporizadorAquecimento|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|LessThan0~3_combout\ = (!\A_DataPath|TemporizadorAquecimento|count\(19) & (!\A_DataPath|TemporizadorAquecimento|count\(18) & (!\A_DataPath|TemporizadorAquecimento|count\(20) & 
-- !\A_DataPath|TemporizadorAquecimento|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|count\(19),
	datab => \A_DataPath|TemporizadorAquecimento|count\(18),
	datac => \A_DataPath|TemporizadorAquecimento|count\(20),
	datad => \A_DataPath|TemporizadorAquecimento|count\(17),
	combout => \A_DataPath|TemporizadorAquecimento|LessThan0~3_combout\);

-- Location: LCCOMB_X38_Y28_N12
\A_DataPath|TemporizadorAquecimento|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|LessThan0~8_combout\ = (\A_DataPath|TemporizadorAquecimento|LessThan0~7_combout\ & \A_DataPath|TemporizadorAquecimento|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_DataPath|TemporizadorAquecimento|LessThan0~7_combout\,
	datad => \A_DataPath|TemporizadorAquecimento|LessThan0~4_combout\,
	combout => \A_DataPath|TemporizadorAquecimento|LessThan0~8_combout\);

-- Location: LCCOMB_X40_Y28_N24
\A_DataPath|TemporizadorCarregamento|count[6]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[6]~33_combout\ = (!\A_DataPath|TemporizadorCarregamento|count\(13) & (!\A_DataPath|TemporizadorCarregamento|count\(15) & (!\A_DataPath|TemporizadorCarregamento|count\(12) & 
-- !\A_DataPath|TemporizadorCarregamento|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|count\(13),
	datab => \A_DataPath|TemporizadorCarregamento|count\(15),
	datac => \A_DataPath|TemporizadorCarregamento|count\(12),
	datad => \A_DataPath|TemporizadorCarregamento|count\(14),
	combout => \A_DataPath|TemporizadorCarregamento|count[6]~33_combout\);

-- Location: LCCOMB_X40_Y28_N6
\A_DataPath|TemporizadorCarregamento|count[6]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[6]~37_combout\ = (!\A_DataPath|TemporizadorCarregamento|count\(26) & (!\A_DataPath|TemporizadorCarregamento|count\(24) & (!\A_DataPath|TemporizadorCarregamento|count\(25) & 
-- !\A_DataPath|TemporizadorCarregamento|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|count\(26),
	datab => \A_DataPath|TemporizadorCarregamento|count\(24),
	datac => \A_DataPath|TemporizadorCarregamento|count\(25),
	datad => \A_DataPath|TemporizadorCarregamento|count\(27),
	combout => \A_DataPath|TemporizadorCarregamento|count[6]~37_combout\);

-- Location: LCCOMB_X40_Y28_N20
\A_DataPath|TemporizadorCarregamento|count[6]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[6]~38_combout\ = (!\A_DataPath|TemporizadorCarregamento|count\(30) & (!\A_DataPath|TemporizadorCarregamento|count\(29) & (!\A_DataPath|TemporizadorCarregamento|count\(28) & 
-- \A_DataPath|TemporizadorCarregamento|count[6]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|count\(30),
	datab => \A_DataPath|TemporizadorCarregamento|count\(29),
	datac => \A_DataPath|TemporizadorCarregamento|count\(28),
	datad => \A_DataPath|TemporizadorCarregamento|count[6]~37_combout\,
	combout => \A_DataPath|TemporizadorCarregamento|count[6]~38_combout\);

-- Location: LCCOMB_X37_Y32_N0
\A_DataPath|TemporizadorDescarregamento|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|LessThan0~0_combout\ = (!\A_DataPath|TemporizadorDescarregamento|count\(4) & (!\A_DataPath|TemporizadorDescarregamento|count\(6) & (!\A_DataPath|TemporizadorDescarregamento|count\(7) & 
-- !\A_DataPath|TemporizadorDescarregamento|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorDescarregamento|count\(4),
	datab => \A_DataPath|TemporizadorDescarregamento|count\(6),
	datac => \A_DataPath|TemporizadorDescarregamento|count\(7),
	datad => \A_DataPath|TemporizadorDescarregamento|count\(5),
	combout => \A_DataPath|TemporizadorDescarregamento|LessThan0~0_combout\);

-- Location: LCCOMB_X38_Y32_N24
\A_DataPath|TemporizadorDescarregamento|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|LessThan1~0_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(2) & \A_DataPath|TemporizadorDescarregamento|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_DataPath|TemporizadorDescarregamento|count\(2),
	datad => \A_DataPath|TemporizadorDescarregamento|count\(3),
	combout => \A_DataPath|TemporizadorDescarregamento|LessThan1~0_combout\);

-- Location: LCCOMB_X64_Y31_N2
\A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~0_combout\ = (\TemperaturaForno~combout\(2)) # ((\TemperaturaForno~combout\(3)) # ((\TemperaturaForno~combout\(1)) # (\TemperaturaForno~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TemperaturaForno~combout\(2),
	datab => \TemperaturaForno~combout\(3),
	datac => \TemperaturaForno~combout\(1),
	datad => \TemperaturaForno~combout\(0),
	combout => \A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~0_combout\);

-- Location: LCCOMB_X64_Y31_N16
\A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~1_combout\ = (\TemperaturaForno~combout\(7)) # ((\TemperaturaForno~combout\(5) & ((\TemperaturaForno~combout\(4)) # (\A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TemperaturaForno~combout\(5),
	datab => \TemperaturaForno~combout\(7),
	datac => \TemperaturaForno~combout\(4),
	datad => \A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~0_combout\,
	combout => \A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~1_combout\);

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TemperaturaForno[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TemperaturaForno(7),
	combout => \TemperaturaForno~combout\(7));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TemperaturaForno[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TemperaturaForno(0),
	combout => \TemperaturaForno~combout\(0));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TemperaturaForno[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TemperaturaForno(1),
	combout => \TemperaturaForno~combout\(1));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TemperaturaForno[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TemperaturaForno(2),
	combout => \TemperaturaForno~combout\(2));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TemperaturaForno[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TemperaturaForno(3),
	combout => \TemperaturaForno~combout\(3));

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TemperaturaForno[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TemperaturaForno(4),
	combout => \TemperaturaForno~combout\(4));

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TemperaturaForno[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TemperaturaForno(5),
	combout => \TemperaturaForno~combout\(5));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TemperaturaForno[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TemperaturaForno(13),
	combout => \TemperaturaForno~combout\(13));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PesoMedido[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PesoMedido(2),
	combout => \PesoMedido~combout\(2));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk1ms~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Clk1ms,
	combout => \Clk1ms~combout\);

-- Location: CLKCTRL_G1
\Clk1ms~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk1ms~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk1ms~clkctrl_outclk\);

-- Location: LCCOMB_X44_Y31_N14
\A_DataPath|H_RegAuxQtdProcessada|conteudo[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|H_RegAuxQtdProcessada|conteudo[1]~feeder_combout\ = \A_DataPath|I_RegQtdProcessada|conteudo\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A_DataPath|I_RegQtdProcessada|conteudo\(1),
	combout => \A_DataPath|H_RegAuxQtdProcessada|conteudo[1]~feeder_combout\);

-- Location: LCCOMB_X44_Y31_N30
\A_DataPath|H_RegAuxQtdProcessada|conteudo[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|H_RegAuxQtdProcessada|conteudo[6]~feeder_combout\ = \A_DataPath|I_RegQtdProcessada|conteudo\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A_DataPath|I_RegQtdProcessada|conteudo\(6),
	combout => \A_DataPath|H_RegAuxQtdProcessada|conteudo[6]~feeder_combout\);

-- Location: LCCOMB_X44_Y31_N20
\A_DataPath|H_RegAuxQtdProcessada|conteudo[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|H_RegAuxQtdProcessada|conteudo[9]~feeder_combout\ = \A_DataPath|I_RegQtdProcessada|conteudo\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A_DataPath|I_RegQtdProcessada|conteudo\(9),
	combout => \A_DataPath|H_RegAuxQtdProcessada|conteudo[9]~feeder_combout\);

-- Location: LCCOMB_X44_Y31_N10
\A_DataPath|H_RegAuxQtdProcessada|conteudo[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|H_RegAuxQtdProcessada|conteudo[12]~feeder_combout\ = \A_DataPath|I_RegQtdProcessada|conteudo\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A_DataPath|I_RegQtdProcessada|conteudo\(12),
	combout => \A_DataPath|H_RegAuxQtdProcessada|conteudo[12]~feeder_combout\);

-- Location: LCCOMB_X44_Y26_N30
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|F_RegAuxNivelCombustivel|conteudo[1]~feeder_combout\ = \A_DataPath|G_RegNivelCombustivel|conteudo\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A_DataPath|G_RegNivelCombustivel|conteudo\(1),
	combout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo[1]~feeder_combout\);

-- Location: LCCOMB_X44_Y26_N0
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|F_RegAuxNivelCombustivel|conteudo[2]~feeder_combout\ = \A_DataPath|G_RegNivelCombustivel|conteudo\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A_DataPath|G_RegNivelCombustivel|conteudo\(2),
	combout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo[2]~feeder_combout\);

-- Location: LCCOMB_X44_Y26_N14
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|F_RegAuxNivelCombustivel|conteudo[3]~feeder_combout\ = \A_DataPath|G_RegNivelCombustivel|conteudo\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A_DataPath|G_RegNivelCombustivel|conteudo\(3),
	combout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo[3]~feeder_combout\);

-- Location: LCCOMB_X44_Y26_N12
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|F_RegAuxNivelCombustivel|conteudo[11]~feeder_combout\ = \A_DataPath|G_RegNivelCombustivel|conteudo\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A_DataPath|G_RegNivelCombustivel|conteudo\(11),
	combout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo[11]~feeder_combout\);

-- Location: LCCOMB_X44_Y26_N10
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|F_RegAuxNivelCombustivel|conteudo[12]~feeder_combout\ = \A_DataPath|G_RegNivelCombustivel|conteudo\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A_DataPath|G_RegNivelCombustivel|conteudo\(12),
	combout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo[12]~feeder_combout\);

-- Location: LCCOMB_X47_Y31_N24
\A_DataPath|A_RegPeso|conteudo[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|A_RegPeso|conteudo[2]~feeder_combout\ = \PesoMedido~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PesoMedido~combout\(2),
	combout => \A_DataPath|A_RegPeso|conteudo[2]~feeder_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Clk,
	combout => \Clk~combout\);

-- Location: CLKCTRL_G3
\Clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~clkctrl_outclk\);

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PesoMedido[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PesoMedido(14),
	combout => \PesoMedido~combout\(14));

-- Location: LCCOMB_X47_Y31_N0
\A_DataPath|A_RegPeso|conteudo[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|A_RegPeso|conteudo[14]~feeder_combout\ = \PesoMedido~combout\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PesoMedido~combout\(14),
	combout => \A_DataPath|A_RegPeso|conteudo[14]~feeder_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BotaoCombustivelCheio~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_BotaoCombustivelCheio,
	combout => \BotaoCombustivelCheio~combout\);

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BotaoManutencaoFeita~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_BotaoManutencaoFeita,
	combout => \BotaoManutencaoFeita~combout\);

-- Location: LCCOMB_X46_Y31_N2
\B_Controladora|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|Selector1~0_combout\ = (!\BotaoCombustivelCheio~combout\ & (!\BotaoManutencaoFeita~combout\ & \B_Controladora|estado_atual.S2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BotaoCombustivelCheio~combout\,
	datac => \BotaoManutencaoFeita~combout\,
	datad => \B_Controladora|estado_atual.S2~regout\,
	combout => \B_Controladora|Selector1~0_combout\);

-- Location: LCCOMB_X46_Y31_N4
\B_Controladora|estado_atual.S0~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|estado_atual.S0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \B_Controladora|estado_atual.S0~feeder_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ClrControladora~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ClrControladora,
	combout => \ClrControladora~combout\);

-- Location: CLKCTRL_G2
\ClrControladora~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ClrControladora~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ClrControladora~clkctrl_outclk\);

-- Location: LCFF_X46_Y31_N5
\B_Controladora|estado_atual.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \B_Controladora|estado_atual.S0~feeder_combout\,
	aclr => \ClrControladora~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B_Controladora|estado_atual.S0~regout\);

-- Location: LCCOMB_X46_Y31_N14
\B_Controladora|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|Selector0~0_combout\ = ((\BotaoManutencaoFeita~combout\ & \B_Controladora|estado_atual.S2~regout\)) # (!\B_Controladora|estado_atual.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_Controladora|estado_atual.S0~regout\,
	datac => \BotaoManutencaoFeita~combout\,
	datad => \B_Controladora|estado_atual.S2~regout\,
	combout => \B_Controladora|Selector0~0_combout\);

-- Location: LCFF_X46_Y31_N15
\B_Controladora|estado_atual.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \B_Controladora|Selector0~0_combout\,
	aclr => \ClrControladora~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B_Controladora|estado_atual.S1~regout\);

-- Location: LCCOMB_X46_Y31_N22
\B_Controladora|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|Selector2~0_combout\ = (\BotaoCombustivelCheio~combout\ & ((\B_Controladora|estado_atual.S6~regout\) # ((\B_Controladora|estado_atual.S2~regout\ & !\BotaoManutencaoFeita~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Controladora|estado_atual.S6~regout\,
	datab => \B_Controladora|estado_atual.S2~regout\,
	datac => \BotaoManutencaoFeita~combout\,
	datad => \BotaoCombustivelCheio~combout\,
	combout => \B_Controladora|Selector2~0_combout\);

-- Location: LCFF_X46_Y31_N23
\B_Controladora|estado_atual.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \B_Controladora|Selector2~0_combout\,
	aclr => \ClrControladora~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B_Controladora|estado_atual.S3~regout\);

-- Location: LCCOMB_X46_Y31_N0
\B_Controladora|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|Selector1~1_combout\ = (\B_Controladora|estado_atual.S1~regout\) # ((\B_Controladora|estado_atual.S3~regout\) # ((!\BotaoPesar~combout\ & \B_Controladora|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BotaoPesar~combout\,
	datab => \B_Controladora|Selector1~0_combout\,
	datac => \B_Controladora|estado_atual.S1~regout\,
	datad => \B_Controladora|estado_atual.S3~regout\,
	combout => \B_Controladora|Selector1~1_combout\);

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TemperaturaForno[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TemperaturaForno(9),
	combout => \TemperaturaForno~combout\(9));

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TemperaturaForno[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TemperaturaForno(6),
	combout => \TemperaturaForno~combout\(6));

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TemperaturaForno[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TemperaturaForno(8),
	combout => \TemperaturaForno~combout\(8));

-- Location: LCCOMB_X64_Y31_N6
\A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~2_combout\ = (\TemperaturaForno~combout\(9) & (\TemperaturaForno~combout\(8) & ((\A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~1_combout\) # (\TemperaturaForno~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~1_combout\,
	datab => \TemperaturaForno~combout\(9),
	datac => \TemperaturaForno~combout\(6),
	datad => \TemperaturaForno~combout\(8),
	combout => \A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~2_combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BotaoLiga~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_BotaoLiga,
	combout => \BotaoLiga~combout\);

-- Location: LCCOMB_X41_Y29_N2
\A_DataPath|TemporizadorCarregamento|count[0]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[0]~39_combout\ = \A_DataPath|TemporizadorCarregamento|count\(0) $ (VCC)
-- \A_DataPath|TemporizadorCarregamento|count[0]~40\ = CARRY(\A_DataPath|TemporizadorCarregamento|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorCarregamento|count\(0),
	datad => VCC,
	combout => \A_DataPath|TemporizadorCarregamento|count[0]~39_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[0]~40\);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BotaoCarregar~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_BotaoCarregar,
	combout => \BotaoCarregar~combout\);

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PesoMedido[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PesoMedido(11),
	combout => \PesoMedido~combout\(11));

-- Location: LCFF_X47_Y31_N23
\A_DataPath|A_RegPeso|conteudo[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \PesoMedido~combout\(11),
	sload => VCC,
	ena => \B_Controladora|LdPeso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|A_RegPeso|conteudo\(11));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PesoMedido[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PesoMedido(9),
	combout => \PesoMedido~combout\(9));

-- Location: LCFF_X47_Y31_N31
\A_DataPath|A_RegPeso|conteudo[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \PesoMedido~combout\(9),
	sload => VCC,
	ena => \B_Controladora|LdPeso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|A_RegPeso|conteudo\(9));

-- Location: LCCOMB_X47_Y31_N22
\A_DataPath|D_ComparadorPeso|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|D_ComparadorPeso|LessThan0~0_combout\ = (\A_DataPath|A_RegPeso|conteudo\(10) & (\A_DataPath|A_RegPeso|conteudo\(14) & (\A_DataPath|A_RegPeso|conteudo\(11) & \A_DataPath|A_RegPeso|conteudo\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|A_RegPeso|conteudo\(10),
	datab => \A_DataPath|A_RegPeso|conteudo\(14),
	datac => \A_DataPath|A_RegPeso|conteudo\(11),
	datad => \A_DataPath|A_RegPeso|conteudo\(9),
	combout => \A_DataPath|D_ComparadorPeso|LessThan0~0_combout\);

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PesoMedido[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PesoMedido(8),
	combout => \PesoMedido~combout\(8));

-- Location: LCFF_X47_Y31_N21
\A_DataPath|A_RegPeso|conteudo[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \PesoMedido~combout\(8),
	sload => VCC,
	ena => \B_Controladora|LdPeso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|A_RegPeso|conteudo\(8));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PesoMedido[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PesoMedido(7),
	combout => \PesoMedido~combout\(7));

-- Location: LCCOMB_X47_Y31_N6
\A_DataPath|A_RegPeso|conteudo[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|A_RegPeso|conteudo[7]~feeder_combout\ = \PesoMedido~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PesoMedido~combout\(7),
	combout => \A_DataPath|A_RegPeso|conteudo[7]~feeder_combout\);

-- Location: LCFF_X47_Y31_N7
\A_DataPath|A_RegPeso|conteudo[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|A_RegPeso|conteudo[7]~feeder_combout\,
	ena => \B_Controladora|LdPeso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|A_RegPeso|conteudo\(7));

-- Location: LCCOMB_X47_Y31_N20
\A_DataPath|D_ComparadorPeso|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|D_ComparadorPeso|LessThan0~3_combout\ = (\A_DataPath|D_ComparadorPeso|LessThan0~0_combout\ & ((\A_DataPath|A_RegPeso|conteudo\(6)) # ((\A_DataPath|A_RegPeso|conteudo\(8)) # (\A_DataPath|A_RegPeso|conteudo\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|A_RegPeso|conteudo\(6),
	datab => \A_DataPath|D_ComparadorPeso|LessThan0~0_combout\,
	datac => \A_DataPath|A_RegPeso|conteudo\(8),
	datad => \A_DataPath|A_RegPeso|conteudo\(7),
	combout => \A_DataPath|D_ComparadorPeso|LessThan0~3_combout\);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PesoMedido[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PesoMedido(1),
	combout => \PesoMedido~combout\(1));

-- Location: LCCOMB_X47_Y31_N14
\A_DataPath|A_RegPeso|conteudo[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|A_RegPeso|conteudo[1]~feeder_combout\ = \PesoMedido~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PesoMedido~combout\(1),
	combout => \A_DataPath|A_RegPeso|conteudo[1]~feeder_combout\);

-- Location: LCFF_X47_Y31_N15
\A_DataPath|A_RegPeso|conteudo[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|A_RegPeso|conteudo[1]~feeder_combout\,
	ena => \B_Controladora|LdPeso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|A_RegPeso|conteudo\(1));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PesoMedido[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PesoMedido(3),
	combout => \PesoMedido~combout\(3));

-- Location: LCFF_X47_Y31_N3
\A_DataPath|A_RegPeso|conteudo[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \PesoMedido~combout\(3),
	sload => VCC,
	ena => \B_Controladora|LdPeso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|A_RegPeso|conteudo\(3));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PesoMedido[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PesoMedido(0),
	combout => \PesoMedido~combout\(0));

-- Location: LCCOMB_X47_Y31_N28
\A_DataPath|A_RegPeso|conteudo[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|A_RegPeso|conteudo[0]~feeder_combout\ = \PesoMedido~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PesoMedido~combout\(0),
	combout => \A_DataPath|A_RegPeso|conteudo[0]~feeder_combout\);

-- Location: LCFF_X47_Y31_N29
\A_DataPath|A_RegPeso|conteudo[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|A_RegPeso|conteudo[0]~feeder_combout\,
	ena => \B_Controladora|LdPeso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|A_RegPeso|conteudo\(0));

-- Location: LCCOMB_X47_Y31_N2
\A_DataPath|D_ComparadorPeso|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|D_ComparadorPeso|LessThan0~1_combout\ = (\A_DataPath|A_RegPeso|conteudo\(2)) # ((\A_DataPath|A_RegPeso|conteudo\(1)) # ((\A_DataPath|A_RegPeso|conteudo\(3)) # (\A_DataPath|A_RegPeso|conteudo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|A_RegPeso|conteudo\(2),
	datab => \A_DataPath|A_RegPeso|conteudo\(1),
	datac => \A_DataPath|A_RegPeso|conteudo\(3),
	datad => \A_DataPath|A_RegPeso|conteudo\(0),
	combout => \A_DataPath|D_ComparadorPeso|LessThan0~1_combout\);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PesoMedido[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PesoMedido(4),
	combout => \PesoMedido~combout\(4));

-- Location: LCFF_X47_Y31_N11
\A_DataPath|A_RegPeso|conteudo[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \PesoMedido~combout\(4),
	sload => VCC,
	ena => \B_Controladora|LdPeso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|A_RegPeso|conteudo\(4));

-- Location: LCCOMB_X47_Y31_N10
\A_DataPath|D_ComparadorPeso|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|D_ComparadorPeso|LessThan0~2_combout\ = (\A_DataPath|A_RegPeso|conteudo\(5) & (\A_DataPath|D_ComparadorPeso|LessThan0~0_combout\ & ((\A_DataPath|D_ComparadorPeso|LessThan0~1_combout\) # (\A_DataPath|A_RegPeso|conteudo\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|A_RegPeso|conteudo\(5),
	datab => \A_DataPath|D_ComparadorPeso|LessThan0~1_combout\,
	datac => \A_DataPath|A_RegPeso|conteudo\(4),
	datad => \A_DataPath|D_ComparadorPeso|LessThan0~0_combout\,
	combout => \A_DataPath|D_ComparadorPeso|LessThan0~2_combout\);

-- Location: LCCOMB_X47_Y31_N18
\B_Controladora|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|Selector5~0_combout\ = (\B_Controladora|estado_atual.S4~regout\ & (!\A_DataPath|D_ComparadorPeso|LessThan0~4_combout\ & (!\A_DataPath|D_ComparadorPeso|LessThan0~3_combout\ & !\A_DataPath|D_ComparadorPeso|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Controladora|estado_atual.S4~regout\,
	datab => \A_DataPath|D_ComparadorPeso|LessThan0~4_combout\,
	datac => \A_DataPath|D_ComparadorPeso|LessThan0~3_combout\,
	datad => \A_DataPath|D_ComparadorPeso|LessThan0~2_combout\,
	combout => \B_Controladora|Selector5~0_combout\);

-- Location: LCCOMB_X47_Y26_N28
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|F_RegAuxNivelCombustivel|conteudo[14]~feeder_combout\ = \A_DataPath|G_RegNivelCombustivel|conteudo\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A_DataPath|G_RegNivelCombustivel|conteudo\(14),
	combout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo[14]~feeder_combout\);

-- Location: LCFF_X47_Y26_N29
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|F_RegAuxNivelCombustivel|conteudo[14]~feeder_combout\,
	ena => \B_Controladora|estado_atual.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(14));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PesoMedido[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PesoMedido(15),
	combout => \PesoMedido~combout\(15));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PesoMedido[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PesoMedido(12),
	combout => \PesoMedido~combout\(12));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PesoMedido[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PesoMedido(10),
	combout => \PesoMedido~combout\(10));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PesoMedido[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PesoMedido(5),
	combout => \PesoMedido~combout\(5));

-- Location: LCCOMB_X47_Y30_N0
\A_DataPath|E_RegCombustivelNecessario|conteudo[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[0]~14_cout\ = CARRY((\PesoMedido~combout\(1) & \PesoMedido~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PesoMedido~combout\(1),
	datab => \PesoMedido~combout\(0),
	datad => VCC,
	cout => \A_DataPath|E_RegCombustivelNecessario|conteudo[0]~14_cout\);

-- Location: LCCOMB_X47_Y30_N2
\A_DataPath|E_RegCombustivelNecessario|conteudo[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[0]~16_cout\ = CARRY((\PesoMedido~combout\(2) & (!\PesoMedido~combout\(1) & !\A_DataPath|E_RegCombustivelNecessario|conteudo[0]~14_cout\)) # (!\PesoMedido~combout\(2) & 
-- ((!\A_DataPath|E_RegCombustivelNecessario|conteudo[0]~14_cout\) # (!\PesoMedido~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PesoMedido~combout\(2),
	datab => \PesoMedido~combout\(1),
	datad => VCC,
	cin => \A_DataPath|E_RegCombustivelNecessario|conteudo[0]~14_cout\,
	cout => \A_DataPath|E_RegCombustivelNecessario|conteudo[0]~16_cout\);

-- Location: LCCOMB_X47_Y30_N4
\A_DataPath|E_RegCombustivelNecessario|conteudo[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[0]~17_combout\ = ((\PesoMedido~combout\(2) $ (\PesoMedido~combout\(3) $ (!\A_DataPath|E_RegCombustivelNecessario|conteudo[0]~16_cout\)))) # (GND)
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[0]~18\ = CARRY((\PesoMedido~combout\(2) & ((\PesoMedido~combout\(3)) # (!\A_DataPath|E_RegCombustivelNecessario|conteudo[0]~16_cout\))) # (!\PesoMedido~combout\(2) & (\PesoMedido~combout\(3) & 
-- !\A_DataPath|E_RegCombustivelNecessario|conteudo[0]~16_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PesoMedido~combout\(2),
	datab => \PesoMedido~combout\(3),
	datad => VCC,
	cin => \A_DataPath|E_RegCombustivelNecessario|conteudo[0]~16_cout\,
	combout => \A_DataPath|E_RegCombustivelNecessario|conteudo[0]~17_combout\,
	cout => \A_DataPath|E_RegCombustivelNecessario|conteudo[0]~18\);

-- Location: LCCOMB_X47_Y30_N6
\A_DataPath|E_RegCombustivelNecessario|conteudo[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[1]~19_combout\ = (\PesoMedido~combout\(4) & ((\PesoMedido~combout\(3) & (\A_DataPath|E_RegCombustivelNecessario|conteudo[0]~18\ & VCC)) # (!\PesoMedido~combout\(3) & 
-- (!\A_DataPath|E_RegCombustivelNecessario|conteudo[0]~18\)))) # (!\PesoMedido~combout\(4) & ((\PesoMedido~combout\(3) & (!\A_DataPath|E_RegCombustivelNecessario|conteudo[0]~18\)) # (!\PesoMedido~combout\(3) & 
-- ((\A_DataPath|E_RegCombustivelNecessario|conteudo[0]~18\) # (GND)))))
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[1]~20\ = CARRY((\PesoMedido~combout\(4) & (!\PesoMedido~combout\(3) & !\A_DataPath|E_RegCombustivelNecessario|conteudo[0]~18\)) # (!\PesoMedido~combout\(4) & 
-- ((!\A_DataPath|E_RegCombustivelNecessario|conteudo[0]~18\) # (!\PesoMedido~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PesoMedido~combout\(4),
	datab => \PesoMedido~combout\(3),
	datad => VCC,
	cin => \A_DataPath|E_RegCombustivelNecessario|conteudo[0]~18\,
	combout => \A_DataPath|E_RegCombustivelNecessario|conteudo[1]~19_combout\,
	cout => \A_DataPath|E_RegCombustivelNecessario|conteudo[1]~20\);

-- Location: LCCOMB_X47_Y30_N8
\A_DataPath|E_RegCombustivelNecessario|conteudo[2]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[2]~21_combout\ = ((\PesoMedido~combout\(4) $ (\PesoMedido~combout\(5) $ (!\A_DataPath|E_RegCombustivelNecessario|conteudo[1]~20\)))) # (GND)
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[2]~22\ = CARRY((\PesoMedido~combout\(4) & ((\PesoMedido~combout\(5)) # (!\A_DataPath|E_RegCombustivelNecessario|conteudo[1]~20\))) # (!\PesoMedido~combout\(4) & (\PesoMedido~combout\(5) & 
-- !\A_DataPath|E_RegCombustivelNecessario|conteudo[1]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PesoMedido~combout\(4),
	datab => \PesoMedido~combout\(5),
	datad => VCC,
	cin => \A_DataPath|E_RegCombustivelNecessario|conteudo[1]~20\,
	combout => \A_DataPath|E_RegCombustivelNecessario|conteudo[2]~21_combout\,
	cout => \A_DataPath|E_RegCombustivelNecessario|conteudo[2]~22\);

-- Location: LCCOMB_X47_Y30_N10
\A_DataPath|E_RegCombustivelNecessario|conteudo[3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[3]~23_combout\ = (\PesoMedido~combout\(6) & ((\PesoMedido~combout\(5) & (\A_DataPath|E_RegCombustivelNecessario|conteudo[2]~22\ & VCC)) # (!\PesoMedido~combout\(5) & 
-- (!\A_DataPath|E_RegCombustivelNecessario|conteudo[2]~22\)))) # (!\PesoMedido~combout\(6) & ((\PesoMedido~combout\(5) & (!\A_DataPath|E_RegCombustivelNecessario|conteudo[2]~22\)) # (!\PesoMedido~combout\(5) & 
-- ((\A_DataPath|E_RegCombustivelNecessario|conteudo[2]~22\) # (GND)))))
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[3]~24\ = CARRY((\PesoMedido~combout\(6) & (!\PesoMedido~combout\(5) & !\A_DataPath|E_RegCombustivelNecessario|conteudo[2]~22\)) # (!\PesoMedido~combout\(6) & 
-- ((!\A_DataPath|E_RegCombustivelNecessario|conteudo[2]~22\) # (!\PesoMedido~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PesoMedido~combout\(6),
	datab => \PesoMedido~combout\(5),
	datad => VCC,
	cin => \A_DataPath|E_RegCombustivelNecessario|conteudo[2]~22\,
	combout => \A_DataPath|E_RegCombustivelNecessario|conteudo[3]~23_combout\,
	cout => \A_DataPath|E_RegCombustivelNecessario|conteudo[3]~24\);

-- Location: LCCOMB_X47_Y30_N12
\A_DataPath|E_RegCombustivelNecessario|conteudo[4]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[4]~25_combout\ = ((\PesoMedido~combout\(6) $ (\PesoMedido~combout\(7) $ (!\A_DataPath|E_RegCombustivelNecessario|conteudo[3]~24\)))) # (GND)
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[4]~26\ = CARRY((\PesoMedido~combout\(6) & ((\PesoMedido~combout\(7)) # (!\A_DataPath|E_RegCombustivelNecessario|conteudo[3]~24\))) # (!\PesoMedido~combout\(6) & (\PesoMedido~combout\(7) & 
-- !\A_DataPath|E_RegCombustivelNecessario|conteudo[3]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PesoMedido~combout\(6),
	datab => \PesoMedido~combout\(7),
	datad => VCC,
	cin => \A_DataPath|E_RegCombustivelNecessario|conteudo[3]~24\,
	combout => \A_DataPath|E_RegCombustivelNecessario|conteudo[4]~25_combout\,
	cout => \A_DataPath|E_RegCombustivelNecessario|conteudo[4]~26\);

-- Location: LCCOMB_X47_Y30_N16
\A_DataPath|E_RegCombustivelNecessario|conteudo[6]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[6]~29_combout\ = ((\PesoMedido~combout\(9) $ (\PesoMedido~combout\(8) $ (!\A_DataPath|E_RegCombustivelNecessario|conteudo[5]~28\)))) # (GND)
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[6]~30\ = CARRY((\PesoMedido~combout\(9) & ((\PesoMedido~combout\(8)) # (!\A_DataPath|E_RegCombustivelNecessario|conteudo[5]~28\))) # (!\PesoMedido~combout\(9) & (\PesoMedido~combout\(8) & 
-- !\A_DataPath|E_RegCombustivelNecessario|conteudo[5]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PesoMedido~combout\(9),
	datab => \PesoMedido~combout\(8),
	datad => VCC,
	cin => \A_DataPath|E_RegCombustivelNecessario|conteudo[5]~28\,
	combout => \A_DataPath|E_RegCombustivelNecessario|conteudo[6]~29_combout\,
	cout => \A_DataPath|E_RegCombustivelNecessario|conteudo[6]~30\);

-- Location: LCCOMB_X47_Y30_N18
\A_DataPath|E_RegCombustivelNecessario|conteudo[7]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[7]~31_combout\ = (\PesoMedido~combout\(9) & ((\PesoMedido~combout\(10) & (\A_DataPath|E_RegCombustivelNecessario|conteudo[6]~30\ & VCC)) # (!\PesoMedido~combout\(10) & 
-- (!\A_DataPath|E_RegCombustivelNecessario|conteudo[6]~30\)))) # (!\PesoMedido~combout\(9) & ((\PesoMedido~combout\(10) & (!\A_DataPath|E_RegCombustivelNecessario|conteudo[6]~30\)) # (!\PesoMedido~combout\(10) & 
-- ((\A_DataPath|E_RegCombustivelNecessario|conteudo[6]~30\) # (GND)))))
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[7]~32\ = CARRY((\PesoMedido~combout\(9) & (!\PesoMedido~combout\(10) & !\A_DataPath|E_RegCombustivelNecessario|conteudo[6]~30\)) # (!\PesoMedido~combout\(9) & 
-- ((!\A_DataPath|E_RegCombustivelNecessario|conteudo[6]~30\) # (!\PesoMedido~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PesoMedido~combout\(9),
	datab => \PesoMedido~combout\(10),
	datad => VCC,
	cin => \A_DataPath|E_RegCombustivelNecessario|conteudo[6]~30\,
	combout => \A_DataPath|E_RegCombustivelNecessario|conteudo[7]~31_combout\,
	cout => \A_DataPath|E_RegCombustivelNecessario|conteudo[7]~32\);

-- Location: LCCOMB_X47_Y30_N20
\A_DataPath|E_RegCombustivelNecessario|conteudo[8]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[8]~33_combout\ = ((\PesoMedido~combout\(11) $ (\PesoMedido~combout\(10) $ (!\A_DataPath|E_RegCombustivelNecessario|conteudo[7]~32\)))) # (GND)
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[8]~34\ = CARRY((\PesoMedido~combout\(11) & ((\PesoMedido~combout\(10)) # (!\A_DataPath|E_RegCombustivelNecessario|conteudo[7]~32\))) # (!\PesoMedido~combout\(11) & (\PesoMedido~combout\(10) & 
-- !\A_DataPath|E_RegCombustivelNecessario|conteudo[7]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PesoMedido~combout\(11),
	datab => \PesoMedido~combout\(10),
	datad => VCC,
	cin => \A_DataPath|E_RegCombustivelNecessario|conteudo[7]~32\,
	combout => \A_DataPath|E_RegCombustivelNecessario|conteudo[8]~33_combout\,
	cout => \A_DataPath|E_RegCombustivelNecessario|conteudo[8]~34\);

-- Location: LCCOMB_X47_Y30_N24
\A_DataPath|E_RegCombustivelNecessario|conteudo[10]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[10]~37_combout\ = ((\PesoMedido~combout\(13) $ (\PesoMedido~combout\(12) $ (!\A_DataPath|E_RegCombustivelNecessario|conteudo[9]~36\)))) # (GND)
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[10]~38\ = CARRY((\PesoMedido~combout\(13) & ((\PesoMedido~combout\(12)) # (!\A_DataPath|E_RegCombustivelNecessario|conteudo[9]~36\))) # (!\PesoMedido~combout\(13) & (\PesoMedido~combout\(12) & 
-- !\A_DataPath|E_RegCombustivelNecessario|conteudo[9]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PesoMedido~combout\(13),
	datab => \PesoMedido~combout\(12),
	datad => VCC,
	cin => \A_DataPath|E_RegCombustivelNecessario|conteudo[9]~36\,
	combout => \A_DataPath|E_RegCombustivelNecessario|conteudo[10]~37_combout\,
	cout => \A_DataPath|E_RegCombustivelNecessario|conteudo[10]~38\);

-- Location: LCCOMB_X47_Y30_N26
\A_DataPath|E_RegCombustivelNecessario|conteudo[11]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[11]~39_combout\ = (\PesoMedido~combout\(13) & ((\PesoMedido~combout\(14) & (\A_DataPath|E_RegCombustivelNecessario|conteudo[10]~38\ & VCC)) # (!\PesoMedido~combout\(14) & 
-- (!\A_DataPath|E_RegCombustivelNecessario|conteudo[10]~38\)))) # (!\PesoMedido~combout\(13) & ((\PesoMedido~combout\(14) & (!\A_DataPath|E_RegCombustivelNecessario|conteudo[10]~38\)) # (!\PesoMedido~combout\(14) & 
-- ((\A_DataPath|E_RegCombustivelNecessario|conteudo[10]~38\) # (GND)))))
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[11]~40\ = CARRY((\PesoMedido~combout\(13) & (!\PesoMedido~combout\(14) & !\A_DataPath|E_RegCombustivelNecessario|conteudo[10]~38\)) # (!\PesoMedido~combout\(13) & 
-- ((!\A_DataPath|E_RegCombustivelNecessario|conteudo[10]~38\) # (!\PesoMedido~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PesoMedido~combout\(13),
	datab => \PesoMedido~combout\(14),
	datad => VCC,
	cin => \A_DataPath|E_RegCombustivelNecessario|conteudo[10]~38\,
	combout => \A_DataPath|E_RegCombustivelNecessario|conteudo[11]~39_combout\,
	cout => \A_DataPath|E_RegCombustivelNecessario|conteudo[11]~40\);

-- Location: LCCOMB_X47_Y30_N28
\A_DataPath|E_RegCombustivelNecessario|conteudo[12]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|E_RegCombustivelNecessario|conteudo[12]~41_combout\ = \PesoMedido~combout\(14) $ (\A_DataPath|E_RegCombustivelNecessario|conteudo[11]~40\ $ (!\PesoMedido~combout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PesoMedido~combout\(14),
	datad => \PesoMedido~combout\(15),
	cin => \A_DataPath|E_RegCombustivelNecessario|conteudo[11]~40\,
	combout => \A_DataPath|E_RegCombustivelNecessario|conteudo[12]~41_combout\);

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BotaoPesar~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_BotaoPesar,
	combout => \BotaoPesar~combout\);

-- Location: LCCOMB_X46_Y31_N20
\B_Controladora|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|Selector3~0_combout\ = (\B_Controladora|estado_atual.S5~regout\ & (((\B_Controladora|Selector1~0_combout\ & \BotaoPesar~combout\)) # (!\A_DataPath|D_ComparadorPeso|LessThan0~5_combout\))) # (!\B_Controladora|estado_atual.S5~regout\ & 
-- (\B_Controladora|Selector1~0_combout\ & (\BotaoPesar~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Controladora|estado_atual.S5~regout\,
	datab => \B_Controladora|Selector1~0_combout\,
	datac => \BotaoPesar~combout\,
	datad => \A_DataPath|D_ComparadorPeso|LessThan0~5_combout\,
	combout => \B_Controladora|Selector3~0_combout\);

-- Location: LCFF_X46_Y31_N21
\B_Controladora|estado_atual.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \B_Controladora|Selector3~0_combout\,
	aclr => \ClrControladora~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B_Controladora|estado_atual.S4~regout\);

-- Location: LCFF_X46_Y28_N9
\A_DataPath|E_RegCombustivelNecessario|conteudo[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|E_RegCombustivelNecessario|conteudo[12]~41_combout\,
	sload => VCC,
	ena => \B_Controladora|estado_atual.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|E_RegCombustivelNecessario|conteudo\(12));

-- Location: LCFF_X46_Y26_N31
\A_DataPath|E_RegCombustivelNecessario|conteudo[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|E_RegCombustivelNecessario|conteudo[11]~39_combout\,
	sload => VCC,
	ena => \B_Controladora|estado_atual.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|E_RegCombustivelNecessario|conteudo\(11));

-- Location: LCFF_X46_Y26_N21
\A_DataPath|E_RegCombustivelNecessario|conteudo[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|E_RegCombustivelNecessario|conteudo[7]~31_combout\,
	sload => VCC,
	ena => \B_Controladora|estado_atual.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|E_RegCombustivelNecessario|conteudo\(7));

-- Location: LCFF_X46_Y26_N19
\A_DataPath|E_RegCombustivelNecessario|conteudo[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|E_RegCombustivelNecessario|conteudo[6]~29_combout\,
	sload => VCC,
	ena => \B_Controladora|estado_atual.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|E_RegCombustivelNecessario|conteudo\(6));

-- Location: LCFF_X46_Y26_N13
\A_DataPath|E_RegCombustivelNecessario|conteudo[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|E_RegCombustivelNecessario|conteudo[3]~23_combout\,
	sload => VCC,
	ena => \B_Controladora|estado_atual.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|E_RegCombustivelNecessario|conteudo\(3));

-- Location: LCFF_X46_Y26_N11
\A_DataPath|E_RegCombustivelNecessario|conteudo[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|E_RegCombustivelNecessario|conteudo[2]~21_combout\,
	sload => VCC,
	ena => \B_Controladora|estado_atual.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|E_RegCombustivelNecessario|conteudo\(2));

-- Location: LCFF_X46_Y26_N9
\A_DataPath|E_RegCombustivelNecessario|conteudo[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|E_RegCombustivelNecessario|conteudo[1]~19_combout\,
	sload => VCC,
	ena => \B_Controladora|estado_atual.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|E_RegCombustivelNecessario|conteudo\(1));

-- Location: LCCOMB_X45_Y26_N0
\A_DataPath|G_RegNivelCombustivel|conteudo[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|G_RegNivelCombustivel|conteudo[0]~16_combout\ = (\A_DataPath|E_RegCombustivelNecessario|conteudo\(0) & (\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(0) $ (VCC))) # (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(0) & 
-- ((\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(0)) # (GND)))
-- \A_DataPath|G_RegNivelCombustivel|conteudo[0]~17\ = CARRY((\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(0)) # (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|E_RegCombustivelNecessario|conteudo\(0),
	datab => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(0),
	datad => VCC,
	combout => \A_DataPath|G_RegNivelCombustivel|conteudo[0]~16_combout\,
	cout => \A_DataPath|G_RegNivelCombustivel|conteudo[0]~17\);

-- Location: LCCOMB_X44_Y26_N20
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X46_Y31_N16
\B_Controladora|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|WideOr0~0_combout\ = (\B_Controladora|estado_atual.S3~regout\) # (!\B_Controladora|estado_atual.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_Controladora|estado_atual.S0~regout\,
	datad => \B_Controladora|estado_atual.S3~regout\,
	combout => \B_Controladora|WideOr0~0_combout\);

-- Location: LCCOMB_X40_Y28_N16
\B_Controladora|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|Selector6~0_combout\ = (\B_Controladora|estado_atual.S8~regout\) # ((\B_Controladora|estado_atual.S9~regout\ & !\A_DataPath|TemporizadorCarregamento|Output~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_Controladora|estado_atual.S8~regout\,
	datac => \B_Controladora|estado_atual.S9~regout\,
	datad => \A_DataPath|TemporizadorCarregamento|Output~regout\,
	combout => \B_Controladora|Selector6~0_combout\);

-- Location: LCFF_X40_Y28_N17
\B_Controladora|estado_atual.S9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \B_Controladora|Selector6~0_combout\,
	aclr => \ClrControladora~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B_Controladora|estado_atual.S9~regout\);

-- Location: LCCOMB_X45_Y28_N20
\B_Controladora|WideOr0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|WideOr0~combout\ = (\B_Controladora|estado_atual.S3~regout\) # ((\B_Controladora|estado_atual.S9~regout\) # (!\B_Controladora|estado_atual.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_Controladora|estado_atual.S3~regout\,
	datac => \B_Controladora|estado_atual.S9~regout\,
	datad => \B_Controladora|estado_atual.S0~regout\,
	combout => \B_Controladora|WideOr0~combout\);

-- Location: LCFF_X45_Y26_N1
\A_DataPath|G_RegNivelCombustivel|conteudo[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo[0]~16_combout\,
	sdata => \~GND~combout\,
	sload => \B_Controladora|WideOr0~0_combout\,
	ena => \B_Controladora|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|G_RegNivelCombustivel|conteudo\(0));

-- Location: LCFF_X44_Y26_N17
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|G_RegNivelCombustivel|conteudo\(0),
	sload => VCC,
	ena => \B_Controladora|estado_atual.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(0));

-- Location: LCCOMB_X45_Y26_N2
\A_DataPath|G_RegNivelCombustivel|conteudo[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|G_RegNivelCombustivel|conteudo[1]~18_combout\ = (\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(1) & ((\A_DataPath|E_RegCombustivelNecessario|conteudo\(1) & (!\A_DataPath|G_RegNivelCombustivel|conteudo[0]~17\)) # 
-- (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(1) & (\A_DataPath|G_RegNivelCombustivel|conteudo[0]~17\ & VCC)))) # (!\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(1) & ((\A_DataPath|E_RegCombustivelNecessario|conteudo\(1) & 
-- ((\A_DataPath|G_RegNivelCombustivel|conteudo[0]~17\) # (GND))) # (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(1) & (!\A_DataPath|G_RegNivelCombustivel|conteudo[0]~17\))))
-- \A_DataPath|G_RegNivelCombustivel|conteudo[1]~19\ = CARRY((\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(1) & (\A_DataPath|E_RegCombustivelNecessario|conteudo\(1) & !\A_DataPath|G_RegNivelCombustivel|conteudo[0]~17\)) # 
-- (!\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(1) & ((\A_DataPath|E_RegCombustivelNecessario|conteudo\(1)) # (!\A_DataPath|G_RegNivelCombustivel|conteudo[0]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(1),
	datab => \A_DataPath|E_RegCombustivelNecessario|conteudo\(1),
	datad => VCC,
	cin => \A_DataPath|G_RegNivelCombustivel|conteudo[0]~17\,
	combout => \A_DataPath|G_RegNivelCombustivel|conteudo[1]~18_combout\,
	cout => \A_DataPath|G_RegNivelCombustivel|conteudo[1]~19\);

-- Location: LCCOMB_X45_Y26_N4
\A_DataPath|G_RegNivelCombustivel|conteudo[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|G_RegNivelCombustivel|conteudo[2]~20_combout\ = ((\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(2) $ (\A_DataPath|E_RegCombustivelNecessario|conteudo\(2) $ (\A_DataPath|G_RegNivelCombustivel|conteudo[1]~19\)))) # (GND)
-- \A_DataPath|G_RegNivelCombustivel|conteudo[2]~21\ = CARRY((\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(2) & ((!\A_DataPath|G_RegNivelCombustivel|conteudo[1]~19\) # (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(2)))) # 
-- (!\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(2) & (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(2) & !\A_DataPath|G_RegNivelCombustivel|conteudo[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(2),
	datab => \A_DataPath|E_RegCombustivelNecessario|conteudo\(2),
	datad => VCC,
	cin => \A_DataPath|G_RegNivelCombustivel|conteudo[1]~19\,
	combout => \A_DataPath|G_RegNivelCombustivel|conteudo[2]~20_combout\,
	cout => \A_DataPath|G_RegNivelCombustivel|conteudo[2]~21\);

-- Location: LCCOMB_X45_Y26_N6
\A_DataPath|G_RegNivelCombustivel|conteudo[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|G_RegNivelCombustivel|conteudo[3]~22_combout\ = (\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(3) & ((\A_DataPath|E_RegCombustivelNecessario|conteudo\(3) & (!\A_DataPath|G_RegNivelCombustivel|conteudo[2]~21\)) # 
-- (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(3) & (\A_DataPath|G_RegNivelCombustivel|conteudo[2]~21\ & VCC)))) # (!\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(3) & ((\A_DataPath|E_RegCombustivelNecessario|conteudo\(3) & 
-- ((\A_DataPath|G_RegNivelCombustivel|conteudo[2]~21\) # (GND))) # (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(3) & (!\A_DataPath|G_RegNivelCombustivel|conteudo[2]~21\))))
-- \A_DataPath|G_RegNivelCombustivel|conteudo[3]~23\ = CARRY((\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(3) & (\A_DataPath|E_RegCombustivelNecessario|conteudo\(3) & !\A_DataPath|G_RegNivelCombustivel|conteudo[2]~21\)) # 
-- (!\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(3) & ((\A_DataPath|E_RegCombustivelNecessario|conteudo\(3)) # (!\A_DataPath|G_RegNivelCombustivel|conteudo[2]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(3),
	datab => \A_DataPath|E_RegCombustivelNecessario|conteudo\(3),
	datad => VCC,
	cin => \A_DataPath|G_RegNivelCombustivel|conteudo[2]~21\,
	combout => \A_DataPath|G_RegNivelCombustivel|conteudo[3]~22_combout\,
	cout => \A_DataPath|G_RegNivelCombustivel|conteudo[3]~23\);

-- Location: LCCOMB_X45_Y26_N8
\A_DataPath|G_RegNivelCombustivel|conteudo[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|G_RegNivelCombustivel|conteudo[4]~24_combout\ = ((\A_DataPath|E_RegCombustivelNecessario|conteudo\(4) $ (\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(4) $ (\A_DataPath|G_RegNivelCombustivel|conteudo[3]~23\)))) # (GND)
-- \A_DataPath|G_RegNivelCombustivel|conteudo[4]~25\ = CARRY((\A_DataPath|E_RegCombustivelNecessario|conteudo\(4) & (\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(4) & !\A_DataPath|G_RegNivelCombustivel|conteudo[3]~23\)) # 
-- (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(4) & ((\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(4)) # (!\A_DataPath|G_RegNivelCombustivel|conteudo[3]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|E_RegCombustivelNecessario|conteudo\(4),
	datab => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(4),
	datad => VCC,
	cin => \A_DataPath|G_RegNivelCombustivel|conteudo[3]~23\,
	combout => \A_DataPath|G_RegNivelCombustivel|conteudo[4]~24_combout\,
	cout => \A_DataPath|G_RegNivelCombustivel|conteudo[4]~25\);

-- Location: LCFF_X45_Y26_N9
\A_DataPath|G_RegNivelCombustivel|conteudo[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo[4]~24_combout\,
	sdata => VCC,
	sload => \B_Controladora|WideOr0~0_combout\,
	ena => \B_Controladora|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|G_RegNivelCombustivel|conteudo\(4));

-- Location: LCFF_X44_Y26_N5
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|G_RegNivelCombustivel|conteudo\(4),
	sload => VCC,
	ena => \B_Controladora|estado_atual.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(4));

-- Location: LCCOMB_X45_Y26_N10
\A_DataPath|G_RegNivelCombustivel|conteudo[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|G_RegNivelCombustivel|conteudo[5]~26_combout\ = (\A_DataPath|E_RegCombustivelNecessario|conteudo\(5) & ((\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(5) & (!\A_DataPath|G_RegNivelCombustivel|conteudo[4]~25\)) # 
-- (!\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(5) & ((\A_DataPath|G_RegNivelCombustivel|conteudo[4]~25\) # (GND))))) # (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(5) & ((\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(5) & 
-- (\A_DataPath|G_RegNivelCombustivel|conteudo[4]~25\ & VCC)) # (!\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(5) & (!\A_DataPath|G_RegNivelCombustivel|conteudo[4]~25\))))
-- \A_DataPath|G_RegNivelCombustivel|conteudo[5]~27\ = CARRY((\A_DataPath|E_RegCombustivelNecessario|conteudo\(5) & ((!\A_DataPath|G_RegNivelCombustivel|conteudo[4]~25\) # (!\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(5)))) # 
-- (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(5) & (!\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(5) & !\A_DataPath|G_RegNivelCombustivel|conteudo[4]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|E_RegCombustivelNecessario|conteudo\(5),
	datab => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(5),
	datad => VCC,
	cin => \A_DataPath|G_RegNivelCombustivel|conteudo[4]~25\,
	combout => \A_DataPath|G_RegNivelCombustivel|conteudo[5]~26_combout\,
	cout => \A_DataPath|G_RegNivelCombustivel|conteudo[5]~27\);

-- Location: LCFF_X45_Y26_N11
\A_DataPath|G_RegNivelCombustivel|conteudo[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo[5]~26_combout\,
	sdata => \~GND~combout\,
	sload => \B_Controladora|WideOr0~0_combout\,
	ena => \B_Controladora|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|G_RegNivelCombustivel|conteudo\(5));

-- Location: LCFF_X46_Y26_N29
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|G_RegNivelCombustivel|conteudo\(5),
	sload => VCC,
	ena => \B_Controladora|estado_atual.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(5));

-- Location: LCCOMB_X45_Y26_N12
\A_DataPath|G_RegNivelCombustivel|conteudo[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|G_RegNivelCombustivel|conteudo[6]~28_combout\ = ((\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(6) $ (\A_DataPath|E_RegCombustivelNecessario|conteudo\(6) $ (\A_DataPath|G_RegNivelCombustivel|conteudo[5]~27\)))) # (GND)
-- \A_DataPath|G_RegNivelCombustivel|conteudo[6]~29\ = CARRY((\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(6) & ((!\A_DataPath|G_RegNivelCombustivel|conteudo[5]~27\) # (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(6)))) # 
-- (!\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(6) & (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(6) & !\A_DataPath|G_RegNivelCombustivel|conteudo[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(6),
	datab => \A_DataPath|E_RegCombustivelNecessario|conteudo\(6),
	datad => VCC,
	cin => \A_DataPath|G_RegNivelCombustivel|conteudo[5]~27\,
	combout => \A_DataPath|G_RegNivelCombustivel|conteudo[6]~28_combout\,
	cout => \A_DataPath|G_RegNivelCombustivel|conteudo[6]~29\);

-- Location: LCCOMB_X45_Y26_N14
\A_DataPath|G_RegNivelCombustivel|conteudo[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|G_RegNivelCombustivel|conteudo[7]~30_combout\ = (\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(7) & ((\A_DataPath|E_RegCombustivelNecessario|conteudo\(7) & (!\A_DataPath|G_RegNivelCombustivel|conteudo[6]~29\)) # 
-- (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(7) & (\A_DataPath|G_RegNivelCombustivel|conteudo[6]~29\ & VCC)))) # (!\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(7) & ((\A_DataPath|E_RegCombustivelNecessario|conteudo\(7) & 
-- ((\A_DataPath|G_RegNivelCombustivel|conteudo[6]~29\) # (GND))) # (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(7) & (!\A_DataPath|G_RegNivelCombustivel|conteudo[6]~29\))))
-- \A_DataPath|G_RegNivelCombustivel|conteudo[7]~31\ = CARRY((\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(7) & (\A_DataPath|E_RegCombustivelNecessario|conteudo\(7) & !\A_DataPath|G_RegNivelCombustivel|conteudo[6]~29\)) # 
-- (!\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(7) & ((\A_DataPath|E_RegCombustivelNecessario|conteudo\(7)) # (!\A_DataPath|G_RegNivelCombustivel|conteudo[6]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(7),
	datab => \A_DataPath|E_RegCombustivelNecessario|conteudo\(7),
	datad => VCC,
	cin => \A_DataPath|G_RegNivelCombustivel|conteudo[6]~29\,
	combout => \A_DataPath|G_RegNivelCombustivel|conteudo[7]~30_combout\,
	cout => \A_DataPath|G_RegNivelCombustivel|conteudo[7]~31\);

-- Location: LCCOMB_X45_Y26_N16
\A_DataPath|G_RegNivelCombustivel|conteudo[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|G_RegNivelCombustivel|conteudo[8]~32_combout\ = ((\A_DataPath|E_RegCombustivelNecessario|conteudo\(8) $ (\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(8) $ (\A_DataPath|G_RegNivelCombustivel|conteudo[7]~31\)))) # (GND)
-- \A_DataPath|G_RegNivelCombustivel|conteudo[8]~33\ = CARRY((\A_DataPath|E_RegCombustivelNecessario|conteudo\(8) & (\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(8) & !\A_DataPath|G_RegNivelCombustivel|conteudo[7]~31\)) # 
-- (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(8) & ((\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(8)) # (!\A_DataPath|G_RegNivelCombustivel|conteudo[7]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|E_RegCombustivelNecessario|conteudo\(8),
	datab => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(8),
	datad => VCC,
	cin => \A_DataPath|G_RegNivelCombustivel|conteudo[7]~31\,
	combout => \A_DataPath|G_RegNivelCombustivel|conteudo[8]~32_combout\,
	cout => \A_DataPath|G_RegNivelCombustivel|conteudo[8]~33\);

-- Location: LCFF_X45_Y26_N17
\A_DataPath|G_RegNivelCombustivel|conteudo[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo[8]~32_combout\,
	sdata => VCC,
	sload => \B_Controladora|WideOr0~0_combout\,
	ena => \B_Controladora|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|G_RegNivelCombustivel|conteudo\(8));

-- Location: LCFF_X44_Y26_N27
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|G_RegNivelCombustivel|conteudo\(8),
	sload => VCC,
	ena => \B_Controladora|estado_atual.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(8));

-- Location: LCCOMB_X45_Y26_N18
\A_DataPath|G_RegNivelCombustivel|conteudo[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|G_RegNivelCombustivel|conteudo[9]~34_combout\ = (\A_DataPath|E_RegCombustivelNecessario|conteudo\(9) & ((\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(9) & (!\A_DataPath|G_RegNivelCombustivel|conteudo[8]~33\)) # 
-- (!\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(9) & ((\A_DataPath|G_RegNivelCombustivel|conteudo[8]~33\) # (GND))))) # (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(9) & ((\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(9) & 
-- (\A_DataPath|G_RegNivelCombustivel|conteudo[8]~33\ & VCC)) # (!\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(9) & (!\A_DataPath|G_RegNivelCombustivel|conteudo[8]~33\))))
-- \A_DataPath|G_RegNivelCombustivel|conteudo[9]~35\ = CARRY((\A_DataPath|E_RegCombustivelNecessario|conteudo\(9) & ((!\A_DataPath|G_RegNivelCombustivel|conteudo[8]~33\) # (!\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(9)))) # 
-- (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(9) & (!\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(9) & !\A_DataPath|G_RegNivelCombustivel|conteudo[8]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|E_RegCombustivelNecessario|conteudo\(9),
	datab => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(9),
	datad => VCC,
	cin => \A_DataPath|G_RegNivelCombustivel|conteudo[8]~33\,
	combout => \A_DataPath|G_RegNivelCombustivel|conteudo[9]~34_combout\,
	cout => \A_DataPath|G_RegNivelCombustivel|conteudo[9]~35\);

-- Location: LCFF_X45_Y26_N19
\A_DataPath|G_RegNivelCombustivel|conteudo[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo[9]~34_combout\,
	sdata => VCC,
	sload => \B_Controladora|WideOr0~0_combout\,
	ena => \B_Controladora|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|G_RegNivelCombustivel|conteudo\(9));

-- Location: LCCOMB_X44_Y26_N24
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|F_RegAuxNivelCombustivel|conteudo[9]~feeder_combout\ = \A_DataPath|G_RegNivelCombustivel|conteudo\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A_DataPath|G_RegNivelCombustivel|conteudo\(9),
	combout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo[9]~feeder_combout\);

-- Location: LCFF_X44_Y26_N25
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|F_RegAuxNivelCombustivel|conteudo[9]~feeder_combout\,
	ena => \B_Controladora|estado_atual.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(9));

-- Location: LCCOMB_X45_Y26_N20
\A_DataPath|G_RegNivelCombustivel|conteudo[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|G_RegNivelCombustivel|conteudo[10]~36_combout\ = ((\A_DataPath|E_RegCombustivelNecessario|conteudo\(10) $ (\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(10) $ (\A_DataPath|G_RegNivelCombustivel|conteudo[9]~35\)))) # (GND)
-- \A_DataPath|G_RegNivelCombustivel|conteudo[10]~37\ = CARRY((\A_DataPath|E_RegCombustivelNecessario|conteudo\(10) & (\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(10) & !\A_DataPath|G_RegNivelCombustivel|conteudo[9]~35\)) # 
-- (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(10) & ((\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(10)) # (!\A_DataPath|G_RegNivelCombustivel|conteudo[9]~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|E_RegCombustivelNecessario|conteudo\(10),
	datab => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(10),
	datad => VCC,
	cin => \A_DataPath|G_RegNivelCombustivel|conteudo[9]~35\,
	combout => \A_DataPath|G_RegNivelCombustivel|conteudo[10]~36_combout\,
	cout => \A_DataPath|G_RegNivelCombustivel|conteudo[10]~37\);

-- Location: LCFF_X45_Y26_N21
\A_DataPath|G_RegNivelCombustivel|conteudo[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo[10]~36_combout\,
	sdata => VCC,
	sload => \B_Controladora|WideOr0~0_combout\,
	ena => \B_Controladora|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|G_RegNivelCombustivel|conteudo\(10));

-- Location: LCCOMB_X44_Y26_N18
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|F_RegAuxNivelCombustivel|conteudo[10]~feeder_combout\ = \A_DataPath|G_RegNivelCombustivel|conteudo\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A_DataPath|G_RegNivelCombustivel|conteudo\(10),
	combout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo[10]~feeder_combout\);

-- Location: LCFF_X44_Y26_N19
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|F_RegAuxNivelCombustivel|conteudo[10]~feeder_combout\,
	ena => \B_Controladora|estado_atual.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(10));

-- Location: LCCOMB_X45_Y26_N22
\A_DataPath|G_RegNivelCombustivel|conteudo[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|G_RegNivelCombustivel|conteudo[11]~38_combout\ = (\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(11) & ((\A_DataPath|E_RegCombustivelNecessario|conteudo\(11) & (!\A_DataPath|G_RegNivelCombustivel|conteudo[10]~37\)) # 
-- (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(11) & (\A_DataPath|G_RegNivelCombustivel|conteudo[10]~37\ & VCC)))) # (!\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(11) & ((\A_DataPath|E_RegCombustivelNecessario|conteudo\(11) & 
-- ((\A_DataPath|G_RegNivelCombustivel|conteudo[10]~37\) # (GND))) # (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(11) & (!\A_DataPath|G_RegNivelCombustivel|conteudo[10]~37\))))
-- \A_DataPath|G_RegNivelCombustivel|conteudo[11]~39\ = CARRY((\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(11) & (\A_DataPath|E_RegCombustivelNecessario|conteudo\(11) & !\A_DataPath|G_RegNivelCombustivel|conteudo[10]~37\)) # 
-- (!\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(11) & ((\A_DataPath|E_RegCombustivelNecessario|conteudo\(11)) # (!\A_DataPath|G_RegNivelCombustivel|conteudo[10]~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(11),
	datab => \A_DataPath|E_RegCombustivelNecessario|conteudo\(11),
	datad => VCC,
	cin => \A_DataPath|G_RegNivelCombustivel|conteudo[10]~37\,
	combout => \A_DataPath|G_RegNivelCombustivel|conteudo[11]~38_combout\,
	cout => \A_DataPath|G_RegNivelCombustivel|conteudo[11]~39\);

-- Location: LCCOMB_X45_Y26_N24
\A_DataPath|G_RegNivelCombustivel|conteudo[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|G_RegNivelCombustivel|conteudo[12]~40_combout\ = ((\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(12) $ (\A_DataPath|E_RegCombustivelNecessario|conteudo\(12) $ (\A_DataPath|G_RegNivelCombustivel|conteudo[11]~39\)))) # (GND)
-- \A_DataPath|G_RegNivelCombustivel|conteudo[12]~41\ = CARRY((\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(12) & ((!\A_DataPath|G_RegNivelCombustivel|conteudo[11]~39\) # (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(12)))) # 
-- (!\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(12) & (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(12) & !\A_DataPath|G_RegNivelCombustivel|conteudo[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(12),
	datab => \A_DataPath|E_RegCombustivelNecessario|conteudo\(12),
	datad => VCC,
	cin => \A_DataPath|G_RegNivelCombustivel|conteudo[11]~39\,
	combout => \A_DataPath|G_RegNivelCombustivel|conteudo[12]~40_combout\,
	cout => \A_DataPath|G_RegNivelCombustivel|conteudo[12]~41\);

-- Location: LCCOMB_X45_Y26_N26
\A_DataPath|G_RegNivelCombustivel|conteudo[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|G_RegNivelCombustivel|conteudo[13]~42_combout\ = (\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(13) & (\A_DataPath|G_RegNivelCombustivel|conteudo[12]~41\ & VCC)) # (!\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(13) & 
-- (!\A_DataPath|G_RegNivelCombustivel|conteudo[12]~41\))
-- \A_DataPath|G_RegNivelCombustivel|conteudo[13]~43\ = CARRY((!\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(13) & !\A_DataPath|G_RegNivelCombustivel|conteudo[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(13),
	datad => VCC,
	cin => \A_DataPath|G_RegNivelCombustivel|conteudo[12]~41\,
	combout => \A_DataPath|G_RegNivelCombustivel|conteudo[13]~42_combout\,
	cout => \A_DataPath|G_RegNivelCombustivel|conteudo[13]~43\);

-- Location: LCFF_X45_Y26_N27
\A_DataPath|G_RegNivelCombustivel|conteudo[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo[13]~42_combout\,
	sdata => VCC,
	sload => \B_Controladora|WideOr0~0_combout\,
	ena => \B_Controladora|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|G_RegNivelCombustivel|conteudo\(13));

-- Location: LCCOMB_X47_Y26_N6
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|F_RegAuxNivelCombustivel|conteudo[13]~feeder_combout\ = \A_DataPath|G_RegNivelCombustivel|conteudo\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A_DataPath|G_RegNivelCombustivel|conteudo\(13),
	combout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo[13]~feeder_combout\);

-- Location: LCFF_X47_Y26_N7
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|F_RegAuxNivelCombustivel|conteudo[13]~feeder_combout\,
	ena => \B_Controladora|estado_atual.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(13));

-- Location: LCCOMB_X45_Y26_N28
\A_DataPath|G_RegNivelCombustivel|conteudo[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|G_RegNivelCombustivel|conteudo[14]~44_combout\ = (\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(14) & ((GND) # (!\A_DataPath|G_RegNivelCombustivel|conteudo[13]~43\))) # (!\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(14) & 
-- (\A_DataPath|G_RegNivelCombustivel|conteudo[13]~43\ $ (GND)))
-- \A_DataPath|G_RegNivelCombustivel|conteudo[14]~45\ = CARRY((\A_DataPath|F_RegAuxNivelCombustivel|conteudo\(14)) # (!\A_DataPath|G_RegNivelCombustivel|conteudo[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(14),
	datad => VCC,
	cin => \A_DataPath|G_RegNivelCombustivel|conteudo[13]~43\,
	combout => \A_DataPath|G_RegNivelCombustivel|conteudo[14]~44_combout\,
	cout => \A_DataPath|G_RegNivelCombustivel|conteudo[14]~45\);

-- Location: LCFF_X45_Y26_N29
\A_DataPath|G_RegNivelCombustivel|conteudo[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo[14]~44_combout\,
	sdata => \~GND~combout\,
	sload => \B_Controladora|WideOr0~0_combout\,
	ena => \B_Controladora|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|G_RegNivelCombustivel|conteudo\(14));

-- Location: LCFF_X45_Y26_N25
\A_DataPath|G_RegNivelCombustivel|conteudo[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo[12]~40_combout\,
	sdata => \~GND~combout\,
	sload => \B_Controladora|WideOr0~0_combout\,
	ena => \B_Controladora|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|G_RegNivelCombustivel|conteudo\(12));

-- Location: LCFF_X46_Y26_N27
\A_DataPath|E_RegCombustivelNecessario|conteudo[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|E_RegCombustivelNecessario|conteudo[10]~37_combout\,
	sload => VCC,
	ena => \B_Controladora|estado_atual.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|E_RegCombustivelNecessario|conteudo\(10));

-- Location: LCFF_X46_Y26_N23
\A_DataPath|E_RegCombustivelNecessario|conteudo[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|E_RegCombustivelNecessario|conteudo[8]~33_combout\,
	sload => VCC,
	ena => \B_Controladora|estado_atual.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|E_RegCombustivelNecessario|conteudo\(8));

-- Location: LCFF_X46_Y26_N15
\A_DataPath|E_RegCombustivelNecessario|conteudo[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|E_RegCombustivelNecessario|conteudo[4]~25_combout\,
	sload => VCC,
	ena => \B_Controladora|estado_atual.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|E_RegCombustivelNecessario|conteudo\(4));

-- Location: LCFF_X45_Y26_N7
\A_DataPath|G_RegNivelCombustivel|conteudo[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo[3]~22_combout\,
	sdata => \~GND~combout\,
	sload => \B_Controladora|WideOr0~0_combout\,
	ena => \B_Controladora|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|G_RegNivelCombustivel|conteudo\(3));

-- Location: LCFF_X45_Y26_N5
\A_DataPath|G_RegNivelCombustivel|conteudo[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo[2]~20_combout\,
	sdata => \~GND~combout\,
	sload => \B_Controladora|WideOr0~0_combout\,
	ena => \B_Controladora|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|G_RegNivelCombustivel|conteudo\(2));

-- Location: LCFF_X46_Y26_N7
\A_DataPath|E_RegCombustivelNecessario|conteudo[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|E_RegCombustivelNecessario|conteudo[0]~17_combout\,
	sload => VCC,
	ena => \B_Controladora|estado_atual.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|E_RegCombustivelNecessario|conteudo\(0));

-- Location: LCCOMB_X46_Y26_N6
\A_DataPath|K_ComparadorCombustivel|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|K_ComparadorCombustivel|LessThan0~1_cout\ = CARRY((!\A_DataPath|G_RegNivelCombustivel|conteudo\(0) & \A_DataPath|E_RegCombustivelNecessario|conteudo\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|G_RegNivelCombustivel|conteudo\(0),
	datab => \A_DataPath|E_RegCombustivelNecessario|conteudo\(0),
	datad => VCC,
	cout => \A_DataPath|K_ComparadorCombustivel|LessThan0~1_cout\);

-- Location: LCCOMB_X46_Y26_N8
\A_DataPath|K_ComparadorCombustivel|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|K_ComparadorCombustivel|LessThan0~3_cout\ = CARRY((\A_DataPath|G_RegNivelCombustivel|conteudo\(1) & ((!\A_DataPath|K_ComparadorCombustivel|LessThan0~1_cout\) # (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(1)))) # 
-- (!\A_DataPath|G_RegNivelCombustivel|conteudo\(1) & (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(1) & !\A_DataPath|K_ComparadorCombustivel|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|G_RegNivelCombustivel|conteudo\(1),
	datab => \A_DataPath|E_RegCombustivelNecessario|conteudo\(1),
	datad => VCC,
	cin => \A_DataPath|K_ComparadorCombustivel|LessThan0~1_cout\,
	cout => \A_DataPath|K_ComparadorCombustivel|LessThan0~3_cout\);

-- Location: LCCOMB_X46_Y26_N10
\A_DataPath|K_ComparadorCombustivel|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|K_ComparadorCombustivel|LessThan0~5_cout\ = CARRY((\A_DataPath|E_RegCombustivelNecessario|conteudo\(2) & ((!\A_DataPath|K_ComparadorCombustivel|LessThan0~3_cout\) # (!\A_DataPath|G_RegNivelCombustivel|conteudo\(2)))) # 
-- (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(2) & (!\A_DataPath|G_RegNivelCombustivel|conteudo\(2) & !\A_DataPath|K_ComparadorCombustivel|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|E_RegCombustivelNecessario|conteudo\(2),
	datab => \A_DataPath|G_RegNivelCombustivel|conteudo\(2),
	datad => VCC,
	cin => \A_DataPath|K_ComparadorCombustivel|LessThan0~3_cout\,
	cout => \A_DataPath|K_ComparadorCombustivel|LessThan0~5_cout\);

-- Location: LCCOMB_X46_Y26_N12
\A_DataPath|K_ComparadorCombustivel|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|K_ComparadorCombustivel|LessThan0~7_cout\ = CARRY((\A_DataPath|E_RegCombustivelNecessario|conteudo\(3) & (\A_DataPath|G_RegNivelCombustivel|conteudo\(3) & !\A_DataPath|K_ComparadorCombustivel|LessThan0~5_cout\)) # 
-- (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(3) & ((\A_DataPath|G_RegNivelCombustivel|conteudo\(3)) # (!\A_DataPath|K_ComparadorCombustivel|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|E_RegCombustivelNecessario|conteudo\(3),
	datab => \A_DataPath|G_RegNivelCombustivel|conteudo\(3),
	datad => VCC,
	cin => \A_DataPath|K_ComparadorCombustivel|LessThan0~5_cout\,
	cout => \A_DataPath|K_ComparadorCombustivel|LessThan0~7_cout\);

-- Location: LCCOMB_X46_Y26_N14
\A_DataPath|K_ComparadorCombustivel|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|K_ComparadorCombustivel|LessThan0~9_cout\ = CARRY((\A_DataPath|G_RegNivelCombustivel|conteudo\(4) & (\A_DataPath|E_RegCombustivelNecessario|conteudo\(4) & !\A_DataPath|K_ComparadorCombustivel|LessThan0~7_cout\)) # 
-- (!\A_DataPath|G_RegNivelCombustivel|conteudo\(4) & ((\A_DataPath|E_RegCombustivelNecessario|conteudo\(4)) # (!\A_DataPath|K_ComparadorCombustivel|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|G_RegNivelCombustivel|conteudo\(4),
	datab => \A_DataPath|E_RegCombustivelNecessario|conteudo\(4),
	datad => VCC,
	cin => \A_DataPath|K_ComparadorCombustivel|LessThan0~7_cout\,
	cout => \A_DataPath|K_ComparadorCombustivel|LessThan0~9_cout\);

-- Location: LCCOMB_X46_Y26_N16
\A_DataPath|K_ComparadorCombustivel|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|K_ComparadorCombustivel|LessThan0~11_cout\ = CARRY((\A_DataPath|E_RegCombustivelNecessario|conteudo\(5) & (\A_DataPath|G_RegNivelCombustivel|conteudo\(5) & !\A_DataPath|K_ComparadorCombustivel|LessThan0~9_cout\)) # 
-- (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(5) & ((\A_DataPath|G_RegNivelCombustivel|conteudo\(5)) # (!\A_DataPath|K_ComparadorCombustivel|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|E_RegCombustivelNecessario|conteudo\(5),
	datab => \A_DataPath|G_RegNivelCombustivel|conteudo\(5),
	datad => VCC,
	cin => \A_DataPath|K_ComparadorCombustivel|LessThan0~9_cout\,
	cout => \A_DataPath|K_ComparadorCombustivel|LessThan0~11_cout\);

-- Location: LCCOMB_X46_Y26_N18
\A_DataPath|K_ComparadorCombustivel|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|K_ComparadorCombustivel|LessThan0~13_cout\ = CARRY((\A_DataPath|G_RegNivelCombustivel|conteudo\(6) & (\A_DataPath|E_RegCombustivelNecessario|conteudo\(6) & !\A_DataPath|K_ComparadorCombustivel|LessThan0~11_cout\)) # 
-- (!\A_DataPath|G_RegNivelCombustivel|conteudo\(6) & ((\A_DataPath|E_RegCombustivelNecessario|conteudo\(6)) # (!\A_DataPath|K_ComparadorCombustivel|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|G_RegNivelCombustivel|conteudo\(6),
	datab => \A_DataPath|E_RegCombustivelNecessario|conteudo\(6),
	datad => VCC,
	cin => \A_DataPath|K_ComparadorCombustivel|LessThan0~11_cout\,
	cout => \A_DataPath|K_ComparadorCombustivel|LessThan0~13_cout\);

-- Location: LCCOMB_X46_Y26_N20
\A_DataPath|K_ComparadorCombustivel|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|K_ComparadorCombustivel|LessThan0~15_cout\ = CARRY((\A_DataPath|G_RegNivelCombustivel|conteudo\(7) & ((!\A_DataPath|K_ComparadorCombustivel|LessThan0~13_cout\) # (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(7)))) # 
-- (!\A_DataPath|G_RegNivelCombustivel|conteudo\(7) & (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(7) & !\A_DataPath|K_ComparadorCombustivel|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|G_RegNivelCombustivel|conteudo\(7),
	datab => \A_DataPath|E_RegCombustivelNecessario|conteudo\(7),
	datad => VCC,
	cin => \A_DataPath|K_ComparadorCombustivel|LessThan0~13_cout\,
	cout => \A_DataPath|K_ComparadorCombustivel|LessThan0~15_cout\);

-- Location: LCCOMB_X46_Y26_N22
\A_DataPath|K_ComparadorCombustivel|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|K_ComparadorCombustivel|LessThan0~17_cout\ = CARRY((\A_DataPath|G_RegNivelCombustivel|conteudo\(8) & (\A_DataPath|E_RegCombustivelNecessario|conteudo\(8) & !\A_DataPath|K_ComparadorCombustivel|LessThan0~15_cout\)) # 
-- (!\A_DataPath|G_RegNivelCombustivel|conteudo\(8) & ((\A_DataPath|E_RegCombustivelNecessario|conteudo\(8)) # (!\A_DataPath|K_ComparadorCombustivel|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|G_RegNivelCombustivel|conteudo\(8),
	datab => \A_DataPath|E_RegCombustivelNecessario|conteudo\(8),
	datad => VCC,
	cin => \A_DataPath|K_ComparadorCombustivel|LessThan0~15_cout\,
	cout => \A_DataPath|K_ComparadorCombustivel|LessThan0~17_cout\);

-- Location: LCCOMB_X46_Y26_N24
\A_DataPath|K_ComparadorCombustivel|LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|K_ComparadorCombustivel|LessThan0~19_cout\ = CARRY((\A_DataPath|E_RegCombustivelNecessario|conteudo\(9) & (\A_DataPath|G_RegNivelCombustivel|conteudo\(9) & !\A_DataPath|K_ComparadorCombustivel|LessThan0~17_cout\)) # 
-- (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(9) & ((\A_DataPath|G_RegNivelCombustivel|conteudo\(9)) # (!\A_DataPath|K_ComparadorCombustivel|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|E_RegCombustivelNecessario|conteudo\(9),
	datab => \A_DataPath|G_RegNivelCombustivel|conteudo\(9),
	datad => VCC,
	cin => \A_DataPath|K_ComparadorCombustivel|LessThan0~17_cout\,
	cout => \A_DataPath|K_ComparadorCombustivel|LessThan0~19_cout\);

-- Location: LCCOMB_X46_Y26_N26
\A_DataPath|K_ComparadorCombustivel|LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|K_ComparadorCombustivel|LessThan0~21_cout\ = CARRY((\A_DataPath|G_RegNivelCombustivel|conteudo\(10) & (\A_DataPath|E_RegCombustivelNecessario|conteudo\(10) & !\A_DataPath|K_ComparadorCombustivel|LessThan0~19_cout\)) # 
-- (!\A_DataPath|G_RegNivelCombustivel|conteudo\(10) & ((\A_DataPath|E_RegCombustivelNecessario|conteudo\(10)) # (!\A_DataPath|K_ComparadorCombustivel|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|G_RegNivelCombustivel|conteudo\(10),
	datab => \A_DataPath|E_RegCombustivelNecessario|conteudo\(10),
	datad => VCC,
	cin => \A_DataPath|K_ComparadorCombustivel|LessThan0~19_cout\,
	cout => \A_DataPath|K_ComparadorCombustivel|LessThan0~21_cout\);

-- Location: LCCOMB_X46_Y26_N28
\A_DataPath|K_ComparadorCombustivel|LessThan0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|K_ComparadorCombustivel|LessThan0~23_cout\ = CARRY((\A_DataPath|G_RegNivelCombustivel|conteudo\(11) & ((!\A_DataPath|K_ComparadorCombustivel|LessThan0~21_cout\) # (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(11)))) # 
-- (!\A_DataPath|G_RegNivelCombustivel|conteudo\(11) & (!\A_DataPath|E_RegCombustivelNecessario|conteudo\(11) & !\A_DataPath|K_ComparadorCombustivel|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|G_RegNivelCombustivel|conteudo\(11),
	datab => \A_DataPath|E_RegCombustivelNecessario|conteudo\(11),
	datad => VCC,
	cin => \A_DataPath|K_ComparadorCombustivel|LessThan0~21_cout\,
	cout => \A_DataPath|K_ComparadorCombustivel|LessThan0~23_cout\);

-- Location: LCCOMB_X46_Y26_N30
\A_DataPath|K_ComparadorCombustivel|LessThan0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|K_ComparadorCombustivel|LessThan0~24_combout\ = (\A_DataPath|G_RegNivelCombustivel|conteudo\(12) & (!\A_DataPath|K_ComparadorCombustivel|LessThan0~23_cout\ & \A_DataPath|E_RegCombustivelNecessario|conteudo\(12))) # 
-- (!\A_DataPath|G_RegNivelCombustivel|conteudo\(12) & ((\A_DataPath|E_RegCombustivelNecessario|conteudo\(12)) # (!\A_DataPath|K_ComparadorCombustivel|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|G_RegNivelCombustivel|conteudo\(12),
	datad => \A_DataPath|E_RegCombustivelNecessario|conteudo\(12),
	cin => \A_DataPath|K_ComparadorCombustivel|LessThan0~23_cout\,
	combout => \A_DataPath|K_ComparadorCombustivel|LessThan0~24_combout\);

-- Location: LCCOMB_X47_Y26_N0
\A_DataPath|K_ComparadorCombustivel|LessThan0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|K_ComparadorCombustivel|LessThan0~26_combout\ = (\A_DataPath|G_RegNivelCombustivel|conteudo\(15)) # ((\A_DataPath|G_RegNivelCombustivel|conteudo\(14)) # ((\A_DataPath|G_RegNivelCombustivel|conteudo\(13)) # 
-- (!\A_DataPath|K_ComparadorCombustivel|LessThan0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|G_RegNivelCombustivel|conteudo\(15),
	datab => \A_DataPath|G_RegNivelCombustivel|conteudo\(14),
	datac => \A_DataPath|K_ComparadorCombustivel|LessThan0~24_combout\,
	datad => \A_DataPath|G_RegNivelCombustivel|conteudo\(13),
	combout => \A_DataPath|K_ComparadorCombustivel|LessThan0~26_combout\);

-- Location: LCCOMB_X47_Y26_N22
\B_Controladora|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|Selector5~1_combout\ = (\BotaoCarregar~combout\ & (\B_Controladora|Selector5~0_combout\ & ((\A_DataPath|K_ComparadorCombustivel|LessThan0~26_combout\)))) # (!\BotaoCarregar~combout\ & ((\B_Controladora|estado_atual.S7~regout\) # 
-- ((\B_Controladora|Selector5~0_combout\ & \A_DataPath|K_ComparadorCombustivel|LessThan0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BotaoCarregar~combout\,
	datab => \B_Controladora|Selector5~0_combout\,
	datac => \B_Controladora|estado_atual.S7~regout\,
	datad => \A_DataPath|K_ComparadorCombustivel|LessThan0~26_combout\,
	combout => \B_Controladora|Selector5~1_combout\);

-- Location: LCFF_X47_Y26_N23
\B_Controladora|estado_atual.S7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \B_Controladora|Selector5~1_combout\,
	aclr => \ClrControladora~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B_Controladora|estado_atual.S7~regout\);

-- Location: LCCOMB_X40_Y28_N22
\B_Controladora|proximo_estado.S8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|proximo_estado.S8~0_combout\ = (\BotaoCarregar~combout\ & \B_Controladora|estado_atual.S7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BotaoCarregar~combout\,
	datad => \B_Controladora|estado_atual.S7~regout\,
	combout => \B_Controladora|proximo_estado.S8~0_combout\);

-- Location: LCFF_X40_Y28_N23
\B_Controladora|estado_atual.S8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \B_Controladora|proximo_estado.S8~0_combout\,
	aclr => \ClrControladora~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B_Controladora|estado_atual.S8~regout\);

-- Location: LCCOMB_X41_Y29_N6
\A_DataPath|TemporizadorCarregamento|count[2]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[2]~43_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(2) & (\A_DataPath|TemporizadorCarregamento|count[1]~42\ $ (GND))) # (!\A_DataPath|TemporizadorCarregamento|count\(2) & 
-- (!\A_DataPath|TemporizadorCarregamento|count[1]~42\ & VCC))
-- \A_DataPath|TemporizadorCarregamento|count[2]~44\ = CARRY((\A_DataPath|TemporizadorCarregamento|count\(2) & !\A_DataPath|TemporizadorCarregamento|count[1]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|count\(2),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[1]~42\,
	combout => \A_DataPath|TemporizadorCarregamento|count[2]~43_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[2]~44\);

-- Location: LCFF_X41_Y29_N7
\A_DataPath|TemporizadorCarregamento|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[2]~43_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(2));

-- Location: LCCOMB_X40_Y28_N18
\A_DataPath|TemporizadorCarregamento|count[6]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[6]~49_combout\ = ((!\A_DataPath|TemporizadorCarregamento|count\(2) & !\A_DataPath|TemporizadorCarregamento|count\(1))) # (!\A_DataPath|TemporizadorCarregamento|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorCarregamento|count\(2),
	datac => \A_DataPath|TemporizadorCarregamento|count\(1),
	datad => \A_DataPath|TemporizadorCarregamento|count\(3),
	combout => \A_DataPath|TemporizadorCarregamento|count[6]~49_combout\);

-- Location: LCCOMB_X41_Y28_N8
\A_DataPath|TemporizadorCarregamento|count[19]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[19]~79_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(19) & (!\A_DataPath|TemporizadorCarregamento|count[18]~78\)) # (!\A_DataPath|TemporizadorCarregamento|count\(19) & 
-- ((\A_DataPath|TemporizadorCarregamento|count[18]~78\) # (GND)))
-- \A_DataPath|TemporizadorCarregamento|count[19]~80\ = CARRY((!\A_DataPath|TemporizadorCarregamento|count[18]~78\) # (!\A_DataPath|TemporizadorCarregamento|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorCarregamento|count\(19),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[18]~78\,
	combout => \A_DataPath|TemporizadorCarregamento|count[19]~79_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[19]~80\);

-- Location: LCCOMB_X41_Y28_N10
\A_DataPath|TemporizadorCarregamento|count[20]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[20]~81_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(20) & (\A_DataPath|TemporizadorCarregamento|count[19]~80\ $ (GND))) # (!\A_DataPath|TemporizadorCarregamento|count\(20) & 
-- (!\A_DataPath|TemporizadorCarregamento|count[19]~80\ & VCC))
-- \A_DataPath|TemporizadorCarregamento|count[20]~82\ = CARRY((\A_DataPath|TemporizadorCarregamento|count\(20) & !\A_DataPath|TemporizadorCarregamento|count[19]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|count\(20),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[19]~80\,
	combout => \A_DataPath|TemporizadorCarregamento|count[20]~81_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[20]~82\);

-- Location: LCCOMB_X41_Y28_N12
\A_DataPath|TemporizadorCarregamento|count[21]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[21]~83_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(21) & (!\A_DataPath|TemporizadorCarregamento|count[20]~82\)) # (!\A_DataPath|TemporizadorCarregamento|count\(21) & 
-- ((\A_DataPath|TemporizadorCarregamento|count[20]~82\) # (GND)))
-- \A_DataPath|TemporizadorCarregamento|count[21]~84\ = CARRY((!\A_DataPath|TemporizadorCarregamento|count[20]~82\) # (!\A_DataPath|TemporizadorCarregamento|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|count\(21),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[20]~82\,
	combout => \A_DataPath|TemporizadorCarregamento|count[21]~83_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[21]~84\);

-- Location: LCCOMB_X41_Y28_N14
\A_DataPath|TemporizadorCarregamento|count[22]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[22]~85_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(22) & (\A_DataPath|TemporizadorCarregamento|count[21]~84\ $ (GND))) # (!\A_DataPath|TemporizadorCarregamento|count\(22) & 
-- (!\A_DataPath|TemporizadorCarregamento|count[21]~84\ & VCC))
-- \A_DataPath|TemporizadorCarregamento|count[22]~86\ = CARRY((\A_DataPath|TemporizadorCarregamento|count\(22) & !\A_DataPath|TemporizadorCarregamento|count[21]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorCarregamento|count\(22),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[21]~84\,
	combout => \A_DataPath|TemporizadorCarregamento|count[22]~85_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[22]~86\);

-- Location: LCFF_X41_Y28_N15
\A_DataPath|TemporizadorCarregamento|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[22]~85_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(22));

-- Location: LCFF_X41_Y28_N17
\A_DataPath|TemporizadorCarregamento|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[23]~87_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(23));

-- Location: LCFF_X41_Y28_N11
\A_DataPath|TemporizadorCarregamento|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[20]~81_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(20));

-- Location: LCFF_X41_Y28_N13
\A_DataPath|TemporizadorCarregamento|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[21]~83_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(21));

-- Location: LCCOMB_X42_Y28_N8
\A_DataPath|TemporizadorCarregamento|count[6]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[6]~36_combout\ = (!\A_DataPath|TemporizadorCarregamento|count\(22) & (!\A_DataPath|TemporizadorCarregamento|count\(23) & (!\A_DataPath|TemporizadorCarregamento|count\(20) & 
-- !\A_DataPath|TemporizadorCarregamento|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|count\(22),
	datab => \A_DataPath|TemporizadorCarregamento|count\(23),
	datac => \A_DataPath|TemporizadorCarregamento|count\(20),
	datad => \A_DataPath|TemporizadorCarregamento|count\(21),
	combout => \A_DataPath|TemporizadorCarregamento|count[6]~36_combout\);

-- Location: LCCOMB_X40_Y28_N0
\A_DataPath|TemporizadorCarregamento|count[6]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\ = (\A_DataPath|TemporizadorCarregamento|count[6]~38_combout\ & (\A_DataPath|TemporizadorCarregamento|count[6]~49_combout\ & (\A_DataPath|TemporizadorCarregamento|count[6]~36_combout\ & 
-- \A_DataPath|TemporizadorCarregamento|count[6]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|count[6]~38_combout\,
	datab => \A_DataPath|TemporizadorCarregamento|count[6]~49_combout\,
	datac => \A_DataPath|TemporizadorCarregamento|count[6]~36_combout\,
	datad => \A_DataPath|TemporizadorCarregamento|count[6]~35_combout\,
	combout => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\);

-- Location: LCFF_X41_Y29_N3
\A_DataPath|TemporizadorCarregamento|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[0]~39_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(0));

-- Location: LCCOMB_X41_Y29_N4
\A_DataPath|TemporizadorCarregamento|count[1]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[1]~41_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(1) & (!\A_DataPath|TemporizadorCarregamento|count[0]~40\)) # (!\A_DataPath|TemporizadorCarregamento|count\(1) & 
-- ((\A_DataPath|TemporizadorCarregamento|count[0]~40\) # (GND)))
-- \A_DataPath|TemporizadorCarregamento|count[1]~42\ = CARRY((!\A_DataPath|TemporizadorCarregamento|count[0]~40\) # (!\A_DataPath|TemporizadorCarregamento|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorCarregamento|count\(1),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[0]~40\,
	combout => \A_DataPath|TemporizadorCarregamento|count[1]~41_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[1]~42\);

-- Location: LCFF_X41_Y29_N5
\A_DataPath|TemporizadorCarregamento|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[1]~41_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(1));

-- Location: LCCOMB_X41_Y29_N8
\A_DataPath|TemporizadorCarregamento|count[3]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[3]~45_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(3) & (!\A_DataPath|TemporizadorCarregamento|count[2]~44\)) # (!\A_DataPath|TemporizadorCarregamento|count\(3) & 
-- ((\A_DataPath|TemporizadorCarregamento|count[2]~44\) # (GND)))
-- \A_DataPath|TemporizadorCarregamento|count[3]~46\ = CARRY((!\A_DataPath|TemporizadorCarregamento|count[2]~44\) # (!\A_DataPath|TemporizadorCarregamento|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorCarregamento|count\(3),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[2]~44\,
	combout => \A_DataPath|TemporizadorCarregamento|count[3]~45_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[3]~46\);

-- Location: LCFF_X41_Y29_N9
\A_DataPath|TemporizadorCarregamento|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[3]~45_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(3));

-- Location: LCCOMB_X41_Y29_N10
\A_DataPath|TemporizadorCarregamento|count[4]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[4]~47_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(4) & (\A_DataPath|TemporizadorCarregamento|count[3]~46\ $ (GND))) # (!\A_DataPath|TemporizadorCarregamento|count\(4) & 
-- (!\A_DataPath|TemporizadorCarregamento|count[3]~46\ & VCC))
-- \A_DataPath|TemporizadorCarregamento|count[4]~48\ = CARRY((\A_DataPath|TemporizadorCarregamento|count\(4) & !\A_DataPath|TemporizadorCarregamento|count[3]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|count\(4),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[3]~46\,
	combout => \A_DataPath|TemporizadorCarregamento|count[4]~47_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[4]~48\);

-- Location: LCCOMB_X41_Y29_N12
\A_DataPath|TemporizadorCarregamento|count[5]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[5]~51_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(5) & (!\A_DataPath|TemporizadorCarregamento|count[4]~48\)) # (!\A_DataPath|TemporizadorCarregamento|count\(5) & 
-- ((\A_DataPath|TemporizadorCarregamento|count[4]~48\) # (GND)))
-- \A_DataPath|TemporizadorCarregamento|count[5]~52\ = CARRY((!\A_DataPath|TemporizadorCarregamento|count[4]~48\) # (!\A_DataPath|TemporizadorCarregamento|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|count\(5),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[4]~48\,
	combout => \A_DataPath|TemporizadorCarregamento|count[5]~51_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[5]~52\);

-- Location: LCCOMB_X41_Y29_N14
\A_DataPath|TemporizadorCarregamento|count[6]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[6]~53_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(6) & (\A_DataPath|TemporizadorCarregamento|count[5]~52\ $ (GND))) # (!\A_DataPath|TemporizadorCarregamento|count\(6) & 
-- (!\A_DataPath|TemporizadorCarregamento|count[5]~52\ & VCC))
-- \A_DataPath|TemporizadorCarregamento|count[6]~54\ = CARRY((\A_DataPath|TemporizadorCarregamento|count\(6) & !\A_DataPath|TemporizadorCarregamento|count[5]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorCarregamento|count\(6),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[5]~52\,
	combout => \A_DataPath|TemporizadorCarregamento|count[6]~53_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[6]~54\);

-- Location: LCFF_X41_Y29_N15
\A_DataPath|TemporizadorCarregamento|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[6]~53_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(6));

-- Location: LCCOMB_X41_Y29_N16
\A_DataPath|TemporizadorCarregamento|count[7]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[7]~55_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(7) & (!\A_DataPath|TemporizadorCarregamento|count[6]~54\)) # (!\A_DataPath|TemporizadorCarregamento|count\(7) & 
-- ((\A_DataPath|TemporizadorCarregamento|count[6]~54\) # (GND)))
-- \A_DataPath|TemporizadorCarregamento|count[7]~56\ = CARRY((!\A_DataPath|TemporizadorCarregamento|count[6]~54\) # (!\A_DataPath|TemporizadorCarregamento|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|count\(7),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[6]~54\,
	combout => \A_DataPath|TemporizadorCarregamento|count[7]~55_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[7]~56\);

-- Location: LCCOMB_X41_Y29_N18
\A_DataPath|TemporizadorCarregamento|count[8]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[8]~57_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(8) & (\A_DataPath|TemporizadorCarregamento|count[7]~56\ $ (GND))) # (!\A_DataPath|TemporizadorCarregamento|count\(8) & 
-- (!\A_DataPath|TemporizadorCarregamento|count[7]~56\ & VCC))
-- \A_DataPath|TemporizadorCarregamento|count[8]~58\ = CARRY((\A_DataPath|TemporizadorCarregamento|count\(8) & !\A_DataPath|TemporizadorCarregamento|count[7]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorCarregamento|count\(8),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[7]~56\,
	combout => \A_DataPath|TemporizadorCarregamento|count[8]~57_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[8]~58\);

-- Location: LCFF_X41_Y29_N19
\A_DataPath|TemporizadorCarregamento|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[8]~57_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(8));

-- Location: LCCOMB_X41_Y29_N22
\A_DataPath|TemporizadorCarregamento|count[10]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[10]~61_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(10) & (\A_DataPath|TemporizadorCarregamento|count[9]~60\ $ (GND))) # (!\A_DataPath|TemporizadorCarregamento|count\(10) & 
-- (!\A_DataPath|TemporizadorCarregamento|count[9]~60\ & VCC))
-- \A_DataPath|TemporizadorCarregamento|count[10]~62\ = CARRY((\A_DataPath|TemporizadorCarregamento|count\(10) & !\A_DataPath|TemporizadorCarregamento|count[9]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorCarregamento|count\(10),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[9]~60\,
	combout => \A_DataPath|TemporizadorCarregamento|count[10]~61_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[10]~62\);

-- Location: LCFF_X41_Y29_N23
\A_DataPath|TemporizadorCarregamento|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[10]~61_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(10));

-- Location: LCCOMB_X41_Y29_N24
\A_DataPath|TemporizadorCarregamento|count[11]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[11]~63_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(11) & (!\A_DataPath|TemporizadorCarregamento|count[10]~62\)) # (!\A_DataPath|TemporizadorCarregamento|count\(11) & 
-- ((\A_DataPath|TemporizadorCarregamento|count[10]~62\) # (GND)))
-- \A_DataPath|TemporizadorCarregamento|count[11]~64\ = CARRY((!\A_DataPath|TemporizadorCarregamento|count[10]~62\) # (!\A_DataPath|TemporizadorCarregamento|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|count\(11),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[10]~62\,
	combout => \A_DataPath|TemporizadorCarregamento|count[11]~63_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[11]~64\);

-- Location: LCCOMB_X41_Y29_N26
\A_DataPath|TemporizadorCarregamento|count[12]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[12]~65_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(12) & (\A_DataPath|TemporizadorCarregamento|count[11]~64\ $ (GND))) # (!\A_DataPath|TemporizadorCarregamento|count\(12) & 
-- (!\A_DataPath|TemporizadorCarregamento|count[11]~64\ & VCC))
-- \A_DataPath|TemporizadorCarregamento|count[12]~66\ = CARRY((\A_DataPath|TemporizadorCarregamento|count\(12) & !\A_DataPath|TemporizadorCarregamento|count[11]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorCarregamento|count\(12),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[11]~64\,
	combout => \A_DataPath|TemporizadorCarregamento|count[12]~65_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[12]~66\);

-- Location: LCFF_X41_Y29_N27
\A_DataPath|TemporizadorCarregamento|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[12]~65_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(12));

-- Location: LCCOMB_X41_Y29_N28
\A_DataPath|TemporizadorCarregamento|count[13]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[13]~67_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(13) & (!\A_DataPath|TemporizadorCarregamento|count[12]~66\)) # (!\A_DataPath|TemporizadorCarregamento|count\(13) & 
-- ((\A_DataPath|TemporizadorCarregamento|count[12]~66\) # (GND)))
-- \A_DataPath|TemporizadorCarregamento|count[13]~68\ = CARRY((!\A_DataPath|TemporizadorCarregamento|count[12]~66\) # (!\A_DataPath|TemporizadorCarregamento|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorCarregamento|count\(13),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[12]~66\,
	combout => \A_DataPath|TemporizadorCarregamento|count[13]~67_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[13]~68\);

-- Location: LCFF_X41_Y29_N29
\A_DataPath|TemporizadorCarregamento|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[13]~67_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(13));

-- Location: LCCOMB_X41_Y29_N30
\A_DataPath|TemporizadorCarregamento|count[14]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[14]~69_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(14) & (\A_DataPath|TemporizadorCarregamento|count[13]~68\ $ (GND))) # (!\A_DataPath|TemporizadorCarregamento|count\(14) & 
-- (!\A_DataPath|TemporizadorCarregamento|count[13]~68\ & VCC))
-- \A_DataPath|TemporizadorCarregamento|count[14]~70\ = CARRY((\A_DataPath|TemporizadorCarregamento|count\(14) & !\A_DataPath|TemporizadorCarregamento|count[13]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorCarregamento|count\(14),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[13]~68\,
	combout => \A_DataPath|TemporizadorCarregamento|count[14]~69_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[14]~70\);

-- Location: LCFF_X41_Y29_N31
\A_DataPath|TemporizadorCarregamento|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[14]~69_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(14));

-- Location: LCCOMB_X41_Y28_N0
\A_DataPath|TemporizadorCarregamento|count[15]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[15]~71_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(15) & (!\A_DataPath|TemporizadorCarregamento|count[14]~70\)) # (!\A_DataPath|TemporizadorCarregamento|count\(15) & 
-- ((\A_DataPath|TemporizadorCarregamento|count[14]~70\) # (GND)))
-- \A_DataPath|TemporizadorCarregamento|count[15]~72\ = CARRY((!\A_DataPath|TemporizadorCarregamento|count[14]~70\) # (!\A_DataPath|TemporizadorCarregamento|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorCarregamento|count\(15),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[14]~70\,
	combout => \A_DataPath|TemporizadorCarregamento|count[15]~71_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[15]~72\);

-- Location: LCFF_X41_Y28_N1
\A_DataPath|TemporizadorCarregamento|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[15]~71_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(15));

-- Location: LCCOMB_X41_Y28_N2
\A_DataPath|TemporizadorCarregamento|count[16]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[16]~73_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(16) & (\A_DataPath|TemporizadorCarregamento|count[15]~72\ $ (GND))) # (!\A_DataPath|TemporizadorCarregamento|count\(16) & 
-- (!\A_DataPath|TemporizadorCarregamento|count[15]~72\ & VCC))
-- \A_DataPath|TemporizadorCarregamento|count[16]~74\ = CARRY((\A_DataPath|TemporizadorCarregamento|count\(16) & !\A_DataPath|TemporizadorCarregamento|count[15]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorCarregamento|count\(16),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[15]~72\,
	combout => \A_DataPath|TemporizadorCarregamento|count[16]~73_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[16]~74\);

-- Location: LCFF_X41_Y28_N3
\A_DataPath|TemporizadorCarregamento|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[16]~73_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(16));

-- Location: LCCOMB_X41_Y28_N4
\A_DataPath|TemporizadorCarregamento|count[17]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[17]~75_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(17) & (!\A_DataPath|TemporizadorCarregamento|count[16]~74\)) # (!\A_DataPath|TemporizadorCarregamento|count\(17) & 
-- ((\A_DataPath|TemporizadorCarregamento|count[16]~74\) # (GND)))
-- \A_DataPath|TemporizadorCarregamento|count[17]~76\ = CARRY((!\A_DataPath|TemporizadorCarregamento|count[16]~74\) # (!\A_DataPath|TemporizadorCarregamento|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorCarregamento|count\(17),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[16]~74\,
	combout => \A_DataPath|TemporizadorCarregamento|count[17]~75_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[17]~76\);

-- Location: LCFF_X41_Y28_N5
\A_DataPath|TemporizadorCarregamento|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[17]~75_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(17));

-- Location: LCCOMB_X41_Y28_N6
\A_DataPath|TemporizadorCarregamento|count[18]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[18]~77_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(18) & (\A_DataPath|TemporizadorCarregamento|count[17]~76\ $ (GND))) # (!\A_DataPath|TemporizadorCarregamento|count\(18) & 
-- (!\A_DataPath|TemporizadorCarregamento|count[17]~76\ & VCC))
-- \A_DataPath|TemporizadorCarregamento|count[18]~78\ = CARRY((\A_DataPath|TemporizadorCarregamento|count\(18) & !\A_DataPath|TemporizadorCarregamento|count[17]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|count\(18),
	datad => VCC,
	cin => \A_DataPath|TemporizadorCarregamento|count[17]~76\,
	combout => \A_DataPath|TemporizadorCarregamento|count[18]~77_combout\,
	cout => \A_DataPath|TemporizadorCarregamento|count[18]~78\);

-- Location: LCFF_X41_Y28_N9
\A_DataPath|TemporizadorCarregamento|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[19]~79_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(19));

-- Location: LCFF_X41_Y28_N7
\A_DataPath|TemporizadorCarregamento|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[18]~77_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(18));

-- Location: LCCOMB_X40_Y28_N30
\A_DataPath|TemporizadorCarregamento|count[6]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[6]~34_combout\ = (!\A_DataPath|TemporizadorCarregamento|count\(16) & (!\A_DataPath|TemporizadorCarregamento|count\(19) & (!\A_DataPath|TemporizadorCarregamento|count\(17) & 
-- !\A_DataPath|TemporizadorCarregamento|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|count\(16),
	datab => \A_DataPath|TemporizadorCarregamento|count\(19),
	datac => \A_DataPath|TemporizadorCarregamento|count\(17),
	datad => \A_DataPath|TemporizadorCarregamento|count\(18),
	combout => \A_DataPath|TemporizadorCarregamento|count[6]~34_combout\);

-- Location: LCFF_X41_Y29_N13
\A_DataPath|TemporizadorCarregamento|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[5]~51_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(5));

-- Location: LCFF_X41_Y29_N17
\A_DataPath|TemporizadorCarregamento|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[7]~55_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(7));

-- Location: LCFF_X41_Y29_N11
\A_DataPath|TemporizadorCarregamento|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[4]~47_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(4));

-- Location: LCCOMB_X40_Y28_N14
\A_DataPath|TemporizadorCarregamento|count[6]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[6]~31_combout\ = (!\A_DataPath|TemporizadorCarregamento|count\(6) & (!\A_DataPath|TemporizadorCarregamento|count\(5) & (!\A_DataPath|TemporizadorCarregamento|count\(7) & 
-- !\A_DataPath|TemporizadorCarregamento|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|count\(6),
	datab => \A_DataPath|TemporizadorCarregamento|count\(5),
	datac => \A_DataPath|TemporizadorCarregamento|count\(7),
	datad => \A_DataPath|TemporizadorCarregamento|count\(4),
	combout => \A_DataPath|TemporizadorCarregamento|count[6]~31_combout\);

-- Location: LCFF_X41_Y29_N25
\A_DataPath|TemporizadorCarregamento|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|count[11]~63_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	ena => \A_DataPath|TemporizadorCarregamento|count[6]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|count\(11));

-- Location: LCCOMB_X41_Y29_N0
\A_DataPath|TemporizadorCarregamento|count[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[6]~32_combout\ = (!\A_DataPath|TemporizadorCarregamento|count\(9) & (!\A_DataPath|TemporizadorCarregamento|count\(8) & (!\A_DataPath|TemporizadorCarregamento|count\(11) & 
-- !\A_DataPath|TemporizadorCarregamento|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|count\(9),
	datab => \A_DataPath|TemporizadorCarregamento|count\(8),
	datac => \A_DataPath|TemporizadorCarregamento|count\(11),
	datad => \A_DataPath|TemporizadorCarregamento|count\(10),
	combout => \A_DataPath|TemporizadorCarregamento|count[6]~32_combout\);

-- Location: LCCOMB_X40_Y28_N28
\A_DataPath|TemporizadorCarregamento|count[6]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|count[6]~35_combout\ = (\A_DataPath|TemporizadorCarregamento|count[6]~33_combout\ & (\A_DataPath|TemporizadorCarregamento|count[6]~34_combout\ & (\A_DataPath|TemporizadorCarregamento|count[6]~31_combout\ & 
-- \A_DataPath|TemporizadorCarregamento|count[6]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|count[6]~33_combout\,
	datab => \A_DataPath|TemporizadorCarregamento|count[6]~34_combout\,
	datac => \A_DataPath|TemporizadorCarregamento|count[6]~31_combout\,
	datad => \A_DataPath|TemporizadorCarregamento|count[6]~32_combout\,
	combout => \A_DataPath|TemporizadorCarregamento|count[6]~35_combout\);

-- Location: LCCOMB_X40_Y28_N26
\A_DataPath|TemporizadorCarregamento|Output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|Output~0_combout\ = (\A_DataPath|TemporizadorCarregamento|count\(3) & (((!\A_DataPath|TemporizadorCarregamento|count\(2) & !\A_DataPath|TemporizadorCarregamento|count\(1))))) # 
-- (!\A_DataPath|TemporizadorCarregamento|count\(3) & (\A_DataPath|TemporizadorCarregamento|Output~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|Output~regout\,
	datab => \A_DataPath|TemporizadorCarregamento|count\(2),
	datac => \A_DataPath|TemporizadorCarregamento|count\(1),
	datad => \A_DataPath|TemporizadorCarregamento|count\(3),
	combout => \A_DataPath|TemporizadorCarregamento|Output~0_combout\);

-- Location: LCCOMB_X40_Y28_N12
\A_DataPath|TemporizadorCarregamento|Output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorCarregamento|Output~1_combout\ = (\A_DataPath|TemporizadorCarregamento|count[6]~38_combout\ & (\A_DataPath|TemporizadorCarregamento|count[6]~35_combout\ & (\A_DataPath|TemporizadorCarregamento|count[6]~36_combout\ & 
-- \A_DataPath|TemporizadorCarregamento|Output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorCarregamento|count[6]~38_combout\,
	datab => \A_DataPath|TemporizadorCarregamento|count[6]~35_combout\,
	datac => \A_DataPath|TemporizadorCarregamento|count[6]~36_combout\,
	datad => \A_DataPath|TemporizadorCarregamento|Output~0_combout\,
	combout => \A_DataPath|TemporizadorCarregamento|Output~1_combout\);

-- Location: LCFF_X40_Y28_N13
\A_DataPath|TemporizadorCarregamento|Output\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorCarregamento|Output~1_combout\,
	aclr => \B_Controladora|estado_atual.S8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorCarregamento|Output~regout\);

-- Location: LCCOMB_X40_Y28_N8
\B_Controladora|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|Selector7~0_combout\ = (\B_Controladora|estado_atual.S9~regout\ & ((\A_DataPath|TemporizadorCarregamento|Output~regout\) # ((!\BotaoLiga~combout\ & \B_Controladora|estado_atual.S10~regout\)))) # (!\B_Controladora|estado_atual.S9~regout\ & 
-- (!\BotaoLiga~combout\ & (\B_Controladora|estado_atual.S10~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Controladora|estado_atual.S9~regout\,
	datab => \BotaoLiga~combout\,
	datac => \B_Controladora|estado_atual.S10~regout\,
	datad => \A_DataPath|TemporizadorCarregamento|Output~regout\,
	combout => \B_Controladora|Selector7~0_combout\);

-- Location: LCFF_X40_Y28_N9
\B_Controladora|estado_atual.S10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \B_Controladora|Selector7~0_combout\,
	aclr => \ClrControladora~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B_Controladora|estado_atual.S10~regout\);

-- Location: LCCOMB_X38_Y29_N16
\B_Controladora|proximo_estado.S11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|proximo_estado.S11~0_combout\ = (\BotaoLiga~combout\ & \B_Controladora|estado_atual.S10~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BotaoLiga~combout\,
	datad => \B_Controladora|estado_atual.S10~regout\,
	combout => \B_Controladora|proximo_estado.S11~0_combout\);

-- Location: LCFF_X38_Y29_N17
\B_Controladora|estado_atual.S11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \B_Controladora|proximo_estado.S11~0_combout\,
	aclr => \ClrControladora~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B_Controladora|estado_atual.S11~regout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BotaoDesliga~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_BotaoDesliga,
	combout => \BotaoDesliga~combout\);

-- Location: LCCOMB_X37_Y29_N2
\A_DataPath|TemporizadorAquecimento|count[0]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[0]~31_combout\ = \A_DataPath|TemporizadorAquecimento|count\(0) $ (VCC)
-- \A_DataPath|TemporizadorAquecimento|count[0]~32\ = CARRY(\A_DataPath|TemporizadorAquecimento|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorAquecimento|count\(0),
	datad => VCC,
	combout => \A_DataPath|TemporizadorAquecimento|count[0]~31_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[0]~32\);

-- Location: LCCOMB_X37_Y29_N4
\A_DataPath|TemporizadorAquecimento|count[1]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[1]~33_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(1) & (!\A_DataPath|TemporizadorAquecimento|count[0]~32\)) # (!\A_DataPath|TemporizadorAquecimento|count\(1) & 
-- ((\A_DataPath|TemporizadorAquecimento|count[0]~32\) # (GND)))
-- \A_DataPath|TemporizadorAquecimento|count[1]~34\ = CARRY((!\A_DataPath|TemporizadorAquecimento|count[0]~32\) # (!\A_DataPath|TemporizadorAquecimento|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorAquecimento|count\(1),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[0]~32\,
	combout => \A_DataPath|TemporizadorAquecimento|count[1]~33_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[1]~34\);

-- Location: LCCOMB_X37_Y29_N6
\A_DataPath|TemporizadorAquecimento|count[2]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[2]~35_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(2) & (\A_DataPath|TemporizadorAquecimento|count[1]~34\ $ (GND))) # (!\A_DataPath|TemporizadorAquecimento|count\(2) & 
-- (!\A_DataPath|TemporizadorAquecimento|count[1]~34\ & VCC))
-- \A_DataPath|TemporizadorAquecimento|count[2]~36\ = CARRY((\A_DataPath|TemporizadorAquecimento|count\(2) & !\A_DataPath|TemporizadorAquecimento|count[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|count\(2),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[1]~34\,
	combout => \A_DataPath|TemporizadorAquecimento|count[2]~35_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[2]~36\);

-- Location: LCFF_X37_Y29_N7
\A_DataPath|TemporizadorAquecimento|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[2]~35_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(2));

-- Location: LCCOMB_X37_Y29_N8
\A_DataPath|TemporizadorAquecimento|count[3]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[3]~37_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(3) & (!\A_DataPath|TemporizadorAquecimento|count[2]~36\)) # (!\A_DataPath|TemporizadorAquecimento|count\(3) & 
-- ((\A_DataPath|TemporizadorAquecimento|count[2]~36\) # (GND)))
-- \A_DataPath|TemporizadorAquecimento|count[3]~38\ = CARRY((!\A_DataPath|TemporizadorAquecimento|count[2]~36\) # (!\A_DataPath|TemporizadorAquecimento|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorAquecimento|count\(3),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[2]~36\,
	combout => \A_DataPath|TemporizadorAquecimento|count[3]~37_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[3]~38\);

-- Location: LCFF_X37_Y29_N9
\A_DataPath|TemporizadorAquecimento|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[3]~37_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(3));

-- Location: LCCOMB_X37_Y29_N10
\A_DataPath|TemporizadorAquecimento|count[4]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[4]~39_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(4) & (\A_DataPath|TemporizadorAquecimento|count[3]~38\ $ (GND))) # (!\A_DataPath|TemporizadorAquecimento|count\(4) & 
-- (!\A_DataPath|TemporizadorAquecimento|count[3]~38\ & VCC))
-- \A_DataPath|TemporizadorAquecimento|count[4]~40\ = CARRY((\A_DataPath|TemporizadorAquecimento|count\(4) & !\A_DataPath|TemporizadorAquecimento|count[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|count\(4),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[3]~38\,
	combout => \A_DataPath|TemporizadorAquecimento|count[4]~39_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[4]~40\);

-- Location: LCFF_X37_Y29_N11
\A_DataPath|TemporizadorAquecimento|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[4]~39_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(4));

-- Location: LCCOMB_X38_Y28_N30
\A_DataPath|TemporizadorAquecimento|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|LessThan1~0_combout\ = ((!\A_DataPath|TemporizadorAquecimento|count\(3) & !\A_DataPath|TemporizadorAquecimento|count\(2))) # (!\A_DataPath|TemporizadorAquecimento|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|count\(3),
	datac => \A_DataPath|TemporizadorAquecimento|count\(2),
	datad => \A_DataPath|TemporizadorAquecimento|count\(4),
	combout => \A_DataPath|TemporizadorAquecimento|LessThan1~0_combout\);

-- Location: LCCOMB_X37_Y29_N14
\A_DataPath|TemporizadorAquecimento|count[6]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[6]~43_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(6) & (\A_DataPath|TemporizadorAquecimento|count[5]~42\ $ (GND))) # (!\A_DataPath|TemporizadorAquecimento|count\(6) & 
-- (!\A_DataPath|TemporizadorAquecimento|count[5]~42\ & VCC))
-- \A_DataPath|TemporizadorAquecimento|count[6]~44\ = CARRY((\A_DataPath|TemporizadorAquecimento|count\(6) & !\A_DataPath|TemporizadorAquecimento|count[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorAquecimento|count\(6),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[5]~42\,
	combout => \A_DataPath|TemporizadorAquecimento|count[6]~43_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[6]~44\);

-- Location: LCFF_X37_Y29_N15
\A_DataPath|TemporizadorAquecimento|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[6]~43_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(6));

-- Location: LCCOMB_X37_Y29_N16
\A_DataPath|TemporizadorAquecimento|count[7]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[7]~45_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(7) & (!\A_DataPath|TemporizadorAquecimento|count[6]~44\)) # (!\A_DataPath|TemporizadorAquecimento|count\(7) & 
-- ((\A_DataPath|TemporizadorAquecimento|count[6]~44\) # (GND)))
-- \A_DataPath|TemporizadorAquecimento|count[7]~46\ = CARRY((!\A_DataPath|TemporizadorAquecimento|count[6]~44\) # (!\A_DataPath|TemporizadorAquecimento|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|count\(7),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[6]~44\,
	combout => \A_DataPath|TemporizadorAquecimento|count[7]~45_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[7]~46\);

-- Location: LCCOMB_X37_Y29_N18
\A_DataPath|TemporizadorAquecimento|count[8]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[8]~47_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(8) & (\A_DataPath|TemporizadorAquecimento|count[7]~46\ $ (GND))) # (!\A_DataPath|TemporizadorAquecimento|count\(8) & 
-- (!\A_DataPath|TemporizadorAquecimento|count[7]~46\ & VCC))
-- \A_DataPath|TemporizadorAquecimento|count[8]~48\ = CARRY((\A_DataPath|TemporizadorAquecimento|count\(8) & !\A_DataPath|TemporizadorAquecimento|count[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorAquecimento|count\(8),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[7]~46\,
	combout => \A_DataPath|TemporizadorAquecimento|count[8]~47_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[8]~48\);

-- Location: LCFF_X37_Y29_N19
\A_DataPath|TemporizadorAquecimento|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[8]~47_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(8));

-- Location: LCCOMB_X37_Y29_N22
\A_DataPath|TemporizadorAquecimento|count[10]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[10]~51_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(10) & (\A_DataPath|TemporizadorAquecimento|count[9]~50\ $ (GND))) # (!\A_DataPath|TemporizadorAquecimento|count\(10) & 
-- (!\A_DataPath|TemporizadorAquecimento|count[9]~50\ & VCC))
-- \A_DataPath|TemporizadorAquecimento|count[10]~52\ = CARRY((\A_DataPath|TemporizadorAquecimento|count\(10) & !\A_DataPath|TemporizadorAquecimento|count[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorAquecimento|count\(10),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[9]~50\,
	combout => \A_DataPath|TemporizadorAquecimento|count[10]~51_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[10]~52\);

-- Location: LCFF_X37_Y29_N23
\A_DataPath|TemporizadorAquecimento|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[10]~51_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(10));

-- Location: LCCOMB_X37_Y29_N24
\A_DataPath|TemporizadorAquecimento|count[11]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[11]~53_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(11) & (!\A_DataPath|TemporizadorAquecimento|count[10]~52\)) # (!\A_DataPath|TemporizadorAquecimento|count\(11) & 
-- ((\A_DataPath|TemporizadorAquecimento|count[10]~52\) # (GND)))
-- \A_DataPath|TemporizadorAquecimento|count[11]~54\ = CARRY((!\A_DataPath|TemporizadorAquecimento|count[10]~52\) # (!\A_DataPath|TemporizadorAquecimento|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|count\(11),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[10]~52\,
	combout => \A_DataPath|TemporizadorAquecimento|count[11]~53_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[11]~54\);

-- Location: LCCOMB_X37_Y29_N26
\A_DataPath|TemporizadorAquecimento|count[12]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[12]~55_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(12) & (\A_DataPath|TemporizadorAquecimento|count[11]~54\ $ (GND))) # (!\A_DataPath|TemporizadorAquecimento|count\(12) & 
-- (!\A_DataPath|TemporizadorAquecimento|count[11]~54\ & VCC))
-- \A_DataPath|TemporizadorAquecimento|count[12]~56\ = CARRY((\A_DataPath|TemporizadorAquecimento|count\(12) & !\A_DataPath|TemporizadorAquecimento|count[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorAquecimento|count\(12),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[11]~54\,
	combout => \A_DataPath|TemporizadorAquecimento|count[12]~55_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[12]~56\);

-- Location: LCFF_X37_Y29_N27
\A_DataPath|TemporizadorAquecimento|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[12]~55_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(12));

-- Location: LCCOMB_X37_Y29_N28
\A_DataPath|TemporizadorAquecimento|count[13]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[13]~57_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(13) & (!\A_DataPath|TemporizadorAquecimento|count[12]~56\)) # (!\A_DataPath|TemporizadorAquecimento|count\(13) & 
-- ((\A_DataPath|TemporizadorAquecimento|count[12]~56\) # (GND)))
-- \A_DataPath|TemporizadorAquecimento|count[13]~58\ = CARRY((!\A_DataPath|TemporizadorAquecimento|count[12]~56\) # (!\A_DataPath|TemporizadorAquecimento|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorAquecimento|count\(13),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[12]~56\,
	combout => \A_DataPath|TemporizadorAquecimento|count[13]~57_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[13]~58\);

-- Location: LCFF_X37_Y29_N29
\A_DataPath|TemporizadorAquecimento|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[13]~57_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(13));

-- Location: LCCOMB_X37_Y29_N30
\A_DataPath|TemporizadorAquecimento|count[14]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[14]~59_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(14) & (\A_DataPath|TemporizadorAquecimento|count[13]~58\ $ (GND))) # (!\A_DataPath|TemporizadorAquecimento|count\(14) & 
-- (!\A_DataPath|TemporizadorAquecimento|count[13]~58\ & VCC))
-- \A_DataPath|TemporizadorAquecimento|count[14]~60\ = CARRY((\A_DataPath|TemporizadorAquecimento|count\(14) & !\A_DataPath|TemporizadorAquecimento|count[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorAquecimento|count\(14),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[13]~58\,
	combout => \A_DataPath|TemporizadorAquecimento|count[14]~59_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[14]~60\);

-- Location: LCFF_X37_Y29_N31
\A_DataPath|TemporizadorAquecimento|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[14]~59_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(14));

-- Location: LCCOMB_X37_Y28_N0
\A_DataPath|TemporizadorAquecimento|count[15]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[15]~61_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(15) & (!\A_DataPath|TemporizadorAquecimento|count[14]~60\)) # (!\A_DataPath|TemporizadorAquecimento|count\(15) & 
-- ((\A_DataPath|TemporizadorAquecimento|count[14]~60\) # (GND)))
-- \A_DataPath|TemporizadorAquecimento|count[15]~62\ = CARRY((!\A_DataPath|TemporizadorAquecimento|count[14]~60\) # (!\A_DataPath|TemporizadorAquecimento|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorAquecimento|count\(15),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[14]~60\,
	combout => \A_DataPath|TemporizadorAquecimento|count[15]~61_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[15]~62\);

-- Location: LCFF_X37_Y28_N1
\A_DataPath|TemporizadorAquecimento|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[15]~61_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(15));

-- Location: LCCOMB_X37_Y28_N2
\A_DataPath|TemporizadorAquecimento|count[16]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[16]~63_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(16) & (\A_DataPath|TemporizadorAquecimento|count[15]~62\ $ (GND))) # (!\A_DataPath|TemporizadorAquecimento|count\(16) & 
-- (!\A_DataPath|TemporizadorAquecimento|count[15]~62\ & VCC))
-- \A_DataPath|TemporizadorAquecimento|count[16]~64\ = CARRY((\A_DataPath|TemporizadorAquecimento|count\(16) & !\A_DataPath|TemporizadorAquecimento|count[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorAquecimento|count\(16),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[15]~62\,
	combout => \A_DataPath|TemporizadorAquecimento|count[16]~63_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[16]~64\);

-- Location: LCFF_X37_Y28_N3
\A_DataPath|TemporizadorAquecimento|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[16]~63_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(16));

-- Location: LCCOMB_X37_Y28_N4
\A_DataPath|TemporizadorAquecimento|count[17]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[17]~65_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(17) & (!\A_DataPath|TemporizadorAquecimento|count[16]~64\)) # (!\A_DataPath|TemporizadorAquecimento|count\(17) & 
-- ((\A_DataPath|TemporizadorAquecimento|count[16]~64\) # (GND)))
-- \A_DataPath|TemporizadorAquecimento|count[17]~66\ = CARRY((!\A_DataPath|TemporizadorAquecimento|count[16]~64\) # (!\A_DataPath|TemporizadorAquecimento|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorAquecimento|count\(17),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[16]~64\,
	combout => \A_DataPath|TemporizadorAquecimento|count[17]~65_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[17]~66\);

-- Location: LCFF_X37_Y28_N5
\A_DataPath|TemporizadorAquecimento|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[17]~65_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(17));

-- Location: LCCOMB_X37_Y28_N8
\A_DataPath|TemporizadorAquecimento|count[19]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[19]~69_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(19) & (!\A_DataPath|TemporizadorAquecimento|count[18]~68\)) # (!\A_DataPath|TemporizadorAquecimento|count\(19) & 
-- ((\A_DataPath|TemporizadorAquecimento|count[18]~68\) # (GND)))
-- \A_DataPath|TemporizadorAquecimento|count[19]~70\ = CARRY((!\A_DataPath|TemporizadorAquecimento|count[18]~68\) # (!\A_DataPath|TemporizadorAquecimento|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorAquecimento|count\(19),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[18]~68\,
	combout => \A_DataPath|TemporizadorAquecimento|count[19]~69_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[19]~70\);

-- Location: LCFF_X37_Y28_N9
\A_DataPath|TemporizadorAquecimento|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[19]~69_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(19));

-- Location: LCCOMB_X37_Y28_N12
\A_DataPath|TemporizadorAquecimento|count[21]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[21]~73_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(21) & (!\A_DataPath|TemporizadorAquecimento|count[20]~72\)) # (!\A_DataPath|TemporizadorAquecimento|count\(21) & 
-- ((\A_DataPath|TemporizadorAquecimento|count[20]~72\) # (GND)))
-- \A_DataPath|TemporizadorAquecimento|count[21]~74\ = CARRY((!\A_DataPath|TemporizadorAquecimento|count[20]~72\) # (!\A_DataPath|TemporizadorAquecimento|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|count\(21),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[20]~72\,
	combout => \A_DataPath|TemporizadorAquecimento|count[21]~73_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[21]~74\);

-- Location: LCCOMB_X37_Y28_N14
\A_DataPath|TemporizadorAquecimento|count[22]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[22]~75_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(22) & (\A_DataPath|TemporizadorAquecimento|count[21]~74\ $ (GND))) # (!\A_DataPath|TemporizadorAquecimento|count\(22) & 
-- (!\A_DataPath|TemporizadorAquecimento|count[21]~74\ & VCC))
-- \A_DataPath|TemporizadorAquecimento|count[22]~76\ = CARRY((\A_DataPath|TemporizadorAquecimento|count\(22) & !\A_DataPath|TemporizadorAquecimento|count[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorAquecimento|count\(22),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[21]~74\,
	combout => \A_DataPath|TemporizadorAquecimento|count[22]~75_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[22]~76\);

-- Location: LCFF_X37_Y28_N15
\A_DataPath|TemporizadorAquecimento|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[22]~75_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(22));

-- Location: LCCOMB_X37_Y28_N16
\A_DataPath|TemporizadorAquecimento|count[23]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[23]~77_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(23) & (!\A_DataPath|TemporizadorAquecimento|count[22]~76\)) # (!\A_DataPath|TemporizadorAquecimento|count\(23) & 
-- ((\A_DataPath|TemporizadorAquecimento|count[22]~76\) # (GND)))
-- \A_DataPath|TemporizadorAquecimento|count[23]~78\ = CARRY((!\A_DataPath|TemporizadorAquecimento|count[22]~76\) # (!\A_DataPath|TemporizadorAquecimento|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|count\(23),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[22]~76\,
	combout => \A_DataPath|TemporizadorAquecimento|count[23]~77_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[23]~78\);

-- Location: LCCOMB_X37_Y28_N18
\A_DataPath|TemporizadorAquecimento|count[24]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[24]~79_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(24) & (\A_DataPath|TemporizadorAquecimento|count[23]~78\ $ (GND))) # (!\A_DataPath|TemporizadorAquecimento|count\(24) & 
-- (!\A_DataPath|TemporizadorAquecimento|count[23]~78\ & VCC))
-- \A_DataPath|TemporizadorAquecimento|count[24]~80\ = CARRY((\A_DataPath|TemporizadorAquecimento|count\(24) & !\A_DataPath|TemporizadorAquecimento|count[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorAquecimento|count\(24),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[23]~78\,
	combout => \A_DataPath|TemporizadorAquecimento|count[24]~79_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[24]~80\);

-- Location: LCFF_X37_Y28_N19
\A_DataPath|TemporizadorAquecimento|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[24]~79_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(24));

-- Location: LCCOMB_X37_Y28_N22
\A_DataPath|TemporizadorAquecimento|count[26]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[26]~83_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(26) & (\A_DataPath|TemporizadorAquecimento|count[25]~82\ $ (GND))) # (!\A_DataPath|TemporizadorAquecimento|count\(26) & 
-- (!\A_DataPath|TemporizadorAquecimento|count[25]~82\ & VCC))
-- \A_DataPath|TemporizadorAquecimento|count[26]~84\ = CARRY((\A_DataPath|TemporizadorAquecimento|count\(26) & !\A_DataPath|TemporizadorAquecimento|count[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorAquecimento|count\(26),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[25]~82\,
	combout => \A_DataPath|TemporizadorAquecimento|count[26]~83_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[26]~84\);

-- Location: LCFF_X37_Y28_N23
\A_DataPath|TemporizadorAquecimento|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[26]~83_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(26));

-- Location: LCCOMB_X37_Y28_N24
\A_DataPath|TemporizadorAquecimento|count[27]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[27]~85_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(27) & (!\A_DataPath|TemporizadorAquecimento|count[26]~84\)) # (!\A_DataPath|TemporizadorAquecimento|count\(27) & 
-- ((\A_DataPath|TemporizadorAquecimento|count[26]~84\) # (GND)))
-- \A_DataPath|TemporizadorAquecimento|count[27]~86\ = CARRY((!\A_DataPath|TemporizadorAquecimento|count[26]~84\) # (!\A_DataPath|TemporizadorAquecimento|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|count\(27),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[26]~84\,
	combout => \A_DataPath|TemporizadorAquecimento|count[27]~85_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[27]~86\);

-- Location: LCCOMB_X37_Y28_N26
\A_DataPath|TemporizadorAquecimento|count[28]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|count[28]~87_combout\ = (\A_DataPath|TemporizadorAquecimento|count\(28) & (\A_DataPath|TemporizadorAquecimento|count[27]~86\ $ (GND))) # (!\A_DataPath|TemporizadorAquecimento|count\(28) & 
-- (!\A_DataPath|TemporizadorAquecimento|count[27]~86\ & VCC))
-- \A_DataPath|TemporizadorAquecimento|count[28]~88\ = CARRY((\A_DataPath|TemporizadorAquecimento|count\(28) & !\A_DataPath|TemporizadorAquecimento|count[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorAquecimento|count\(28),
	datad => VCC,
	cin => \A_DataPath|TemporizadorAquecimento|count[27]~86\,
	combout => \A_DataPath|TemporizadorAquecimento|count[28]~87_combout\,
	cout => \A_DataPath|TemporizadorAquecimento|count[28]~88\);

-- Location: LCFF_X37_Y28_N27
\A_DataPath|TemporizadorAquecimento|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[28]~87_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(28));

-- Location: LCFF_X37_Y28_N29
\A_DataPath|TemporizadorAquecimento|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[29]~89_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(29));

-- Location: LCFF_X37_Y28_N25
\A_DataPath|TemporizadorAquecimento|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[27]~85_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(27));

-- Location: LCCOMB_X38_Y28_N20
\A_DataPath|TemporizadorAquecimento|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|LessThan0~6_combout\ = (!\A_DataPath|TemporizadorAquecimento|count\(25) & (!\A_DataPath|TemporizadorAquecimento|count\(28) & (!\A_DataPath|TemporizadorAquecimento|count\(26) & 
-- !\A_DataPath|TemporizadorAquecimento|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|count\(25),
	datab => \A_DataPath|TemporizadorAquecimento|count\(28),
	datac => \A_DataPath|TemporizadorAquecimento|count\(26),
	datad => \A_DataPath|TemporizadorAquecimento|count\(27),
	combout => \A_DataPath|TemporizadorAquecimento|LessThan0~6_combout\);

-- Location: LCFF_X37_Y28_N17
\A_DataPath|TemporizadorAquecimento|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[23]~77_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(23));

-- Location: LCFF_X37_Y28_N13
\A_DataPath|TemporizadorAquecimento|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[21]~73_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(21));

-- Location: LCCOMB_X38_Y28_N10
\A_DataPath|TemporizadorAquecimento|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|LessThan0~5_combout\ = (!\A_DataPath|TemporizadorAquecimento|count\(22) & (!\A_DataPath|TemporizadorAquecimento|count\(23) & (!\A_DataPath|TemporizadorAquecimento|count\(24) & 
-- !\A_DataPath|TemporizadorAquecimento|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|count\(22),
	datab => \A_DataPath|TemporizadorAquecimento|count\(23),
	datac => \A_DataPath|TemporizadorAquecimento|count\(24),
	datad => \A_DataPath|TemporizadorAquecimento|count\(21),
	combout => \A_DataPath|TemporizadorAquecimento|LessThan0~5_combout\);

-- Location: LCCOMB_X38_Y28_N14
\A_DataPath|TemporizadorAquecimento|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|LessThan0~7_combout\ = (!\A_DataPath|TemporizadorAquecimento|count\(30) & (!\A_DataPath|TemporizadorAquecimento|count\(29) & (\A_DataPath|TemporizadorAquecimento|LessThan0~6_combout\ & 
-- \A_DataPath|TemporizadorAquecimento|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|count\(30),
	datab => \A_DataPath|TemporizadorAquecimento|count\(29),
	datac => \A_DataPath|TemporizadorAquecimento|LessThan0~6_combout\,
	datad => \A_DataPath|TemporizadorAquecimento|LessThan0~5_combout\,
	combout => \A_DataPath|TemporizadorAquecimento|LessThan0~7_combout\);

-- Location: LCFF_X37_Y29_N17
\A_DataPath|TemporizadorAquecimento|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[7]~45_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(7));

-- Location: LCCOMB_X38_Y28_N18
\A_DataPath|TemporizadorAquecimento|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|LessThan0~0_combout\ = (!\A_DataPath|TemporizadorAquecimento|count\(5) & (!\A_DataPath|TemporizadorAquecimento|count\(6) & (!\A_DataPath|TemporizadorAquecimento|count\(7) & 
-- !\A_DataPath|TemporizadorAquecimento|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|count\(5),
	datab => \A_DataPath|TemporizadorAquecimento|count\(6),
	datac => \A_DataPath|TemporizadorAquecimento|count\(7),
	datad => \A_DataPath|TemporizadorAquecimento|count\(8),
	combout => \A_DataPath|TemporizadorAquecimento|LessThan0~0_combout\);

-- Location: LCFF_X37_Y29_N25
\A_DataPath|TemporizadorAquecimento|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[11]~53_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(11));

-- Location: LCCOMB_X37_Y29_N0
\A_DataPath|TemporizadorAquecimento|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|LessThan0~1_combout\ = (!\A_DataPath|TemporizadorAquecimento|count\(9) & (!\A_DataPath|TemporizadorAquecimento|count\(10) & (!\A_DataPath|TemporizadorAquecimento|count\(11) & 
-- !\A_DataPath|TemporizadorAquecimento|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|count\(9),
	datab => \A_DataPath|TemporizadorAquecimento|count\(10),
	datac => \A_DataPath|TemporizadorAquecimento|count\(11),
	datad => \A_DataPath|TemporizadorAquecimento|count\(12),
	combout => \A_DataPath|TemporizadorAquecimento|LessThan0~1_combout\);

-- Location: LCCOMB_X38_Y28_N0
\A_DataPath|TemporizadorAquecimento|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|LessThan0~2_combout\ = (!\A_DataPath|TemporizadorAquecimento|count\(15) & (!\A_DataPath|TemporizadorAquecimento|count\(16) & (!\A_DataPath|TemporizadorAquecimento|count\(14) & 
-- !\A_DataPath|TemporizadorAquecimento|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|count\(15),
	datab => \A_DataPath|TemporizadorAquecimento|count\(16),
	datac => \A_DataPath|TemporizadorAquecimento|count\(14),
	datad => \A_DataPath|TemporizadorAquecimento|count\(13),
	combout => \A_DataPath|TemporizadorAquecimento|LessThan0~2_combout\);

-- Location: LCCOMB_X38_Y28_N28
\A_DataPath|TemporizadorAquecimento|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|LessThan0~4_combout\ = (\A_DataPath|TemporizadorAquecimento|LessThan0~3_combout\ & (\A_DataPath|TemporizadorAquecimento|LessThan0~0_combout\ & (\A_DataPath|TemporizadorAquecimento|LessThan0~1_combout\ & 
-- \A_DataPath|TemporizadorAquecimento|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|LessThan0~3_combout\,
	datab => \A_DataPath|TemporizadorAquecimento|LessThan0~0_combout\,
	datac => \A_DataPath|TemporizadorAquecimento|LessThan0~1_combout\,
	datad => \A_DataPath|TemporizadorAquecimento|LessThan0~2_combout\,
	combout => \A_DataPath|TemporizadorAquecimento|LessThan0~4_combout\);

-- Location: LCCOMB_X38_Y28_N22
\A_DataPath|TemporizadorAquecimento|Output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|Output~1_combout\ = (\A_DataPath|TemporizadorAquecimento|LessThan1~0_combout\ & (\A_DataPath|TemporizadorAquecimento|LessThan0~7_combout\ & \A_DataPath|TemporizadorAquecimento|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorAquecimento|LessThan1~0_combout\,
	datac => \A_DataPath|TemporizadorAquecimento|LessThan0~7_combout\,
	datad => \A_DataPath|TemporizadorAquecimento|LessThan0~4_combout\,
	combout => \A_DataPath|TemporizadorAquecimento|Output~1_combout\);

-- Location: LCFF_X37_Y29_N3
\A_DataPath|TemporizadorAquecimento|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[0]~31_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(0));

-- Location: LCFF_X37_Y29_N5
\A_DataPath|TemporizadorAquecimento|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|count[1]~33_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	ena => \A_DataPath|TemporizadorAquecimento|Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|count\(1));

-- Location: LCCOMB_X38_Y28_N8
\A_DataPath|TemporizadorAquecimento|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|LessThan0~9_combout\ = ((!\A_DataPath|TemporizadorAquecimento|count\(3) & (!\A_DataPath|TemporizadorAquecimento|count\(1) & !\A_DataPath|TemporizadorAquecimento|count\(2)))) # 
-- (!\A_DataPath|TemporizadorAquecimento|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|count\(3),
	datab => \A_DataPath|TemporizadorAquecimento|count\(1),
	datac => \A_DataPath|TemporizadorAquecimento|count\(2),
	datad => \A_DataPath|TemporizadorAquecimento|count\(4),
	combout => \A_DataPath|TemporizadorAquecimento|LessThan0~9_combout\);

-- Location: LCCOMB_X38_Y28_N24
\A_DataPath|TemporizadorAquecimento|Output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorAquecimento|Output~0_combout\ = (\A_DataPath|TemporizadorAquecimento|LessThan0~8_combout\ & ((\A_DataPath|TemporizadorAquecimento|LessThan0~9_combout\ & (\A_DataPath|TemporizadorAquecimento|Output~regout\)) # 
-- (!\A_DataPath|TemporizadorAquecimento|LessThan0~9_combout\ & ((\A_DataPath|TemporizadorAquecimento|LessThan1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorAquecimento|LessThan0~8_combout\,
	datab => \A_DataPath|TemporizadorAquecimento|LessThan0~9_combout\,
	datac => \A_DataPath|TemporizadorAquecimento|Output~regout\,
	datad => \A_DataPath|TemporizadorAquecimento|LessThan1~0_combout\,
	combout => \A_DataPath|TemporizadorAquecimento|Output~0_combout\);

-- Location: LCFF_X38_Y28_N25
\A_DataPath|TemporizadorAquecimento|Output\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorAquecimento|Output~0_combout\,
	aclr => \B_Controladora|estado_atual.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorAquecimento|Output~regout\);

-- Location: LCCOMB_X38_Y31_N12
\B_Controladora|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|Selector9~0_combout\ = (!\BotaoDesliga~combout\ & !\A_DataPath|TemporizadorAquecimento|Output~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BotaoDesliga~combout\,
	datad => \A_DataPath|TemporizadorAquecimento|Output~regout\,
	combout => \B_Controladora|Selector9~0_combout\);

-- Location: LCCOMB_X38_Y31_N26
\B_Controladora|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|Selector8~0_combout\ = (\B_Controladora|estado_atual.S11~regout\) # ((!\A_DataPath|M_ComparadorTemperaturaMax|LessThan0~5_combout\ & (\B_Controladora|estado_atual.S12~regout\ & \B_Controladora|Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~5_combout\,
	datab => \B_Controladora|estado_atual.S11~regout\,
	datac => \B_Controladora|estado_atual.S12~regout\,
	datad => \B_Controladora|Selector9~0_combout\,
	combout => \B_Controladora|Selector8~0_combout\);

-- Location: LCFF_X38_Y31_N27
\B_Controladora|estado_atual.S12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \B_Controladora|Selector8~0_combout\,
	aclr => \ClrControladora~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B_Controladora|estado_atual.S12~regout\);

-- Location: LCCOMB_X38_Y31_N24
\B_Controladora|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|Selector9~1_combout\ = (\B_Controladora|Selector9~0_combout\ & ((\B_Controladora|estado_atual.S13~regout\) # ((\A_DataPath|M_ComparadorTemperaturaMax|LessThan0~5_combout\ & \B_Controladora|estado_atual.S12~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~5_combout\,
	datab => \B_Controladora|estado_atual.S12~regout\,
	datac => \B_Controladora|estado_atual.S13~regout\,
	datad => \B_Controladora|Selector9~0_combout\,
	combout => \B_Controladora|Selector9~1_combout\);

-- Location: LCFF_X38_Y31_N25
\B_Controladora|estado_atual.S13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \B_Controladora|Selector9~1_combout\,
	aclr => \ClrControladora~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B_Controladora|estado_atual.S13~regout\);

-- Location: LCCOMB_X38_Y31_N28
\B_Controladora|Fogo\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|Fogo~combout\ = (\B_Controladora|estado_atual.S13~regout\) # (\B_Controladora|estado_atual.S12~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_Controladora|estado_atual.S13~regout\,
	datad => \B_Controladora|estado_atual.S12~regout\,
	combout => \B_Controladora|Fogo~combout\);

-- Location: LCCOMB_X38_Y31_N18
\B_Controladora|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|Selector11~0_combout\ = (\BotaoDescarregar~combout\ & (\B_Controladora|Fogo~combout\ & ((\A_DataPath|TemporizadorAquecimento|Output~regout\)))) # (!\BotaoDescarregar~combout\ & ((\B_Controladora|estado_atual.S15~regout\) # 
-- ((\B_Controladora|Fogo~combout\ & \A_DataPath|TemporizadorAquecimento|Output~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BotaoDescarregar~combout\,
	datab => \B_Controladora|Fogo~combout\,
	datac => \B_Controladora|estado_atual.S15~regout\,
	datad => \A_DataPath|TemporizadorAquecimento|Output~regout\,
	combout => \B_Controladora|Selector11~0_combout\);

-- Location: LCFF_X38_Y31_N19
\B_Controladora|estado_atual.S15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \B_Controladora|Selector11~0_combout\,
	aclr => \ClrControladora~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B_Controladora|estado_atual.S15~regout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BotaoDescarregar~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_BotaoDescarregar,
	combout => \BotaoDescarregar~combout\);

-- Location: LCCOMB_X38_Y31_N22
\B_Controladora|Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|Selector10~1_combout\ = (\B_Controladora|Selector10~0_combout\) # ((\B_Controladora|Fogo~combout\ & (\BotaoDesliga~combout\ & !\A_DataPath|TemporizadorAquecimento|Output~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Controladora|Selector10~0_combout\,
	datab => \B_Controladora|Fogo~combout\,
	datac => \BotaoDesliga~combout\,
	datad => \A_DataPath|TemporizadorAquecimento|Output~regout\,
	combout => \B_Controladora|Selector10~1_combout\);

-- Location: LCFF_X38_Y31_N23
\B_Controladora|estado_atual.S14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \B_Controladora|Selector10~1_combout\,
	aclr => \ClrControladora~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B_Controladora|estado_atual.S14~regout\);

-- Location: LCCOMB_X38_Y31_N10
\B_Controladora|proximo_estado.S16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|proximo_estado.S16~0_combout\ = (\BotaoDescarregar~combout\ & ((\B_Controladora|estado_atual.S15~regout\) # (\B_Controladora|estado_atual.S14~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_Controladora|estado_atual.S15~regout\,
	datac => \BotaoDescarregar~combout\,
	datad => \B_Controladora|estado_atual.S14~regout\,
	combout => \B_Controladora|proximo_estado.S16~0_combout\);

-- Location: LCFF_X38_Y31_N11
\B_Controladora|estado_atual.S16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \B_Controladora|proximo_estado.S16~0_combout\,
	aclr => \ClrControladora~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B_Controladora|estado_atual.S16~regout\);

-- Location: LCCOMB_X37_Y32_N2
\A_DataPath|TemporizadorDescarregamento|count[0]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[0]~31_combout\ = \A_DataPath|TemporizadorDescarregamento|count\(0) $ (VCC)
-- \A_DataPath|TemporizadorDescarregamento|count[0]~32\ = CARRY(\A_DataPath|TemporizadorDescarregamento|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorDescarregamento|count\(0),
	datad => VCC,
	combout => \A_DataPath|TemporizadorDescarregamento|count[0]~31_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[0]~32\);

-- Location: LCCOMB_X37_Y32_N4
\A_DataPath|TemporizadorDescarregamento|count[1]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[1]~33_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(1) & (!\A_DataPath|TemporizadorDescarregamento|count[0]~32\)) # (!\A_DataPath|TemporizadorDescarregamento|count\(1) & 
-- ((\A_DataPath|TemporizadorDescarregamento|count[0]~32\) # (GND)))
-- \A_DataPath|TemporizadorDescarregamento|count[1]~34\ = CARRY((!\A_DataPath|TemporizadorDescarregamento|count[0]~32\) # (!\A_DataPath|TemporizadorDescarregamento|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorDescarregamento|count\(1),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[0]~32\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[1]~33_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[1]~34\);

-- Location: LCCOMB_X37_Y32_N6
\A_DataPath|TemporizadorDescarregamento|count[2]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[2]~35_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(2) & (\A_DataPath|TemporizadorDescarregamento|count[1]~34\ $ (GND))) # (!\A_DataPath|TemporizadorDescarregamento|count\(2) & 
-- (!\A_DataPath|TemporizadorDescarregamento|count[1]~34\ & VCC))
-- \A_DataPath|TemporizadorDescarregamento|count[2]~36\ = CARRY((\A_DataPath|TemporizadorDescarregamento|count\(2) & !\A_DataPath|TemporizadorDescarregamento|count[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorDescarregamento|count\(2),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[1]~34\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[2]~35_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[2]~36\);

-- Location: LCCOMB_X37_Y32_N8
\A_DataPath|TemporizadorDescarregamento|count[3]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[3]~37_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(3) & (!\A_DataPath|TemporizadorDescarregamento|count[2]~36\)) # (!\A_DataPath|TemporizadorDescarregamento|count\(3) & 
-- ((\A_DataPath|TemporizadorDescarregamento|count[2]~36\) # (GND)))
-- \A_DataPath|TemporizadorDescarregamento|count[3]~38\ = CARRY((!\A_DataPath|TemporizadorDescarregamento|count[2]~36\) # (!\A_DataPath|TemporizadorDescarregamento|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorDescarregamento|count\(3),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[2]~36\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[3]~37_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[3]~38\);

-- Location: LCFF_X37_Y32_N9
\A_DataPath|TemporizadorDescarregamento|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[3]~37_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(3));

-- Location: LCCOMB_X37_Y32_N14
\A_DataPath|TemporizadorDescarregamento|count[6]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[6]~43_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(6) & (\A_DataPath|TemporizadorDescarregamento|count[5]~42\ $ (GND))) # (!\A_DataPath|TemporizadorDescarregamento|count\(6) & 
-- (!\A_DataPath|TemporizadorDescarregamento|count[5]~42\ & VCC))
-- \A_DataPath|TemporizadorDescarregamento|count[6]~44\ = CARRY((\A_DataPath|TemporizadorDescarregamento|count\(6) & !\A_DataPath|TemporizadorDescarregamento|count[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorDescarregamento|count\(6),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[5]~42\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[6]~43_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[6]~44\);

-- Location: LCFF_X37_Y32_N15
\A_DataPath|TemporizadorDescarregamento|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[6]~43_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(6));

-- Location: LCCOMB_X37_Y32_N18
\A_DataPath|TemporizadorDescarregamento|count[8]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[8]~47_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(8) & (\A_DataPath|TemporizadorDescarregamento|count[7]~46\ $ (GND))) # (!\A_DataPath|TemporizadorDescarregamento|count\(8) & 
-- (!\A_DataPath|TemporizadorDescarregamento|count[7]~46\ & VCC))
-- \A_DataPath|TemporizadorDescarregamento|count[8]~48\ = CARRY((\A_DataPath|TemporizadorDescarregamento|count\(8) & !\A_DataPath|TemporizadorDescarregamento|count[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorDescarregamento|count\(8),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[7]~46\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[8]~47_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[8]~48\);

-- Location: LCFF_X37_Y32_N19
\A_DataPath|TemporizadorDescarregamento|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[8]~47_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(8));

-- Location: LCCOMB_X37_Y32_N22
\A_DataPath|TemporizadorDescarregamento|count[10]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[10]~51_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(10) & (\A_DataPath|TemporizadorDescarregamento|count[9]~50\ $ (GND))) # (!\A_DataPath|TemporizadorDescarregamento|count\(10) & 
-- (!\A_DataPath|TemporizadorDescarregamento|count[9]~50\ & VCC))
-- \A_DataPath|TemporizadorDescarregamento|count[10]~52\ = CARRY((\A_DataPath|TemporizadorDescarregamento|count\(10) & !\A_DataPath|TemporizadorDescarregamento|count[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorDescarregamento|count\(10),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[9]~50\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[10]~51_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[10]~52\);

-- Location: LCFF_X37_Y32_N23
\A_DataPath|TemporizadorDescarregamento|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[10]~51_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(10));

-- Location: LCCOMB_X37_Y32_N24
\A_DataPath|TemporizadorDescarregamento|count[11]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[11]~53_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(11) & (!\A_DataPath|TemporizadorDescarregamento|count[10]~52\)) # (!\A_DataPath|TemporizadorDescarregamento|count\(11) & 
-- ((\A_DataPath|TemporizadorDescarregamento|count[10]~52\) # (GND)))
-- \A_DataPath|TemporizadorDescarregamento|count[11]~54\ = CARRY((!\A_DataPath|TemporizadorDescarregamento|count[10]~52\) # (!\A_DataPath|TemporizadorDescarregamento|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorDescarregamento|count\(11),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[10]~52\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[11]~53_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[11]~54\);

-- Location: LCCOMB_X37_Y32_N26
\A_DataPath|TemporizadorDescarregamento|count[12]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[12]~55_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(12) & (\A_DataPath|TemporizadorDescarregamento|count[11]~54\ $ (GND))) # (!\A_DataPath|TemporizadorDescarregamento|count\(12) & 
-- (!\A_DataPath|TemporizadorDescarregamento|count[11]~54\ & VCC))
-- \A_DataPath|TemporizadorDescarregamento|count[12]~56\ = CARRY((\A_DataPath|TemporizadorDescarregamento|count\(12) & !\A_DataPath|TemporizadorDescarregamento|count[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorDescarregamento|count\(12),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[11]~54\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[12]~55_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[12]~56\);

-- Location: LCFF_X37_Y32_N27
\A_DataPath|TemporizadorDescarregamento|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[12]~55_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(12));

-- Location: LCCOMB_X37_Y32_N28
\A_DataPath|TemporizadorDescarregamento|count[13]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[13]~57_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(13) & (!\A_DataPath|TemporizadorDescarregamento|count[12]~56\)) # (!\A_DataPath|TemporizadorDescarregamento|count\(13) & 
-- ((\A_DataPath|TemporizadorDescarregamento|count[12]~56\) # (GND)))
-- \A_DataPath|TemporizadorDescarregamento|count[13]~58\ = CARRY((!\A_DataPath|TemporizadorDescarregamento|count[12]~56\) # (!\A_DataPath|TemporizadorDescarregamento|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorDescarregamento|count\(13),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[12]~56\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[13]~57_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[13]~58\);

-- Location: LCFF_X37_Y32_N29
\A_DataPath|TemporizadorDescarregamento|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[13]~57_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(13));

-- Location: LCCOMB_X37_Y32_N30
\A_DataPath|TemporizadorDescarregamento|count[14]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[14]~59_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(14) & (\A_DataPath|TemporizadorDescarregamento|count[13]~58\ $ (GND))) # (!\A_DataPath|TemporizadorDescarregamento|count\(14) & 
-- (!\A_DataPath|TemporizadorDescarregamento|count[13]~58\ & VCC))
-- \A_DataPath|TemporizadorDescarregamento|count[14]~60\ = CARRY((\A_DataPath|TemporizadorDescarregamento|count\(14) & !\A_DataPath|TemporizadorDescarregamento|count[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorDescarregamento|count\(14),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[13]~58\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[14]~59_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[14]~60\);

-- Location: LCFF_X37_Y32_N31
\A_DataPath|TemporizadorDescarregamento|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[14]~59_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(14));

-- Location: LCCOMB_X37_Y31_N0
\A_DataPath|TemporizadorDescarregamento|count[15]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[15]~61_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(15) & (!\A_DataPath|TemporizadorDescarregamento|count[14]~60\)) # (!\A_DataPath|TemporizadorDescarregamento|count\(15) & 
-- ((\A_DataPath|TemporizadorDescarregamento|count[14]~60\) # (GND)))
-- \A_DataPath|TemporizadorDescarregamento|count[15]~62\ = CARRY((!\A_DataPath|TemporizadorDescarregamento|count[14]~60\) # (!\A_DataPath|TemporizadorDescarregamento|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorDescarregamento|count\(15),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[14]~60\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[15]~61_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[15]~62\);

-- Location: LCFF_X37_Y31_N1
\A_DataPath|TemporizadorDescarregamento|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[15]~61_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(15));

-- Location: LCCOMB_X37_Y31_N2
\A_DataPath|TemporizadorDescarregamento|count[16]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[16]~63_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(16) & (\A_DataPath|TemporizadorDescarregamento|count[15]~62\ $ (GND))) # (!\A_DataPath|TemporizadorDescarregamento|count\(16) & 
-- (!\A_DataPath|TemporizadorDescarregamento|count[15]~62\ & VCC))
-- \A_DataPath|TemporizadorDescarregamento|count[16]~64\ = CARRY((\A_DataPath|TemporizadorDescarregamento|count\(16) & !\A_DataPath|TemporizadorDescarregamento|count[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorDescarregamento|count\(16),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[15]~62\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[16]~63_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[16]~64\);

-- Location: LCFF_X37_Y31_N3
\A_DataPath|TemporizadorDescarregamento|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[16]~63_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(16));

-- Location: LCCOMB_X37_Y31_N4
\A_DataPath|TemporizadorDescarregamento|count[17]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[17]~65_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(17) & (!\A_DataPath|TemporizadorDescarregamento|count[16]~64\)) # (!\A_DataPath|TemporizadorDescarregamento|count\(17) & 
-- ((\A_DataPath|TemporizadorDescarregamento|count[16]~64\) # (GND)))
-- \A_DataPath|TemporizadorDescarregamento|count[17]~66\ = CARRY((!\A_DataPath|TemporizadorDescarregamento|count[16]~64\) # (!\A_DataPath|TemporizadorDescarregamento|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorDescarregamento|count\(17),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[16]~64\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[17]~65_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[17]~66\);

-- Location: LCFF_X37_Y31_N5
\A_DataPath|TemporizadorDescarregamento|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[17]~65_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(17));

-- Location: LCCOMB_X37_Y31_N6
\A_DataPath|TemporizadorDescarregamento|count[18]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[18]~67_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(18) & (\A_DataPath|TemporizadorDescarregamento|count[17]~66\ $ (GND))) # (!\A_DataPath|TemporizadorDescarregamento|count\(18) & 
-- (!\A_DataPath|TemporizadorDescarregamento|count[17]~66\ & VCC))
-- \A_DataPath|TemporizadorDescarregamento|count[18]~68\ = CARRY((\A_DataPath|TemporizadorDescarregamento|count\(18) & !\A_DataPath|TemporizadorDescarregamento|count[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorDescarregamento|count\(18),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[17]~66\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[18]~67_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[18]~68\);

-- Location: LCCOMB_X37_Y31_N8
\A_DataPath|TemporizadorDescarregamento|count[19]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[19]~69_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(19) & (!\A_DataPath|TemporizadorDescarregamento|count[18]~68\)) # (!\A_DataPath|TemporizadorDescarregamento|count\(19) & 
-- ((\A_DataPath|TemporizadorDescarregamento|count[18]~68\) # (GND)))
-- \A_DataPath|TemporizadorDescarregamento|count[19]~70\ = CARRY((!\A_DataPath|TemporizadorDescarregamento|count[18]~68\) # (!\A_DataPath|TemporizadorDescarregamento|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorDescarregamento|count\(19),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[18]~68\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[19]~69_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[19]~70\);

-- Location: LCFF_X37_Y31_N9
\A_DataPath|TemporizadorDescarregamento|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[19]~69_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(19));

-- Location: LCCOMB_X37_Y31_N10
\A_DataPath|TemporizadorDescarregamento|count[20]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[20]~71_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(20) & (\A_DataPath|TemporizadorDescarregamento|count[19]~70\ $ (GND))) # (!\A_DataPath|TemporizadorDescarregamento|count\(20) & 
-- (!\A_DataPath|TemporizadorDescarregamento|count[19]~70\ & VCC))
-- \A_DataPath|TemporizadorDescarregamento|count[20]~72\ = CARRY((\A_DataPath|TemporizadorDescarregamento|count\(20) & !\A_DataPath|TemporizadorDescarregamento|count[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorDescarregamento|count\(20),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[19]~70\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[20]~71_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[20]~72\);

-- Location: LCCOMB_X37_Y31_N12
\A_DataPath|TemporizadorDescarregamento|count[21]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[21]~73_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(21) & (!\A_DataPath|TemporizadorDescarregamento|count[20]~72\)) # (!\A_DataPath|TemporizadorDescarregamento|count\(21) & 
-- ((\A_DataPath|TemporizadorDescarregamento|count[20]~72\) # (GND)))
-- \A_DataPath|TemporizadorDescarregamento|count[21]~74\ = CARRY((!\A_DataPath|TemporizadorDescarregamento|count[20]~72\) # (!\A_DataPath|TemporizadorDescarregamento|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorDescarregamento|count\(21),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[20]~72\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[21]~73_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[21]~74\);

-- Location: LCCOMB_X37_Y31_N14
\A_DataPath|TemporizadorDescarregamento|count[22]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[22]~75_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(22) & (\A_DataPath|TemporizadorDescarregamento|count[21]~74\ $ (GND))) # (!\A_DataPath|TemporizadorDescarregamento|count\(22) & 
-- (!\A_DataPath|TemporizadorDescarregamento|count[21]~74\ & VCC))
-- \A_DataPath|TemporizadorDescarregamento|count[22]~76\ = CARRY((\A_DataPath|TemporizadorDescarregamento|count\(22) & !\A_DataPath|TemporizadorDescarregamento|count[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorDescarregamento|count\(22),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[21]~74\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[22]~75_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[22]~76\);

-- Location: LCFF_X37_Y31_N15
\A_DataPath|TemporizadorDescarregamento|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[22]~75_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(22));

-- Location: LCCOMB_X37_Y31_N16
\A_DataPath|TemporizadorDescarregamento|count[23]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[23]~77_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(23) & (!\A_DataPath|TemporizadorDescarregamento|count[22]~76\)) # (!\A_DataPath|TemporizadorDescarregamento|count\(23) & 
-- ((\A_DataPath|TemporizadorDescarregamento|count[22]~76\) # (GND)))
-- \A_DataPath|TemporizadorDescarregamento|count[23]~78\ = CARRY((!\A_DataPath|TemporizadorDescarregamento|count[22]~76\) # (!\A_DataPath|TemporizadorDescarregamento|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorDescarregamento|count\(23),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[22]~76\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[23]~77_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[23]~78\);

-- Location: LCFF_X37_Y31_N17
\A_DataPath|TemporizadorDescarregamento|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[23]~77_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(23));

-- Location: LCFF_X37_Y31_N11
\A_DataPath|TemporizadorDescarregamento|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[20]~71_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(20));

-- Location: LCFF_X37_Y31_N13
\A_DataPath|TemporizadorDescarregamento|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[21]~73_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(21));

-- Location: LCCOMB_X38_Y31_N0
\A_DataPath|TemporizadorDescarregamento|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|LessThan0~5_combout\ = (!\A_DataPath|TemporizadorDescarregamento|count\(22) & (!\A_DataPath|TemporizadorDescarregamento|count\(23) & (!\A_DataPath|TemporizadorDescarregamento|count\(20) & 
-- !\A_DataPath|TemporizadorDescarregamento|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorDescarregamento|count\(22),
	datab => \A_DataPath|TemporizadorDescarregamento|count\(23),
	datac => \A_DataPath|TemporizadorDescarregamento|count\(20),
	datad => \A_DataPath|TemporizadorDescarregamento|count\(21),
	combout => \A_DataPath|TemporizadorDescarregamento|LessThan0~5_combout\);

-- Location: LCCOMB_X37_Y31_N18
\A_DataPath|TemporizadorDescarregamento|count[24]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[24]~79_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(24) & (\A_DataPath|TemporizadorDescarregamento|count[23]~78\ $ (GND))) # (!\A_DataPath|TemporizadorDescarregamento|count\(24) & 
-- (!\A_DataPath|TemporizadorDescarregamento|count[23]~78\ & VCC))
-- \A_DataPath|TemporizadorDescarregamento|count[24]~80\ = CARRY((\A_DataPath|TemporizadorDescarregamento|count\(24) & !\A_DataPath|TemporizadorDescarregamento|count[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorDescarregamento|count\(24),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[23]~78\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[24]~79_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[24]~80\);

-- Location: LCFF_X37_Y31_N19
\A_DataPath|TemporizadorDescarregamento|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[24]~79_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(24));

-- Location: LCCOMB_X37_Y31_N20
\A_DataPath|TemporizadorDescarregamento|count[25]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[25]~81_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(25) & (!\A_DataPath|TemporizadorDescarregamento|count[24]~80\)) # (!\A_DataPath|TemporizadorDescarregamento|count\(25) & 
-- ((\A_DataPath|TemporizadorDescarregamento|count[24]~80\) # (GND)))
-- \A_DataPath|TemporizadorDescarregamento|count[25]~82\ = CARRY((!\A_DataPath|TemporizadorDescarregamento|count[24]~80\) # (!\A_DataPath|TemporizadorDescarregamento|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorDescarregamento|count\(25),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[24]~80\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[25]~81_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[25]~82\);

-- Location: LCCOMB_X37_Y31_N22
\A_DataPath|TemporizadorDescarregamento|count[26]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[26]~83_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(26) & (\A_DataPath|TemporizadorDescarregamento|count[25]~82\ $ (GND))) # (!\A_DataPath|TemporizadorDescarregamento|count\(26) & 
-- (!\A_DataPath|TemporizadorDescarregamento|count[25]~82\ & VCC))
-- \A_DataPath|TemporizadorDescarregamento|count[26]~84\ = CARRY((\A_DataPath|TemporizadorDescarregamento|count\(26) & !\A_DataPath|TemporizadorDescarregamento|count[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorDescarregamento|count\(26),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[25]~82\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[26]~83_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[26]~84\);

-- Location: LCFF_X37_Y31_N23
\A_DataPath|TemporizadorDescarregamento|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[26]~83_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(26));

-- Location: LCCOMB_X37_Y31_N26
\A_DataPath|TemporizadorDescarregamento|count[28]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|count[28]~87_combout\ = (\A_DataPath|TemporizadorDescarregamento|count\(28) & (\A_DataPath|TemporizadorDescarregamento|count[27]~86\ $ (GND))) # (!\A_DataPath|TemporizadorDescarregamento|count\(28) & 
-- (!\A_DataPath|TemporizadorDescarregamento|count[27]~86\ & VCC))
-- \A_DataPath|TemporizadorDescarregamento|count[28]~88\ = CARRY((\A_DataPath|TemporizadorDescarregamento|count\(28) & !\A_DataPath|TemporizadorDescarregamento|count[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorDescarregamento|count\(28),
	datad => VCC,
	cin => \A_DataPath|TemporizadorDescarregamento|count[27]~86\,
	combout => \A_DataPath|TemporizadorDescarregamento|count[28]~87_combout\,
	cout => \A_DataPath|TemporizadorDescarregamento|count[28]~88\);

-- Location: LCFF_X37_Y31_N27
\A_DataPath|TemporizadorDescarregamento|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[28]~87_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(28));

-- Location: LCFF_X37_Y31_N29
\A_DataPath|TemporizadorDescarregamento|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[29]~89_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(29));

-- Location: LCFF_X37_Y31_N21
\A_DataPath|TemporizadorDescarregamento|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[25]~81_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(25));

-- Location: LCCOMB_X38_Y32_N28
\A_DataPath|TemporizadorDescarregamento|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|LessThan0~6_combout\ = (!\A_DataPath|TemporizadorDescarregamento|count\(27) & (!\A_DataPath|TemporizadorDescarregamento|count\(25) & (!\A_DataPath|TemporizadorDescarregamento|count\(26) & 
-- !\A_DataPath|TemporizadorDescarregamento|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorDescarregamento|count\(27),
	datab => \A_DataPath|TemporizadorDescarregamento|count\(25),
	datac => \A_DataPath|TemporizadorDescarregamento|count\(26),
	datad => \A_DataPath|TemporizadorDescarregamento|count\(24),
	combout => \A_DataPath|TemporizadorDescarregamento|LessThan0~6_combout\);

-- Location: LCCOMB_X38_Y32_N14
\A_DataPath|TemporizadorDescarregamento|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|LessThan0~7_combout\ = (!\A_DataPath|TemporizadorDescarregamento|count\(30) & (!\A_DataPath|TemporizadorDescarregamento|count\(29) & (!\A_DataPath|TemporizadorDescarregamento|count\(28) & 
-- \A_DataPath|TemporizadorDescarregamento|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorDescarregamento|count\(30),
	datab => \A_DataPath|TemporizadorDescarregamento|count\(29),
	datac => \A_DataPath|TemporizadorDescarregamento|count\(28),
	datad => \A_DataPath|TemporizadorDescarregamento|LessThan0~6_combout\,
	combout => \A_DataPath|TemporizadorDescarregamento|LessThan0~7_combout\);

-- Location: LCCOMB_X38_Y32_N26
\A_DataPath|TemporizadorDescarregamento|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|LessThan0~2_combout\ = (!\A_DataPath|TemporizadorDescarregamento|count\(14) & (!\A_DataPath|TemporizadorDescarregamento|count\(12) & (!\A_DataPath|TemporizadorDescarregamento|count\(15) & 
-- !\A_DataPath|TemporizadorDescarregamento|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorDescarregamento|count\(14),
	datab => \A_DataPath|TemporizadorDescarregamento|count\(12),
	datac => \A_DataPath|TemporizadorDescarregamento|count\(15),
	datad => \A_DataPath|TemporizadorDescarregamento|count\(13),
	combout => \A_DataPath|TemporizadorDescarregamento|LessThan0~2_combout\);

-- Location: LCFF_X37_Y32_N25
\A_DataPath|TemporizadorDescarregamento|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[11]~53_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(11));

-- Location: LCCOMB_X38_Y32_N4
\A_DataPath|TemporizadorDescarregamento|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|LessThan0~1_combout\ = (!\A_DataPath|TemporizadorDescarregamento|count\(9) & (!\A_DataPath|TemporizadorDescarregamento|count\(10) & (!\A_DataPath|TemporizadorDescarregamento|count\(11) & 
-- !\A_DataPath|TemporizadorDescarregamento|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorDescarregamento|count\(9),
	datab => \A_DataPath|TemporizadorDescarregamento|count\(10),
	datac => \A_DataPath|TemporizadorDescarregamento|count\(11),
	datad => \A_DataPath|TemporizadorDescarregamento|count\(8),
	combout => \A_DataPath|TemporizadorDescarregamento|LessThan0~1_combout\);

-- Location: LCFF_X37_Y31_N7
\A_DataPath|TemporizadorDescarregamento|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[18]~67_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(18));

-- Location: LCCOMB_X38_Y32_N0
\A_DataPath|TemporizadorDescarregamento|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|LessThan0~3_combout\ = (!\A_DataPath|TemporizadorDescarregamento|count\(17) & (!\A_DataPath|TemporizadorDescarregamento|count\(19) & (!\A_DataPath|TemporizadorDescarregamento|count\(18) & 
-- !\A_DataPath|TemporizadorDescarregamento|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorDescarregamento|count\(17),
	datab => \A_DataPath|TemporizadorDescarregamento|count\(19),
	datac => \A_DataPath|TemporizadorDescarregamento|count\(18),
	datad => \A_DataPath|TemporizadorDescarregamento|count\(16),
	combout => \A_DataPath|TemporizadorDescarregamento|LessThan0~3_combout\);

-- Location: LCCOMB_X38_Y32_N10
\A_DataPath|TemporizadorDescarregamento|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|LessThan0~4_combout\ = (\A_DataPath|TemporizadorDescarregamento|LessThan0~0_combout\ & (\A_DataPath|TemporizadorDescarregamento|LessThan0~2_combout\ & (\A_DataPath|TemporizadorDescarregamento|LessThan0~1_combout\ & 
-- \A_DataPath|TemporizadorDescarregamento|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorDescarregamento|LessThan0~0_combout\,
	datab => \A_DataPath|TemporizadorDescarregamento|LessThan0~2_combout\,
	datac => \A_DataPath|TemporizadorDescarregamento|LessThan0~1_combout\,
	datad => \A_DataPath|TemporizadorDescarregamento|LessThan0~3_combout\,
	combout => \A_DataPath|TemporizadorDescarregamento|LessThan0~4_combout\);

-- Location: LCCOMB_X38_Y32_N16
\A_DataPath|TemporizadorDescarregamento|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\ = (!\A_DataPath|TemporizadorDescarregamento|LessThan1~0_combout\ & (\A_DataPath|TemporizadorDescarregamento|LessThan0~5_combout\ & (\A_DataPath|TemporizadorDescarregamento|LessThan0~7_combout\ & 
-- \A_DataPath|TemporizadorDescarregamento|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorDescarregamento|LessThan1~0_combout\,
	datab => \A_DataPath|TemporizadorDescarregamento|LessThan0~5_combout\,
	datac => \A_DataPath|TemporizadorDescarregamento|LessThan0~7_combout\,
	datad => \A_DataPath|TemporizadorDescarregamento|LessThan0~4_combout\,
	combout => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\);

-- Location: LCFF_X37_Y32_N3
\A_DataPath|TemporizadorDescarregamento|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[0]~31_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(0));

-- Location: LCFF_X37_Y32_N5
\A_DataPath|TemporizadorDescarregamento|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[1]~33_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(1));

-- Location: LCFF_X37_Y32_N7
\A_DataPath|TemporizadorDescarregamento|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|count[2]~35_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	ena => \A_DataPath|TemporizadorDescarregamento|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|count\(2));

-- Location: LCCOMB_X38_Y32_N30
\A_DataPath|TemporizadorDescarregamento|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|LessThan0~9_combout\ = ((!\A_DataPath|TemporizadorDescarregamento|count\(1) & !\A_DataPath|TemporizadorDescarregamento|count\(2))) # (!\A_DataPath|TemporizadorDescarregamento|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorDescarregamento|count\(1),
	datac => \A_DataPath|TemporizadorDescarregamento|count\(2),
	datad => \A_DataPath|TemporizadorDescarregamento|count\(3),
	combout => \A_DataPath|TemporizadorDescarregamento|LessThan0~9_combout\);

-- Location: LCCOMB_X38_Y32_N12
\A_DataPath|TemporizadorDescarregamento|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|LessThan0~8_combout\ = (\A_DataPath|TemporizadorDescarregamento|LessThan0~5_combout\ & (\A_DataPath|TemporizadorDescarregamento|LessThan0~7_combout\ & \A_DataPath|TemporizadorDescarregamento|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|TemporizadorDescarregamento|LessThan0~5_combout\,
	datac => \A_DataPath|TemporizadorDescarregamento|LessThan0~7_combout\,
	datad => \A_DataPath|TemporizadorDescarregamento|LessThan0~4_combout\,
	combout => \A_DataPath|TemporizadorDescarregamento|LessThan0~8_combout\);

-- Location: LCCOMB_X38_Y32_N6
\A_DataPath|TemporizadorDescarregamento|Output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|TemporizadorDescarregamento|Output~0_combout\ = (\A_DataPath|TemporizadorDescarregamento|LessThan0~8_combout\ & ((\A_DataPath|TemporizadorDescarregamento|LessThan0~9_combout\ & ((\A_DataPath|TemporizadorDescarregamento|Output~regout\))) # 
-- (!\A_DataPath|TemporizadorDescarregamento|LessThan0~9_combout\ & (!\A_DataPath|TemporizadorDescarregamento|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|TemporizadorDescarregamento|LessThan1~0_combout\,
	datab => \A_DataPath|TemporizadorDescarregamento|LessThan0~9_combout\,
	datac => \A_DataPath|TemporizadorDescarregamento|Output~regout\,
	datad => \A_DataPath|TemporizadorDescarregamento|LessThan0~8_combout\,
	combout => \A_DataPath|TemporizadorDescarregamento|Output~0_combout\);

-- Location: LCFF_X38_Y32_N7
\A_DataPath|TemporizadorDescarregamento|Output\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk1ms~clkctrl_outclk\,
	datain => \A_DataPath|TemporizadorDescarregamento|Output~0_combout\,
	aclr => \B_Controladora|estado_atual.S16~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|TemporizadorDescarregamento|Output~regout\);

-- Location: LCCOMB_X38_Y32_N20
\B_Controladora|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|Selector12~0_combout\ = (\B_Controladora|estado_atual.S16~regout\) # ((\B_Controladora|estado_atual.S17~regout\ & !\A_DataPath|TemporizadorDescarregamento|Output~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_Controladora|estado_atual.S16~regout\,
	datac => \B_Controladora|estado_atual.S17~regout\,
	datad => \A_DataPath|TemporizadorDescarregamento|Output~regout\,
	combout => \B_Controladora|Selector12~0_combout\);

-- Location: LCFF_X38_Y32_N21
\B_Controladora|estado_atual.S17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \B_Controladora|Selector12~0_combout\,
	aclr => \ClrControladora~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B_Controladora|estado_atual.S17~regout\);

-- Location: LCCOMB_X38_Y32_N18
\B_Controladora|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|Selector13~0_combout\ = (\B_Controladora|estado_atual.S17~regout\ & \A_DataPath|TemporizadorDescarregamento|Output~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_Controladora|estado_atual.S17~regout\,
	datad => \A_DataPath|TemporizadorDescarregamento|Output~regout\,
	combout => \B_Controladora|Selector13~0_combout\);

-- Location: LCCOMB_X38_Y32_N22
\B_Controladora|Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|Selector13~1_combout\ = (\B_Controladora|Selector13~0_combout\) # ((\B_Controladora|estado_atual.S18~regout\ & ((\A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~3_combout\) # 
-- (\A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~3_combout\,
	datab => \A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~2_combout\,
	datac => \B_Controladora|estado_atual.S18~regout\,
	datad => \B_Controladora|Selector13~0_combout\,
	combout => \B_Controladora|Selector13~1_combout\);

-- Location: LCFF_X38_Y32_N23
\B_Controladora|estado_atual.S18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \B_Controladora|Selector13~1_combout\,
	aclr => \ClrControladora~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B_Controladora|estado_atual.S18~regout\);

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TemperaturaForno[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TemperaturaForno(15),
	combout => \TemperaturaForno~combout\(15));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TemperaturaForno[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TemperaturaForno(14),
	combout => \TemperaturaForno~combout\(14));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TemperaturaForno[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TemperaturaForno(12),
	combout => \TemperaturaForno~combout\(12));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TemperaturaForno[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TemperaturaForno(11),
	combout => \TemperaturaForno~combout\(11));

-- Location: LCCOMB_X64_Y32_N16
\A_DataPath|M_ComparadorTemperaturaMax|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~4_combout\ = (!\TemperaturaForno~combout\(13) & (!\TemperaturaForno~combout\(14) & (!\TemperaturaForno~combout\(12) & !\TemperaturaForno~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TemperaturaForno~combout\(13),
	datab => \TemperaturaForno~combout\(14),
	datac => \TemperaturaForno~combout\(12),
	datad => \TemperaturaForno~combout\(11),
	combout => \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~4_combout\);

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TemperaturaForno[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TemperaturaForno(10),
	combout => \TemperaturaForno~combout\(10));

-- Location: LCCOMB_X64_Y31_N0
\A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~3_combout\ = (\TemperaturaForno~combout\(15)) # ((\TemperaturaForno~combout\(10)) # (!\A_DataPath|M_ComparadorTemperaturaMax|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TemperaturaForno~combout\(15),
	datac => \A_DataPath|M_ComparadorTemperaturaMax|LessThan0~4_combout\,
	datad => \TemperaturaForno~combout\(10),
	combout => \A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~3_combout\);

-- Location: LCCOMB_X46_Y31_N18
\B_Controladora|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|Selector1~2_combout\ = (\B_Controladora|Selector1~1_combout\) # ((!\A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~2_combout\ & (\B_Controladora|estado_atual.S18~regout\ & 
-- !\A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~2_combout\,
	datab => \B_Controladora|Selector1~1_combout\,
	datac => \B_Controladora|estado_atual.S18~regout\,
	datad => \A_DataPath|L_ComparadorTemperaturaSegura|LessThan0~3_combout\,
	combout => \B_Controladora|Selector1~2_combout\);

-- Location: LCFF_X46_Y31_N19
\B_Controladora|estado_atual.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \B_Controladora|Selector1~2_combout\,
	aclr => \ClrControladora~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B_Controladora|estado_atual.S2~regout\);

-- Location: LCCOMB_X46_Y31_N12
\B_Controladora|LdPeso\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|LdPeso~combout\ = (\B_Controladora|estado_atual.S2~regout\) # (\B_Controladora|estado_atual.S5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_Controladora|estado_atual.S2~regout\,
	datad => \B_Controladora|estado_atual.S5~regout\,
	combout => \B_Controladora|LdPeso~combout\);

-- Location: LCFF_X47_Y31_N1
\A_DataPath|A_RegPeso|conteudo[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|A_RegPeso|conteudo[14]~feeder_combout\,
	ena => \B_Controladora|LdPeso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|A_RegPeso|conteudo\(14));

-- Location: LCFF_X47_Y31_N27
\A_DataPath|A_RegPeso|conteudo[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \PesoMedido~combout\(12),
	sload => VCC,
	ena => \B_Controladora|LdPeso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|A_RegPeso|conteudo\(12));

-- Location: LCCOMB_X48_Y31_N20
\A_DataPath|A_RegPeso|conteudo[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|A_RegPeso|conteudo[15]~feeder_combout\ = \PesoMedido~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PesoMedido~combout\(15),
	combout => \A_DataPath|A_RegPeso|conteudo[15]~feeder_combout\);

-- Location: LCFF_X48_Y31_N21
\A_DataPath|A_RegPeso|conteudo[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|A_RegPeso|conteudo[15]~feeder_combout\,
	ena => \B_Controladora|LdPeso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|A_RegPeso|conteudo\(15));

-- Location: LCCOMB_X47_Y31_N26
\A_DataPath|D_ComparadorPeso|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|D_ComparadorPeso|LessThan0~4_combout\ = (\A_DataPath|A_RegPeso|conteudo\(15)) # ((\A_DataPath|A_RegPeso|conteudo\(14) & ((\A_DataPath|A_RegPeso|conteudo\(13)) # (\A_DataPath|A_RegPeso|conteudo\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|A_RegPeso|conteudo\(13),
	datab => \A_DataPath|A_RegPeso|conteudo\(14),
	datac => \A_DataPath|A_RegPeso|conteudo\(12),
	datad => \A_DataPath|A_RegPeso|conteudo\(15),
	combout => \A_DataPath|D_ComparadorPeso|LessThan0~4_combout\);

-- Location: LCCOMB_X47_Y31_N4
\A_DataPath|D_ComparadorPeso|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|D_ComparadorPeso|LessThan0~5_combout\ = (\A_DataPath|D_ComparadorPeso|LessThan0~3_combout\) # ((\A_DataPath|D_ComparadorPeso|LessThan0~4_combout\) # (\A_DataPath|D_ComparadorPeso|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|D_ComparadorPeso|LessThan0~3_combout\,
	datab => \A_DataPath|D_ComparadorPeso|LessThan0~4_combout\,
	datad => \A_DataPath|D_ComparadorPeso|LessThan0~2_combout\,
	combout => \A_DataPath|D_ComparadorPeso|LessThan0~5_combout\);

-- Location: LCCOMB_X46_Y31_N6
\B_Controladora|proximo_estado.S5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|proximo_estado.S5~0_combout\ = (\A_DataPath|D_ComparadorPeso|LessThan0~5_combout\ & ((\B_Controladora|estado_atual.S4~regout\) # (\B_Controladora|estado_atual.S5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Controladora|estado_atual.S4~regout\,
	datac => \B_Controladora|estado_atual.S5~regout\,
	datad => \A_DataPath|D_ComparadorPeso|LessThan0~5_combout\,
	combout => \B_Controladora|proximo_estado.S5~0_combout\);

-- Location: LCFF_X46_Y31_N7
\B_Controladora|estado_atual.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \B_Controladora|proximo_estado.S5~0_combout\,
	aclr => \ClrControladora~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B_Controladora|estado_atual.S5~regout\);

-- Location: LCCOMB_X47_Y26_N12
\B_Controladora|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B_Controladora|Selector4~0_combout\ = (\BotaoCombustivelCheio~combout\ & (\B_Controladora|Selector5~0_combout\ & ((!\A_DataPath|K_ComparadorCombustivel|LessThan0~26_combout\)))) # (!\BotaoCombustivelCheio~combout\ & 
-- ((\B_Controladora|estado_atual.S6~regout\) # ((\B_Controladora|Selector5~0_combout\ & !\A_DataPath|K_ComparadorCombustivel|LessThan0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BotaoCombustivelCheio~combout\,
	datab => \B_Controladora|Selector5~0_combout\,
	datac => \B_Controladora|estado_atual.S6~regout\,
	datad => \A_DataPath|K_ComparadorCombustivel|LessThan0~26_combout\,
	combout => \B_Controladora|Selector4~0_combout\);

-- Location: LCFF_X47_Y26_N13
\B_Controladora|estado_atual.S6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \B_Controladora|Selector4~0_combout\,
	aclr => \ClrControladora~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B_Controladora|estado_atual.S6~regout\);

-- Location: LCFF_X44_Y31_N17
\A_DataPath|H_RegAuxQtdProcessada|conteudo[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|I_RegQtdProcessada|conteudo\(0),
	sload => VCC,
	ena => \B_Controladora|estado_atual.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(0));

-- Location: LCCOMB_X45_Y31_N0
\A_DataPath|I_RegQtdProcessada|conteudo[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|I_RegQtdProcessada|conteudo[0]~16_combout\ = (\A_DataPath|A_RegPeso|conteudo\(0) & (\A_DataPath|H_RegAuxQtdProcessada|conteudo\(0) $ (VCC))) # (!\A_DataPath|A_RegPeso|conteudo\(0) & (\A_DataPath|H_RegAuxQtdProcessada|conteudo\(0) & VCC))
-- \A_DataPath|I_RegQtdProcessada|conteudo[0]~17\ = CARRY((\A_DataPath|A_RegPeso|conteudo\(0) & \A_DataPath|H_RegAuxQtdProcessada|conteudo\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|A_RegPeso|conteudo\(0),
	datab => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(0),
	datad => VCC,
	combout => \A_DataPath|I_RegQtdProcessada|conteudo[0]~16_combout\,
	cout => \A_DataPath|I_RegQtdProcessada|conteudo[0]~17\);

-- Location: LCFF_X46_Y31_N29
\A_DataPath|I_RegQtdProcessada|conteudo[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|I_RegQtdProcessada|conteudo[0]~16_combout\,
	aclr => \B_Controladora|estado_atual.S1~regout\,
	sload => VCC,
	ena => \B_Controladora|estado_atual.S12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|I_RegQtdProcessada|conteudo\(0));

-- Location: LCCOMB_X45_Y31_N2
\A_DataPath|I_RegQtdProcessada|conteudo[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|I_RegQtdProcessada|conteudo[1]~18_combout\ = (\A_DataPath|H_RegAuxQtdProcessada|conteudo\(1) & ((\A_DataPath|A_RegPeso|conteudo\(1) & (\A_DataPath|I_RegQtdProcessada|conteudo[0]~17\ & VCC)) # (!\A_DataPath|A_RegPeso|conteudo\(1) & 
-- (!\A_DataPath|I_RegQtdProcessada|conteudo[0]~17\)))) # (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(1) & ((\A_DataPath|A_RegPeso|conteudo\(1) & (!\A_DataPath|I_RegQtdProcessada|conteudo[0]~17\)) # (!\A_DataPath|A_RegPeso|conteudo\(1) & 
-- ((\A_DataPath|I_RegQtdProcessada|conteudo[0]~17\) # (GND)))))
-- \A_DataPath|I_RegQtdProcessada|conteudo[1]~19\ = CARRY((\A_DataPath|H_RegAuxQtdProcessada|conteudo\(1) & (!\A_DataPath|A_RegPeso|conteudo\(1) & !\A_DataPath|I_RegQtdProcessada|conteudo[0]~17\)) # (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(1) & 
-- ((!\A_DataPath|I_RegQtdProcessada|conteudo[0]~17\) # (!\A_DataPath|A_RegPeso|conteudo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(1),
	datab => \A_DataPath|A_RegPeso|conteudo\(1),
	datad => VCC,
	cin => \A_DataPath|I_RegQtdProcessada|conteudo[0]~17\,
	combout => \A_DataPath|I_RegQtdProcessada|conteudo[1]~18_combout\,
	cout => \A_DataPath|I_RegQtdProcessada|conteudo[1]~19\);

-- Location: LCFF_X45_Y31_N3
\A_DataPath|I_RegQtdProcessada|conteudo[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|I_RegQtdProcessada|conteudo[1]~18_combout\,
	aclr => \B_Controladora|estado_atual.S1~regout\,
	ena => \B_Controladora|estado_atual.S12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|I_RegQtdProcessada|conteudo\(1));

-- Location: LCFF_X45_Y31_N1
\A_DataPath|H_RegAuxQtdProcessada|conteudo[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|I_RegQtdProcessada|conteudo\(2),
	sload => VCC,
	ena => \B_Controladora|estado_atual.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(2));

-- Location: LCCOMB_X45_Y31_N4
\A_DataPath|I_RegQtdProcessada|conteudo[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|I_RegQtdProcessada|conteudo[2]~20_combout\ = ((\A_DataPath|A_RegPeso|conteudo\(2) $ (\A_DataPath|H_RegAuxQtdProcessada|conteudo\(2) $ (!\A_DataPath|I_RegQtdProcessada|conteudo[1]~19\)))) # (GND)
-- \A_DataPath|I_RegQtdProcessada|conteudo[2]~21\ = CARRY((\A_DataPath|A_RegPeso|conteudo\(2) & ((\A_DataPath|H_RegAuxQtdProcessada|conteudo\(2)) # (!\A_DataPath|I_RegQtdProcessada|conteudo[1]~19\))) # (!\A_DataPath|A_RegPeso|conteudo\(2) & 
-- (\A_DataPath|H_RegAuxQtdProcessada|conteudo\(2) & !\A_DataPath|I_RegQtdProcessada|conteudo[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|A_RegPeso|conteudo\(2),
	datab => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(2),
	datad => VCC,
	cin => \A_DataPath|I_RegQtdProcessada|conteudo[1]~19\,
	combout => \A_DataPath|I_RegQtdProcessada|conteudo[2]~20_combout\,
	cout => \A_DataPath|I_RegQtdProcessada|conteudo[2]~21\);

-- Location: LCFF_X45_Y31_N5
\A_DataPath|I_RegQtdProcessada|conteudo[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|I_RegQtdProcessada|conteudo[2]~20_combout\,
	aclr => \B_Controladora|estado_atual.S1~regout\,
	ena => \B_Controladora|estado_atual.S12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|I_RegQtdProcessada|conteudo\(2));

-- Location: LCCOMB_X44_Y31_N28
\A_DataPath|H_RegAuxQtdProcessada|conteudo[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|H_RegAuxQtdProcessada|conteudo[3]~feeder_combout\ = \A_DataPath|I_RegQtdProcessada|conteudo\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A_DataPath|I_RegQtdProcessada|conteudo\(3),
	combout => \A_DataPath|H_RegAuxQtdProcessada|conteudo[3]~feeder_combout\);

-- Location: LCFF_X44_Y31_N29
\A_DataPath|H_RegAuxQtdProcessada|conteudo[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|H_RegAuxQtdProcessada|conteudo[3]~feeder_combout\,
	ena => \B_Controladora|estado_atual.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(3));

-- Location: LCCOMB_X45_Y31_N6
\A_DataPath|I_RegQtdProcessada|conteudo[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|I_RegQtdProcessada|conteudo[3]~22_combout\ = (\A_DataPath|A_RegPeso|conteudo\(3) & ((\A_DataPath|H_RegAuxQtdProcessada|conteudo\(3) & (\A_DataPath|I_RegQtdProcessada|conteudo[2]~21\ & VCC)) # (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(3) & 
-- (!\A_DataPath|I_RegQtdProcessada|conteudo[2]~21\)))) # (!\A_DataPath|A_RegPeso|conteudo\(3) & ((\A_DataPath|H_RegAuxQtdProcessada|conteudo\(3) & (!\A_DataPath|I_RegQtdProcessada|conteudo[2]~21\)) # (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(3) & 
-- ((\A_DataPath|I_RegQtdProcessada|conteudo[2]~21\) # (GND)))))
-- \A_DataPath|I_RegQtdProcessada|conteudo[3]~23\ = CARRY((\A_DataPath|A_RegPeso|conteudo\(3) & (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(3) & !\A_DataPath|I_RegQtdProcessada|conteudo[2]~21\)) # (!\A_DataPath|A_RegPeso|conteudo\(3) & 
-- ((!\A_DataPath|I_RegQtdProcessada|conteudo[2]~21\) # (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|A_RegPeso|conteudo\(3),
	datab => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(3),
	datad => VCC,
	cin => \A_DataPath|I_RegQtdProcessada|conteudo[2]~21\,
	combout => \A_DataPath|I_RegQtdProcessada|conteudo[3]~22_combout\,
	cout => \A_DataPath|I_RegQtdProcessada|conteudo[3]~23\);

-- Location: LCFF_X45_Y31_N7
\A_DataPath|I_RegQtdProcessada|conteudo[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|I_RegQtdProcessada|conteudo[3]~22_combout\,
	aclr => \B_Controladora|estado_atual.S1~regout\,
	ena => \B_Controladora|estado_atual.S12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|I_RegQtdProcessada|conteudo\(3));

-- Location: LCCOMB_X45_Y31_N8
\A_DataPath|I_RegQtdProcessada|conteudo[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|I_RegQtdProcessada|conteudo[4]~24_combout\ = ((\A_DataPath|H_RegAuxQtdProcessada|conteudo\(4) $ (\A_DataPath|A_RegPeso|conteudo\(4) $ (!\A_DataPath|I_RegQtdProcessada|conteudo[3]~23\)))) # (GND)
-- \A_DataPath|I_RegQtdProcessada|conteudo[4]~25\ = CARRY((\A_DataPath|H_RegAuxQtdProcessada|conteudo\(4) & ((\A_DataPath|A_RegPeso|conteudo\(4)) # (!\A_DataPath|I_RegQtdProcessada|conteudo[3]~23\))) # (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(4) & 
-- (\A_DataPath|A_RegPeso|conteudo\(4) & !\A_DataPath|I_RegQtdProcessada|conteudo[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(4),
	datab => \A_DataPath|A_RegPeso|conteudo\(4),
	datad => VCC,
	cin => \A_DataPath|I_RegQtdProcessada|conteudo[3]~23\,
	combout => \A_DataPath|I_RegQtdProcessada|conteudo[4]~24_combout\,
	cout => \A_DataPath|I_RegQtdProcessada|conteudo[4]~25\);

-- Location: LCFF_X45_Y31_N9
\A_DataPath|I_RegQtdProcessada|conteudo[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|I_RegQtdProcessada|conteudo[4]~24_combout\,
	aclr => \B_Controladora|estado_atual.S1~regout\,
	ena => \B_Controladora|estado_atual.S12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|I_RegQtdProcessada|conteudo\(4));

-- Location: LCFF_X44_Y31_N1
\A_DataPath|H_RegAuxQtdProcessada|conteudo[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|I_RegQtdProcessada|conteudo\(5),
	sload => VCC,
	ena => \B_Controladora|estado_atual.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(5));

-- Location: LCCOMB_X45_Y31_N10
\A_DataPath|I_RegQtdProcessada|conteudo[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|I_RegQtdProcessada|conteudo[5]~26_combout\ = (\A_DataPath|A_RegPeso|conteudo\(5) & ((\A_DataPath|H_RegAuxQtdProcessada|conteudo\(5) & (\A_DataPath|I_RegQtdProcessada|conteudo[4]~25\ & VCC)) # (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(5) & 
-- (!\A_DataPath|I_RegQtdProcessada|conteudo[4]~25\)))) # (!\A_DataPath|A_RegPeso|conteudo\(5) & ((\A_DataPath|H_RegAuxQtdProcessada|conteudo\(5) & (!\A_DataPath|I_RegQtdProcessada|conteudo[4]~25\)) # (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(5) & 
-- ((\A_DataPath|I_RegQtdProcessada|conteudo[4]~25\) # (GND)))))
-- \A_DataPath|I_RegQtdProcessada|conteudo[5]~27\ = CARRY((\A_DataPath|A_RegPeso|conteudo\(5) & (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(5) & !\A_DataPath|I_RegQtdProcessada|conteudo[4]~25\)) # (!\A_DataPath|A_RegPeso|conteudo\(5) & 
-- ((!\A_DataPath|I_RegQtdProcessada|conteudo[4]~25\) # (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|A_RegPeso|conteudo\(5),
	datab => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(5),
	datad => VCC,
	cin => \A_DataPath|I_RegQtdProcessada|conteudo[4]~25\,
	combout => \A_DataPath|I_RegQtdProcessada|conteudo[5]~26_combout\,
	cout => \A_DataPath|I_RegQtdProcessada|conteudo[5]~27\);

-- Location: LCFF_X45_Y31_N11
\A_DataPath|I_RegQtdProcessada|conteudo[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|I_RegQtdProcessada|conteudo[5]~26_combout\,
	aclr => \B_Controladora|estado_atual.S1~regout\,
	ena => \B_Controladora|estado_atual.S12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|I_RegQtdProcessada|conteudo\(5));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PesoMedido[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PesoMedido(6),
	combout => \PesoMedido~combout\(6));

-- Location: LCCOMB_X47_Y31_N16
\A_DataPath|A_RegPeso|conteudo[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|A_RegPeso|conteudo[6]~feeder_combout\ = \PesoMedido~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PesoMedido~combout\(6),
	combout => \A_DataPath|A_RegPeso|conteudo[6]~feeder_combout\);

-- Location: LCFF_X47_Y31_N17
\A_DataPath|A_RegPeso|conteudo[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|A_RegPeso|conteudo[6]~feeder_combout\,
	ena => \B_Controladora|LdPeso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|A_RegPeso|conteudo\(6));

-- Location: LCCOMB_X45_Y31_N12
\A_DataPath|I_RegQtdProcessada|conteudo[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|I_RegQtdProcessada|conteudo[6]~28_combout\ = ((\A_DataPath|H_RegAuxQtdProcessada|conteudo\(6) $ (\A_DataPath|A_RegPeso|conteudo\(6) $ (!\A_DataPath|I_RegQtdProcessada|conteudo[5]~27\)))) # (GND)
-- \A_DataPath|I_RegQtdProcessada|conteudo[6]~29\ = CARRY((\A_DataPath|H_RegAuxQtdProcessada|conteudo\(6) & ((\A_DataPath|A_RegPeso|conteudo\(6)) # (!\A_DataPath|I_RegQtdProcessada|conteudo[5]~27\))) # (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(6) & 
-- (\A_DataPath|A_RegPeso|conteudo\(6) & !\A_DataPath|I_RegQtdProcessada|conteudo[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(6),
	datab => \A_DataPath|A_RegPeso|conteudo\(6),
	datad => VCC,
	cin => \A_DataPath|I_RegQtdProcessada|conteudo[5]~27\,
	combout => \A_DataPath|I_RegQtdProcessada|conteudo[6]~28_combout\,
	cout => \A_DataPath|I_RegQtdProcessada|conteudo[6]~29\);

-- Location: LCFF_X45_Y31_N13
\A_DataPath|I_RegQtdProcessada|conteudo[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|I_RegQtdProcessada|conteudo[6]~28_combout\,
	aclr => \B_Controladora|estado_atual.S1~regout\,
	ena => \B_Controladora|estado_atual.S12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|I_RegQtdProcessada|conteudo\(6));

-- Location: LCFF_X44_Y31_N5
\A_DataPath|H_RegAuxQtdProcessada|conteudo[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|I_RegQtdProcessada|conteudo\(7),
	sload => VCC,
	ena => \B_Controladora|estado_atual.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(7));

-- Location: LCCOMB_X45_Y31_N14
\A_DataPath|I_RegQtdProcessada|conteudo[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|I_RegQtdProcessada|conteudo[7]~30_combout\ = (\A_DataPath|A_RegPeso|conteudo\(7) & ((\A_DataPath|H_RegAuxQtdProcessada|conteudo\(7) & (\A_DataPath|I_RegQtdProcessada|conteudo[6]~29\ & VCC)) # (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(7) & 
-- (!\A_DataPath|I_RegQtdProcessada|conteudo[6]~29\)))) # (!\A_DataPath|A_RegPeso|conteudo\(7) & ((\A_DataPath|H_RegAuxQtdProcessada|conteudo\(7) & (!\A_DataPath|I_RegQtdProcessada|conteudo[6]~29\)) # (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(7) & 
-- ((\A_DataPath|I_RegQtdProcessada|conteudo[6]~29\) # (GND)))))
-- \A_DataPath|I_RegQtdProcessada|conteudo[7]~31\ = CARRY((\A_DataPath|A_RegPeso|conteudo\(7) & (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(7) & !\A_DataPath|I_RegQtdProcessada|conteudo[6]~29\)) # (!\A_DataPath|A_RegPeso|conteudo\(7) & 
-- ((!\A_DataPath|I_RegQtdProcessada|conteudo[6]~29\) # (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|A_RegPeso|conteudo\(7),
	datab => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(7),
	datad => VCC,
	cin => \A_DataPath|I_RegQtdProcessada|conteudo[6]~29\,
	combout => \A_DataPath|I_RegQtdProcessada|conteudo[7]~30_combout\,
	cout => \A_DataPath|I_RegQtdProcessada|conteudo[7]~31\);

-- Location: LCFF_X45_Y31_N15
\A_DataPath|I_RegQtdProcessada|conteudo[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|I_RegQtdProcessada|conteudo[7]~30_combout\,
	aclr => \B_Controladora|estado_atual.S1~regout\,
	ena => \B_Controladora|estado_atual.S12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|I_RegQtdProcessada|conteudo\(7));

-- Location: LCFF_X44_Y31_N27
\A_DataPath|H_RegAuxQtdProcessada|conteudo[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \A_DataPath|I_RegQtdProcessada|conteudo\(8),
	sload => VCC,
	ena => \B_Controladora|estado_atual.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(8));

-- Location: LCCOMB_X45_Y31_N16
\A_DataPath|I_RegQtdProcessada|conteudo[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|I_RegQtdProcessada|conteudo[8]~32_combout\ = ((\A_DataPath|A_RegPeso|conteudo\(8) $ (\A_DataPath|H_RegAuxQtdProcessada|conteudo\(8) $ (!\A_DataPath|I_RegQtdProcessada|conteudo[7]~31\)))) # (GND)
-- \A_DataPath|I_RegQtdProcessada|conteudo[8]~33\ = CARRY((\A_DataPath|A_RegPeso|conteudo\(8) & ((\A_DataPath|H_RegAuxQtdProcessada|conteudo\(8)) # (!\A_DataPath|I_RegQtdProcessada|conteudo[7]~31\))) # (!\A_DataPath|A_RegPeso|conteudo\(8) & 
-- (\A_DataPath|H_RegAuxQtdProcessada|conteudo\(8) & !\A_DataPath|I_RegQtdProcessada|conteudo[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|A_RegPeso|conteudo\(8),
	datab => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(8),
	datad => VCC,
	cin => \A_DataPath|I_RegQtdProcessada|conteudo[7]~31\,
	combout => \A_DataPath|I_RegQtdProcessada|conteudo[8]~32_combout\,
	cout => \A_DataPath|I_RegQtdProcessada|conteudo[8]~33\);

-- Location: LCFF_X45_Y31_N17
\A_DataPath|I_RegQtdProcessada|conteudo[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|I_RegQtdProcessada|conteudo[8]~32_combout\,
	aclr => \B_Controladora|estado_atual.S1~regout\,
	ena => \B_Controladora|estado_atual.S12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|I_RegQtdProcessada|conteudo\(8));

-- Location: LCCOMB_X45_Y31_N18
\A_DataPath|I_RegQtdProcessada|conteudo[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|I_RegQtdProcessada|conteudo[9]~34_combout\ = (\A_DataPath|H_RegAuxQtdProcessada|conteudo\(9) & ((\A_DataPath|A_RegPeso|conteudo\(9) & (\A_DataPath|I_RegQtdProcessada|conteudo[8]~33\ & VCC)) # (!\A_DataPath|A_RegPeso|conteudo\(9) & 
-- (!\A_DataPath|I_RegQtdProcessada|conteudo[8]~33\)))) # (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(9) & ((\A_DataPath|A_RegPeso|conteudo\(9) & (!\A_DataPath|I_RegQtdProcessada|conteudo[8]~33\)) # (!\A_DataPath|A_RegPeso|conteudo\(9) & 
-- ((\A_DataPath|I_RegQtdProcessada|conteudo[8]~33\) # (GND)))))
-- \A_DataPath|I_RegQtdProcessada|conteudo[9]~35\ = CARRY((\A_DataPath|H_RegAuxQtdProcessada|conteudo\(9) & (!\A_DataPath|A_RegPeso|conteudo\(9) & !\A_DataPath|I_RegQtdProcessada|conteudo[8]~33\)) # (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(9) & 
-- ((!\A_DataPath|I_RegQtdProcessada|conteudo[8]~33\) # (!\A_DataPath|A_RegPeso|conteudo\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(9),
	datab => \A_DataPath|A_RegPeso|conteudo\(9),
	datad => VCC,
	cin => \A_DataPath|I_RegQtdProcessada|conteudo[8]~33\,
	combout => \A_DataPath|I_RegQtdProcessada|conteudo[9]~34_combout\,
	cout => \A_DataPath|I_RegQtdProcessada|conteudo[9]~35\);

-- Location: LCFF_X45_Y31_N19
\A_DataPath|I_RegQtdProcessada|conteudo[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|I_RegQtdProcessada|conteudo[9]~34_combout\,
	aclr => \B_Controladora|estado_atual.S1~regout\,
	ena => \B_Controladora|estado_atual.S12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|I_RegQtdProcessada|conteudo\(9));

-- Location: LCCOMB_X44_Y31_N18
\A_DataPath|H_RegAuxQtdProcessada|conteudo[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|H_RegAuxQtdProcessada|conteudo[10]~feeder_combout\ = \A_DataPath|I_RegQtdProcessada|conteudo\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A_DataPath|I_RegQtdProcessada|conteudo\(10),
	combout => \A_DataPath|H_RegAuxQtdProcessada|conteudo[10]~feeder_combout\);

-- Location: LCFF_X44_Y31_N19
\A_DataPath|H_RegAuxQtdProcessada|conteudo[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|H_RegAuxQtdProcessada|conteudo[10]~feeder_combout\,
	ena => \B_Controladora|estado_atual.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(10));

-- Location: LCCOMB_X45_Y31_N20
\A_DataPath|I_RegQtdProcessada|conteudo[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|I_RegQtdProcessada|conteudo[10]~36_combout\ = ((\A_DataPath|A_RegPeso|conteudo\(10) $ (\A_DataPath|H_RegAuxQtdProcessada|conteudo\(10) $ (!\A_DataPath|I_RegQtdProcessada|conteudo[9]~35\)))) # (GND)
-- \A_DataPath|I_RegQtdProcessada|conteudo[10]~37\ = CARRY((\A_DataPath|A_RegPeso|conteudo\(10) & ((\A_DataPath|H_RegAuxQtdProcessada|conteudo\(10)) # (!\A_DataPath|I_RegQtdProcessada|conteudo[9]~35\))) # (!\A_DataPath|A_RegPeso|conteudo\(10) & 
-- (\A_DataPath|H_RegAuxQtdProcessada|conteudo\(10) & !\A_DataPath|I_RegQtdProcessada|conteudo[9]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|A_RegPeso|conteudo\(10),
	datab => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(10),
	datad => VCC,
	cin => \A_DataPath|I_RegQtdProcessada|conteudo[9]~35\,
	combout => \A_DataPath|I_RegQtdProcessada|conteudo[10]~36_combout\,
	cout => \A_DataPath|I_RegQtdProcessada|conteudo[10]~37\);

-- Location: LCFF_X45_Y31_N21
\A_DataPath|I_RegQtdProcessada|conteudo[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|I_RegQtdProcessada|conteudo[10]~36_combout\,
	aclr => \B_Controladora|estado_atual.S1~regout\,
	ena => \B_Controladora|estado_atual.S12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|I_RegQtdProcessada|conteudo\(10));

-- Location: LCCOMB_X45_Y31_N22
\A_DataPath|I_RegQtdProcessada|conteudo[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|I_RegQtdProcessada|conteudo[11]~38_combout\ = (\A_DataPath|H_RegAuxQtdProcessada|conteudo\(11) & ((\A_DataPath|A_RegPeso|conteudo\(11) & (\A_DataPath|I_RegQtdProcessada|conteudo[10]~37\ & VCC)) # (!\A_DataPath|A_RegPeso|conteudo\(11) & 
-- (!\A_DataPath|I_RegQtdProcessada|conteudo[10]~37\)))) # (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(11) & ((\A_DataPath|A_RegPeso|conteudo\(11) & (!\A_DataPath|I_RegQtdProcessada|conteudo[10]~37\)) # (!\A_DataPath|A_RegPeso|conteudo\(11) & 
-- ((\A_DataPath|I_RegQtdProcessada|conteudo[10]~37\) # (GND)))))
-- \A_DataPath|I_RegQtdProcessada|conteudo[11]~39\ = CARRY((\A_DataPath|H_RegAuxQtdProcessada|conteudo\(11) & (!\A_DataPath|A_RegPeso|conteudo\(11) & !\A_DataPath|I_RegQtdProcessada|conteudo[10]~37\)) # (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(11) & 
-- ((!\A_DataPath|I_RegQtdProcessada|conteudo[10]~37\) # (!\A_DataPath|A_RegPeso|conteudo\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(11),
	datab => \A_DataPath|A_RegPeso|conteudo\(11),
	datad => VCC,
	cin => \A_DataPath|I_RegQtdProcessada|conteudo[10]~37\,
	combout => \A_DataPath|I_RegQtdProcessada|conteudo[11]~38_combout\,
	cout => \A_DataPath|I_RegQtdProcessada|conteudo[11]~39\);

-- Location: LCFF_X45_Y31_N23
\A_DataPath|I_RegQtdProcessada|conteudo[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|I_RegQtdProcessada|conteudo[11]~38_combout\,
	aclr => \B_Controladora|estado_atual.S1~regout\,
	ena => \B_Controladora|estado_atual.S12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|I_RegQtdProcessada|conteudo\(11));

-- Location: LCCOMB_X45_Y31_N24
\A_DataPath|I_RegQtdProcessada|conteudo[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|I_RegQtdProcessada|conteudo[12]~40_combout\ = ((\A_DataPath|H_RegAuxQtdProcessada|conteudo\(12) $ (\A_DataPath|A_RegPeso|conteudo\(12) $ (!\A_DataPath|I_RegQtdProcessada|conteudo[11]~39\)))) # (GND)
-- \A_DataPath|I_RegQtdProcessada|conteudo[12]~41\ = CARRY((\A_DataPath|H_RegAuxQtdProcessada|conteudo\(12) & ((\A_DataPath|A_RegPeso|conteudo\(12)) # (!\A_DataPath|I_RegQtdProcessada|conteudo[11]~39\))) # (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(12) & 
-- (\A_DataPath|A_RegPeso|conteudo\(12) & !\A_DataPath|I_RegQtdProcessada|conteudo[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(12),
	datab => \A_DataPath|A_RegPeso|conteudo\(12),
	datad => VCC,
	cin => \A_DataPath|I_RegQtdProcessada|conteudo[11]~39\,
	combout => \A_DataPath|I_RegQtdProcessada|conteudo[12]~40_combout\,
	cout => \A_DataPath|I_RegQtdProcessada|conteudo[12]~41\);

-- Location: LCFF_X45_Y31_N25
\A_DataPath|I_RegQtdProcessada|conteudo[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|I_RegQtdProcessada|conteudo[12]~40_combout\,
	aclr => \B_Controladora|estado_atual.S1~regout\,
	ena => \B_Controladora|estado_atual.S12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|I_RegQtdProcessada|conteudo\(12));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PesoMedido[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PesoMedido(13),
	combout => \PesoMedido~combout\(13));

-- Location: LCCOMB_X47_Y31_N8
\A_DataPath|A_RegPeso|conteudo[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|A_RegPeso|conteudo[13]~feeder_combout\ = \PesoMedido~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PesoMedido~combout\(13),
	combout => \A_DataPath|A_RegPeso|conteudo[13]~feeder_combout\);

-- Location: LCFF_X47_Y31_N9
\A_DataPath|A_RegPeso|conteudo[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|A_RegPeso|conteudo[13]~feeder_combout\,
	ena => \B_Controladora|LdPeso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|A_RegPeso|conteudo\(13));

-- Location: LCCOMB_X45_Y31_N26
\A_DataPath|I_RegQtdProcessada|conteudo[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|I_RegQtdProcessada|conteudo[13]~42_combout\ = (\A_DataPath|H_RegAuxQtdProcessada|conteudo\(13) & ((\A_DataPath|A_RegPeso|conteudo\(13) & (\A_DataPath|I_RegQtdProcessada|conteudo[12]~41\ & VCC)) # (!\A_DataPath|A_RegPeso|conteudo\(13) & 
-- (!\A_DataPath|I_RegQtdProcessada|conteudo[12]~41\)))) # (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(13) & ((\A_DataPath|A_RegPeso|conteudo\(13) & (!\A_DataPath|I_RegQtdProcessada|conteudo[12]~41\)) # (!\A_DataPath|A_RegPeso|conteudo\(13) & 
-- ((\A_DataPath|I_RegQtdProcessada|conteudo[12]~41\) # (GND)))))
-- \A_DataPath|I_RegQtdProcessada|conteudo[13]~43\ = CARRY((\A_DataPath|H_RegAuxQtdProcessada|conteudo\(13) & (!\A_DataPath|A_RegPeso|conteudo\(13) & !\A_DataPath|I_RegQtdProcessada|conteudo[12]~41\)) # (!\A_DataPath|H_RegAuxQtdProcessada|conteudo\(13) & 
-- ((!\A_DataPath|I_RegQtdProcessada|conteudo[12]~41\) # (!\A_DataPath|A_RegPeso|conteudo\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(13),
	datab => \A_DataPath|A_RegPeso|conteudo\(13),
	datad => VCC,
	cin => \A_DataPath|I_RegQtdProcessada|conteudo[12]~41\,
	combout => \A_DataPath|I_RegQtdProcessada|conteudo[13]~42_combout\,
	cout => \A_DataPath|I_RegQtdProcessada|conteudo[13]~43\);

-- Location: LCFF_X45_Y31_N27
\A_DataPath|I_RegQtdProcessada|conteudo[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|I_RegQtdProcessada|conteudo[13]~42_combout\,
	aclr => \B_Controladora|estado_atual.S1~regout\,
	ena => \B_Controladora|estado_atual.S12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|I_RegQtdProcessada|conteudo\(13));

-- Location: LCCOMB_X44_Y31_N6
\A_DataPath|H_RegAuxQtdProcessada|conteudo[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|H_RegAuxQtdProcessada|conteudo[14]~feeder_combout\ = \A_DataPath|I_RegQtdProcessada|conteudo\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A_DataPath|I_RegQtdProcessada|conteudo\(14),
	combout => \A_DataPath|H_RegAuxQtdProcessada|conteudo[14]~feeder_combout\);

-- Location: LCFF_X44_Y31_N7
\A_DataPath|H_RegAuxQtdProcessada|conteudo[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|H_RegAuxQtdProcessada|conteudo[14]~feeder_combout\,
	ena => \B_Controladora|estado_atual.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(14));

-- Location: LCCOMB_X45_Y31_N28
\A_DataPath|I_RegQtdProcessada|conteudo[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|I_RegQtdProcessada|conteudo[14]~44_combout\ = ((\A_DataPath|A_RegPeso|conteudo\(14) $ (\A_DataPath|H_RegAuxQtdProcessada|conteudo\(14) $ (!\A_DataPath|I_RegQtdProcessada|conteudo[13]~43\)))) # (GND)
-- \A_DataPath|I_RegQtdProcessada|conteudo[14]~45\ = CARRY((\A_DataPath|A_RegPeso|conteudo\(14) & ((\A_DataPath|H_RegAuxQtdProcessada|conteudo\(14)) # (!\A_DataPath|I_RegQtdProcessada|conteudo[13]~43\))) # (!\A_DataPath|A_RegPeso|conteudo\(14) & 
-- (\A_DataPath|H_RegAuxQtdProcessada|conteudo\(14) & !\A_DataPath|I_RegQtdProcessada|conteudo[13]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_DataPath|A_RegPeso|conteudo\(14),
	datab => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(14),
	datad => VCC,
	cin => \A_DataPath|I_RegQtdProcessada|conteudo[13]~43\,
	combout => \A_DataPath|I_RegQtdProcessada|conteudo[14]~44_combout\,
	cout => \A_DataPath|I_RegQtdProcessada|conteudo[14]~45\);

-- Location: LCFF_X45_Y31_N29
\A_DataPath|I_RegQtdProcessada|conteudo[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|I_RegQtdProcessada|conteudo[14]~44_combout\,
	aclr => \B_Controladora|estado_atual.S1~regout\,
	ena => \B_Controladora|estado_atual.S12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|I_RegQtdProcessada|conteudo\(14));

-- Location: LCCOMB_X44_Y31_N24
\A_DataPath|H_RegAuxQtdProcessada|conteudo[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|H_RegAuxQtdProcessada|conteudo[15]~feeder_combout\ = \A_DataPath|I_RegQtdProcessada|conteudo\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A_DataPath|I_RegQtdProcessada|conteudo\(15),
	combout => \A_DataPath|H_RegAuxQtdProcessada|conteudo[15]~feeder_combout\);

-- Location: LCFF_X44_Y31_N25
\A_DataPath|H_RegAuxQtdProcessada|conteudo[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|H_RegAuxQtdProcessada|conteudo[15]~feeder_combout\,
	ena => \B_Controladora|estado_atual.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(15));

-- Location: LCCOMB_X45_Y31_N30
\A_DataPath|I_RegQtdProcessada|conteudo[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|I_RegQtdProcessada|conteudo[15]~46_combout\ = \A_DataPath|H_RegAuxQtdProcessada|conteudo\(15) $ (\A_DataPath|I_RegQtdProcessada|conteudo[14]~45\ $ (\A_DataPath|A_RegPeso|conteudo\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|H_RegAuxQtdProcessada|conteudo\(15),
	datad => \A_DataPath|A_RegPeso|conteudo\(15),
	cin => \A_DataPath|I_RegQtdProcessada|conteudo[14]~45\,
	combout => \A_DataPath|I_RegQtdProcessada|conteudo[15]~46_combout\);

-- Location: LCFF_X45_Y31_N31
\A_DataPath|I_RegQtdProcessada|conteudo[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|I_RegQtdProcessada|conteudo[15]~46_combout\,
	aclr => \B_Controladora|estado_atual.S1~regout\,
	ena => \B_Controladora|estado_atual.S12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|I_RegQtdProcessada|conteudo\(15));

-- Location: LCFF_X45_Y26_N3
\A_DataPath|G_RegNivelCombustivel|conteudo[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo[1]~18_combout\,
	sdata => \~GND~combout\,
	sload => \B_Controladora|WideOr0~0_combout\,
	ena => \B_Controladora|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|G_RegNivelCombustivel|conteudo\(1));

-- Location: LCFF_X45_Y26_N13
\A_DataPath|G_RegNivelCombustivel|conteudo[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo[6]~28_combout\,
	sdata => \~GND~combout\,
	sload => \B_Controladora|WideOr0~0_combout\,
	ena => \B_Controladora|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|G_RegNivelCombustivel|conteudo\(6));

-- Location: LCFF_X45_Y26_N15
\A_DataPath|G_RegNivelCombustivel|conteudo[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo[7]~30_combout\,
	sdata => \~GND~combout\,
	sload => \B_Controladora|WideOr0~0_combout\,
	ena => \B_Controladora|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|G_RegNivelCombustivel|conteudo\(7));

-- Location: LCFF_X45_Y26_N23
\A_DataPath|G_RegNivelCombustivel|conteudo[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo[11]~38_combout\,
	sdata => \~GND~combout\,
	sload => \B_Controladora|WideOr0~0_combout\,
	ena => \B_Controladora|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|G_RegNivelCombustivel|conteudo\(11));

-- Location: LCCOMB_X47_Y26_N30
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|F_RegAuxNivelCombustivel|conteudo[15]~feeder_combout\ = \A_DataPath|G_RegNivelCombustivel|conteudo\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A_DataPath|G_RegNivelCombustivel|conteudo\(15),
	combout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo[15]~feeder_combout\);

-- Location: LCFF_X47_Y26_N31
\A_DataPath|F_RegAuxNivelCombustivel|conteudo[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|F_RegAuxNivelCombustivel|conteudo[15]~feeder_combout\,
	ena => \B_Controladora|estado_atual.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(15));

-- Location: LCCOMB_X45_Y26_N30
\A_DataPath|G_RegNivelCombustivel|conteudo[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \A_DataPath|G_RegNivelCombustivel|conteudo[15]~46_combout\ = \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(15) $ (!\A_DataPath|G_RegNivelCombustivel|conteudo[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_DataPath|F_RegAuxNivelCombustivel|conteudo\(15),
	cin => \A_DataPath|G_RegNivelCombustivel|conteudo[14]~45\,
	combout => \A_DataPath|G_RegNivelCombustivel|conteudo[15]~46_combout\);

-- Location: LCFF_X45_Y26_N31
\A_DataPath|G_RegNivelCombustivel|conteudo[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo[15]~46_combout\,
	sdata => \~GND~combout\,
	sload => \B_Controladora|WideOr0~0_combout\,
	ena => \B_Controladora|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A_DataPath|G_RegNivelCombustivel|conteudo\(15));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AlarmePeso~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B_Controladora|estado_atual.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AlarmePeso);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AlarmeCombustivel~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B_Controladora|estado_atual.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AlarmeCombustivel);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AlarmeTemperatura~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B_Controladora|estado_atual.S13~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AlarmeTemperatura);

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Carregar~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B_Controladora|estado_atual.S9~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Carregar);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Descarregar~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B_Controladora|estado_atual.S17~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Descarregar);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Fogo~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B_Controladora|Fogo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Fogo);

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AvisoFornoLigado~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B_Controladora|Fogo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AvisoFornoLigado);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AvisoCarregamentoHabilitado~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B_Controladora|estado_atual.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AvisoCarregamentoHabilitado);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DesligamentoForcado~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B_Controladora|estado_atual.S14~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DesligamentoForcado);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\QtdProcessada[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|I_RegQtdProcessada|conteudo\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QtdProcessada(0));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\QtdProcessada[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|I_RegQtdProcessada|conteudo\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QtdProcessada(1));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\QtdProcessada[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|I_RegQtdProcessada|conteudo\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QtdProcessada(2));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\QtdProcessada[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|I_RegQtdProcessada|conteudo\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QtdProcessada(3));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\QtdProcessada[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|I_RegQtdProcessada|conteudo\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QtdProcessada(4));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\QtdProcessada[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|I_RegQtdProcessada|conteudo\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QtdProcessada(5));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\QtdProcessada[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|I_RegQtdProcessada|conteudo\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QtdProcessada(6));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\QtdProcessada[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|I_RegQtdProcessada|conteudo\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QtdProcessada(7));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\QtdProcessada[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|I_RegQtdProcessada|conteudo\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QtdProcessada(8));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\QtdProcessada[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|I_RegQtdProcessada|conteudo\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QtdProcessada(9));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\QtdProcessada[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|I_RegQtdProcessada|conteudo\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QtdProcessada(10));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\QtdProcessada[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|I_RegQtdProcessada|conteudo\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QtdProcessada(11));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\QtdProcessada[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|I_RegQtdProcessada|conteudo\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QtdProcessada(12));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\QtdProcessada[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|I_RegQtdProcessada|conteudo\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QtdProcessada(13));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\QtdProcessada[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|I_RegQtdProcessada|conteudo\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QtdProcessada(14));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\QtdProcessada[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|I_RegQtdProcessada|conteudo\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QtdProcessada(15));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NivelCombustivel[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NivelCombustivel(0));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NivelCombustivel[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NivelCombustivel(1));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NivelCombustivel[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NivelCombustivel(2));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NivelCombustivel[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NivelCombustivel(3));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NivelCombustivel[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NivelCombustivel(4));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NivelCombustivel[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NivelCombustivel(5));

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NivelCombustivel[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NivelCombustivel(6));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NivelCombustivel[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NivelCombustivel(7));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NivelCombustivel[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NivelCombustivel(8));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NivelCombustivel[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NivelCombustivel(9));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NivelCombustivel[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NivelCombustivel(10));

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NivelCombustivel[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NivelCombustivel(11));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NivelCombustivel[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NivelCombustivel(12));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NivelCombustivel[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NivelCombustivel(13));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NivelCombustivel[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NivelCombustivel(14));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NivelCombustivel[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_DataPath|G_RegNivelCombustivel|conteudo\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NivelCombustivel(15));
END structure;


