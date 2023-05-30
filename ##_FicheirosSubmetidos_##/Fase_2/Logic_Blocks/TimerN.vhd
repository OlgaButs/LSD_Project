LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;


-- Interface:
ENTITY TimerN IS
	GENERIC
		(N : POSITIVE := 30);
	PORT
	(
		clk : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		enable : IN STD_LOGIC;
		start : IN STD_LOGIC;
		timerOut : OUT STD_LOGIC;
		cnt : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END TimerN;


-- Architecture:
ARCHITECTURE Behavioral OF TimerN IS
	SIGNAL s_result : STD_LOGIC;
	SIGNAL s_count : INTEGER := 0;
BEGIN
	ASSERT(N >= 2);

	PROCESS (clk)
	BEGIN
		IF (rising_edge(clk)) THEN
			IF (reset = '1') THEN
				s_result <= '0';
				s_count <= N;
			ELSIF (enable = '1') THEN
				IF (s_count = 0) THEN
					IF (start = '1') THEN
						s_count <= N - 1;
					END IF;
					s_result <= '0';
				ELSE
					IF (s_count = 1) THEN
						s_result <= '1';
						s_count <= 0;
					ELSE
						s_result <= '0';
						s_count <= s_count - 1;
					END IF;
				END IF;
			END IF;
		END IF;
	END PROCESS;

	timerOut <= s_result;
	cnt <= STD_LOGIC_VECTOR(to_unsigned(s_count, 8));
END Behavioral;