LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


-- Interface:
ENTITY BinToBCD IS
	PORT (
		inBin : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		outBCD : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		outBCD_2 : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
END BinToBCD;


-- Architecture:
ARCHITECTURE Behavioral OF BinToBCD IS
	SIGNAL n : INTEGER;
BEGIN
	n <= to_integer(unsigned(inBin));
	PROCESS (inBin, n)
	BEGIN
		IF n < 10 THEN
			outBCD <= inBin(3 DOWNTO 0);
			outBCD_2 <= "0000";
		ELSIF n < 20 THEN
			outBCD_2 <= "0001";
			CASE n IS
				WHEN 10 => outBCD <= "0000";
				WHEN 11 => outBCD <= "0001";
				WHEN 12 => outBCD <= "0010";
				WHEN 13 => outBCD <= "0011";
				WHEN 14 => outBCD <= "0100";
				WHEN 15 => outBCD <= "0101";
				WHEN 16 => outBCD <= "0110";
				WHEN 17 => outBCD <= "0111";
				WHEN 18 => outBCD <= "1000";
				WHEN OTHERS => outBCD <= "1001";
			END CASE;
		ELSIF n < 30 THEN
			outBCD_2 <= "0010";
			CASE n IS
				WHEN 20 => outBCD <= "0000";
				WHEN 21 => outBCD <= "0001";
				WHEN 22 => outBCD <= "0010";
				WHEN 23 => outBCD <= "0011";
				WHEN 24 => outBCD <= "0100";
				WHEN 25 => outBCD <= "0101";
				WHEN 26 => outBCD <= "0110";
				WHEN 27 => outBCD <= "0111";
				WHEN 28 => outBCD <= "1000";
				WHEN OTHERS => outBCD <= "1001";
			END CASE;
		ELSIF n < 40 THEN
			outBCD_2 <= "0011";
			CASE n IS
				WHEN 30 => outBCD <= "0000";
				WHEN 31 => outBCD <= "0001";
				WHEN 32 => outBCD <= "0010";
				WHEN 33 => outBCD <= "0011";
				WHEN 34 => outBCD <= "0100";
				WHEN 35 => outBCD <= "0101";
				WHEN 36 => outBCD <= "0110";
				WHEN 37 => outBCD <= "0111";
				WHEN 38 => outBCD <= "1000";
				WHEN OTHERS => outBCD <= "1001";
			END CASE;
		ELSIF n < 50 THEN
			outBCD_2 <= "0100";
			CASE n IS
				WHEN 40 => outBCD <= "0000";
				WHEN 41 => outBCD <= "0001";
				WHEN 42 => outBCD <= "0010";
				WHEN 43 => outBCD <= "0011";
				WHEN 44 => outBCD <= "0100";
				WHEN 45 => outBCD <= "0101";
				WHEN 46 => outBCD <= "0110";
				WHEN 47 => outBCD <= "0111";
				WHEN 48 => outBCD <= "1000";
				WHEN OTHERS => outBCD <= "1001";
			END CASE;
		ELSIF n < 60 THEN
			outBCD_2 <= "0101";
			CASE n IS
				WHEN 50 => outBCD <= "0000";
				WHEN 51 => outBCD <= "0001";
				WHEN 52 => outBCD <= "0010";
				WHEN 53 => outBCD <= "0011";
				WHEN 54 => outBCD <= "0100";
				WHEN 55 => outBCD <= "0101";
				WHEN 56 => outBCD <= "0110";
				WHEN 57 => outBCD <= "0111";
				WHEN 58 => outBCD <= "1000";
				WHEN OTHERS => outBCD <= "1001";
			END CASE;
		ELSE
			outBCD_2 <= "0110";
			outBCD <= "0000";
		END IF;
	END PROCESS;
END Behavioral;