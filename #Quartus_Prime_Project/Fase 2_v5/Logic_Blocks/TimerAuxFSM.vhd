LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


-- Interface:
ENTITY TimerAuxFSM IS
	GENERIC (N : POSITIVE := 8);
	PORT (
		clk : IN STD_LOGIC;
		count : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
		dataIn : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
		enable : IN STD_LOGIC;
		load : IN STD_LOGIC;
		timeExp : OUT STD_LOGIC;
		reset : IN STD_LOGIC
	);
END TimerAuxFSM;


-- Architecture:
ARCHITECTURE Behavioral OF TimerAuxFSM IS

	SIGNAL s_count : unsigned(N - 1 DOWNTO 0);
	SIGNAL s_cntZero : STD_LOGIC;
	SIGNAL s_enable : STD_LOGIC;
	
BEGIN
	PROCESS (clk)
	BEGIN
		IF (rising_edge(clk)) THEN
			IF (reset = '1') THEN
				s_count <= (OTHERS => '0');
				s_cntZero <= '0';
				ELSIF (load = '1') THEN
				s_count <= unsigned(dataIn);
				s_cntZero <= '0';
				ELSIF (s_enable = '1') THEN
				IF (s_count = "00000000") THEN
					s_cntZero <= '1';
					ELSE
					s_count <= s_count - 1;
					s_cntZero <= '0';
				END IF;
			END IF;
		END IF;
	END PROCESS;
	s_enable <= enable;
	timeExp <= s_cntZero;
	count <= STD_LOGIC_VECTOR(s_count);
	
END Behavioral;