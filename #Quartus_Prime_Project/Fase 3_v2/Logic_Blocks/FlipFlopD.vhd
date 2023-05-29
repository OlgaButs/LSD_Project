LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


-- Interface:
ENTITY FlipFlopD IS
	PORT (
		clk : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		enable : IN STD_LOGIC;
		dataIn : IN STD_LOGIC;
		dataOut : OUT STD_LOGIC);
END FlipFlopD;


-- Architecture:
ARCHITECTURE Behavioral OF FlipFlopD IS
BEGIN
	PROCESS (clk)
	BEGIN
		IF (rising_edge(clk)) THEN
			IF (reset = '1') THEN
				dataOut <= '0';
				ELSIF (enable = '1') THEN
				dataOut <= dataIn;
			END IF;
		END IF;
	END PROCESS;
END Behavioral;

-- NOTA: Bloco Lógico Standard Retirado das Aulas de LSD.