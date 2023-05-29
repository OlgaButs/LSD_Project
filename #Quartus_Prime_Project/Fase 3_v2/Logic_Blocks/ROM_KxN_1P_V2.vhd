LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;


-- Interface:
ENTITY ROM_KxN_1P_V2 IS
	GENERIC (
		K : INTEGER := 1;
		N : INTEGER := 16);

	PORT (
		address : IN STD_LOGIC_VECTOR((K - 1) DOWNTO 0);
		dataOut : OUT STD_LOGIC_VECTOR((N - 1) DOWNTO 0));
END ROM_KxN_1P_V2;


-- Arquitetura:
ARCHITECTURE Behaviour OF ROM_KxN_1P_V2 IS

	CONSTANT WORDS : INTEGER := (2 ** K);
	TYPE TMemory IS ARRAY(0 TO (WORDS - 1)) OF STD_LOGIC_VECTOR((N - 1) DOWNTO 0);

	CONSTANT c_memory : TMemory := ("1010101011001110", -- ON
											  "0101101111001101");-- STOP
BEGIN

	dataOut <= c_memory(to_integer(unsigned(address)));

END Behaviour;

-- NOTA: Bloco Lógico Standard Retirado das Aulas de LSD.