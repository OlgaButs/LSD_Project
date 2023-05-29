LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ControlSystemUnit_TB IS
END ControlSystemUnit_TB;

ARCHITECTURE Stimulus OF ControlSystemUnit_TB IS

    -- Signals for capturing the intputs
    SIGNAL s_reset : STD_LOGIC;
    SIGNAL s_clock : STD_LOGIC;
    SIGNAL s_start : STD_LOGIC;
    SIGNAL s_freezeEnd : STD_LOGIC;
    SIGNAL s_extraEn : STD_LOGIC;
    SIGNAL s_newPrg : STD_LOGIC;
    SIGNAL s_freeze : STD_LOGIC;

    -- Signals for capturing the outputs
    SIGNAL s_en_1 : STD_LOGIC;
    SIGNAL s_en_2 : STD_LOGIC;
    SIGNAL s_en_3 : STD_LOGIC;
    SIGNAL s_start_stop : STD_LOGIC;
    SIGNAL s_freezeStart : STD_LOGIC;
    SIGNAL s_rstGlobal : STD_LOGIC;

BEGIN

    -- Instantiate the unit under test (UUT)
    uut: entity work.ControlSystemUnit_v2(BEHAVIOR) 
	 PORT MAP (reset => s_reset,
				  clock => s_clock,
				  start => s_start,
				  freezeEnd => s_freezeEnd,
				  extraEn => s_extraEn,
				  newPrg => s_newPrg,
				  freeze => s_freeze,
				  en_1 => s_en_1,
				  en_2 => s_en_2,
				  en_3 => s_en_3,
				  start_stop => s_start_stop,
				  freezeStart => s_freezeStart,
				  rstGlobal => s_rstGlobal);

    -- Clock generation process
   clock_proc: process
    begin
        s_clock <= '0';
        wait for 10 ns;
        s_clock <= '1';
        wait for 10 ns;
    end process;

    -- Stimulus process
   stim_proc: process
    begin
        -- Initialize inputs
        s_reset <= '1';
        s_start <= '0';
        s_freezeEnd <= '0';
        s_extraEn <= '0';
        s_newPrg <= '0';
        s_freeze <= '0';
        wait for 200 ns;
		  
        s_reset <= '0';
		  wait for 468 ns;
		  
        -- Test scenario 1
        s_start <= '1';
        wait for 400 ns;
        s_start <= '0';
		  wait for 400 ns;

        -- Test scenario 2
        s_freezeEnd <= '1';
        wait for 425 ns;
        s_freezeEnd <= '0';
		  wait for 425 ns;

        -- Test scenario 3
        s_extraEn <= '1';
        wait for 460 ns;
        s_extraEn <= '0';
		  wait for 460 ns;

        -- Test scenario 4
        s_newPrg <= '1';
        wait for 470 ns;
        s_newPrg <= '0';
		  wait for 470 ns;

        -- Test scenario 5
        s_freeze <= '1';
        wait for 780 ns;
        s_freeze <= '0';
		  wait for 875 ns;

    end process;

END Stimulus;
