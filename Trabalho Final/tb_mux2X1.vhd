LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY tb_mux2X1 IS
END tb_mux2X1;

ARCHITECTURE testeMux OF tb_mux2X1 IS

	COMPONENT mux2X1 IS
		GENERIC (n : NATURAL := 16);
		PORT (
			CurrentChange : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
			CurrentMoney : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
			ChaveRetorno : IN STD_LOGIC;
			ReturnValue : OUT STD_LOGIC_VECTOR(n - 1 DOWNTO 0)
		);
	END COMPONENT;

	SIGNAL CC, CM, RV : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL CR : STD_LOGIC := '0';

BEGIN
	instancia_Mux2X1 : mux2X1 PORT MAP(
		CurrentChange => CC, CurrentMoney => CM,
		ReturnValue => RV, ChaveRetorno => CR);

	CC <= x"0000", x"0020" AFTER 50 ns, x"0080" AFTER 100 ns;
	CM <= x"0000", x"0025" AFTER 50 ns, x"0350" AFTER 100 ns;
	CR <= NOT(CR) AFTER 25 ns;

END testeMux;