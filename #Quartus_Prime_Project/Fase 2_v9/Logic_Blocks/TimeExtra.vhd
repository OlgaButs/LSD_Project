LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


-- Interface:
ENTITY TimeExtra IS
	PORT (
		clk : IN STD_LOGIC;
		cnt : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		data : IN STD_LOGIC;
		enable : IN STD_LOGIC;
		resetglb : IN STD_LOGIC;
		reset : IN STD_LOGIC);
END TimeExtra;


-- Architecture:
ARCHITECTURE Structural OF TimeExtra IS
	SIGNAL s_count : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL s_reset, S_LD : STD_LOGIC;
BEGIN

	s_reset <= resetglb OR (reset AND NOT enable);
	Counter : ENTITY work.Counter(Behavioral)
		PORT MAP(
			clk => clk,
			button => data,
			reset => s_reset,
			enable => enable,
			load => S_LD,
			dataIn => "00000000",
			count => s_count);

	S_LD <= '1' WHEN (s_count(1) = '1' AND s_count(2) = '1') ELSE
	'0';
	cnt <= s_count;
END Structural;