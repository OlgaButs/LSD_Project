LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


-- Interface:
ENTITY Mux3_1 IS
	PORT (
		dataIn1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		dataIn2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		dataIn3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		S 		  : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		dataOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END Mux3_1;


-- Architecture:
ARCHITECTURE Behavioral OF Mux3_1 IS
BEGIN
	PROCESS (S, dataIn1, dataIn2, dataIn3)
	BEGIN
		CASE S IS
			WHEN "01" =>
				dataOut <= dataIn1;
			WHEN "10" =>
				dataOut <= dataIn2;
			WHEN OTHERS =>
				dataOut <= dataIn3;
		END CASE;
	END PROCESS;
END Behavioral;