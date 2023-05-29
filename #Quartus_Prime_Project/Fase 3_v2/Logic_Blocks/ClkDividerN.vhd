LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


-- Interface:
ENTITY ClkDividerN IS
	GENERIC (divFactor : NATURAL := 4);
	PORT (
		clkIn : IN STD_LOGIC;
		clkOut : OUT STD_LOGIC);
END ClkDividerN;


-- Architecture:
ARCHITECTURE RTL OF ClkDividerN IS

	SIGNAL s_divCounter : NATURAL;
	
BEGIN
	PROCESS (clkIn)
	BEGIN
		IF (rising_edge(clkIn)) THEN
			IF (s_divCounter = divFactor - 1) THEN
				clkOut <= '0';
				s_divCounter <= 0;
			ELSE
				IF (s_divCounter = (divFactor / 2 - 1)) THEN
					clkOut <= '1';
				END IF;
				s_divCounter <= s_divCounter + 1;
			END IF;
		END IF;
	END PROCESS;
END RTL;

-- NOTA: Bloco Lógico Standard Retirado das Aulas de LSD.