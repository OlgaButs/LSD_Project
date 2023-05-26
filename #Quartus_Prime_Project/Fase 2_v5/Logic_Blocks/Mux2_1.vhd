LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


-- Interface:
ENTITY Mux2_1 IS
	GENERIC (
		N : POSITIVE := 4);
	PORT (
		sel : IN STD_LOGIC;
		input0 : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
		input1 : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
		muxOut : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0));
END Mux2_1;


-- Architecture:
ARCHITECTURE BehavAssign OF Mux2_1 IS
BEGIN
	muxOut <= input0 WHEN (sel = '0') ELSE
	input1;
END BehavAssign;

-- NOTA: Bloco Lógico Standard Retirado das Aulas de LSD.