LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;


-- Interface:
ENTITY ROM_KxN_1P_V1 IS
	GENERIC (
		K : INTEGER := 4;
		N : INTEGER := 8);

	PORT (
		address : IN STD_LOGIC_VECTOR((K - 1) DOWNTO 0);
		dataOut : OUT STD_LOGIC_VECTOR((N - 1) DOWNTO 0));
END ROM_KxN_1P_V1;


-- Architecture:
-- NOTA: A Parametrização Para Futuros Pães Deve Ser Feita Aqui. (+na FSM)
ARCHITECTURE Behaviour OF ROM_KxN_1P_V1 IS

	CONSTANT WORDS : INTEGER := (2 ** K);
	TYPE TMemory IS ARRAY(0 TO (WORDS - 1)) OF STD_LOGIC_VECTOR((N - 1) DOWNTO 0);
	
											--TempoTotal,  Amassar ,  Levedar ,   Cozer
	CONSTANT c_memory : TMemory := ("00011000","00001010","00000100","00001010", -- Caseiro
											  "00100001","00001111","00001000","00001010", -- Rústico
											  "00000010","00000000","00000000","00000000", -- Outro 1 (para futuros
											  "00000000","00000000","00000000","00000000");-- Outro 2 tipos de pão)
BEGIN

	dataOut <= c_memory(to_integer(unsigned(address)));

END Behaviour;
-- NOTA: Bloco Lógico Standard Retirado das Aulas de LSD.