LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


-- Interface:
ENTITY Counter IS
	PORT (
		clk    : IN STD_LOGIC;
		count  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		dataIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		enable : IN STD_LOGIC;
		button : IN STD_LOGIC;
		load   : IN STD_LOGIC;
		reset  : IN STD_LOGIC
	);
END Counter;


-- Architecture:
ARCHITECTURE Behavioral OF Counter IS

	SIGNAL s_count : unsigned(7 DOWNTO 0);
	
BEGIN
	PROCESS (clk)
	BEGIN
		IF (rising_edge(clk)) THEN
			IF (reset = '1') THEN
				s_count <= (OTHERS => '0');
				ELSIF (enable = '1') THEN
				IF (load = '1') THEN
					s_count <= unsigned(dataIn);
					ELSIF (button = '1') THEN
					s_count <= s_count + 1;
				END IF;
			END IF;
		END IF;
	END PROCESS;

	count <= STD_LOGIC_VECTOR(s_count);
	
END Behavioral;

-- NOTA: Bloco Lógico Standard Retirado das Aulas de LSD.