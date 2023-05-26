LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


-- Interface:
ENTITY PulseGenN IS
	GENERIC (N : POSITIVE := 4);
	PORT (
		clkIn : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		pulse : OUT STD_LOGIC);
END PulseGenN;


-- Architecture:
ARCHITECTURE Behavioral OF PulseGenN IS

	SIGNAL s_counter : NATURAL;
	
BEGIN
	PROCESS (clkIn)
	BEGIN
		IF (rising_edge(clkIn)) THEN
			IF (reset = '1') THEN
				pulse <= '0';
				s_counter <= 0;
				ELSIF (s_counter = N - 1) THEN
				pulse <= '1';
				s_counter <= 0;
				ELSE
				s_counter <= s_counter + 1;
				pulse <= '0';
			END IF;
		END IF;
	END PROCESS;
END Behavioral;

-- NOTA: Bloco Lógico Standard Retirado das Aulas de LSD.