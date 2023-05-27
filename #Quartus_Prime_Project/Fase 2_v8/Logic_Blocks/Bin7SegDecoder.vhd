LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


-- Interface:
ENTITY Bin7SegDecoder IS
	PORT (
		binInput : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		decOut_n : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		enable : IN STD_LOGIC);
END Bin7SegDecoder;


-- Architecture:
ARCHITECTURE Behavioral OF Bin7SegDecoder IS
BEGIN
	decOut_n <= "1111111" WHEN enable = '0' ELSE
					"1111001" WHEN binInput = "0001" ELSE -- 1
					"0100100" WHEN binInput = "0010" ELSE -- 2
					"0110000" WHEN binInput = "0011" ELSE -- 3
					"0011001" WHEN binInput = "0100" ELSE -- 4
					"0010010" WHEN binInput = "0101" ELSE -- 5/S
					"0000010" WHEN binInput = "0110" ELSE -- 6
					"1111000" WHEN binInput = "0111" ELSE -- 7
					"0000000" WHEN binInput = "1000" ELSE -- 8
					"0010000" WHEN binInput = "1001" ELSE -- 9
					"1111111" WHEN binInput = "1010" ELSE -- 
					"0000111" WHEN binInput = "1011" ELSE -- t
					"0100011" WHEN binInput = "1100" ELSE -- o
					"0001100" WHEN binInput = "1101" ELSE -- P
					"0101011" WHEN binInput = "1110" ELSE -- n
					"0111111" WHEN binInput = "1111" ELSE -- -
					"1000000"; -- 0/O
END Behavioral;

-- NOTA: Bloco Lógico Standard Retirado das Aulas de LSD.