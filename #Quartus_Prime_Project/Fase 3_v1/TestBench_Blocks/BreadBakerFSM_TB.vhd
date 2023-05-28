LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY BreadBakerFSM_TB IS
END BreadBakerFSM_TB;

ARCHITECTURE Stimulus OF BreadBakerFSM_TB IS

  -- Signal declarations
  signal s_reset      : std_logic := '0';
  signal s_clk        : std_logic := '0';
  signal s_p1_p2      : std_logic := '0';
  signal s_start_stop : std_logic := '0';
  signal s_timeExtra  : std_logic_vector(7 downto 0) := (others => '0');
  signal s_newTime    : std_logic;
  signal s_timeVal    : std_logic_vector(7 downto 0);
  signal s_stOut      : std_logic_vector(2 downto 0);
  signal s_timeExp    : std_logic := '0';
  signal s_ledRed     : std_logic;
  signal s_newPrg     : std_logic;
  signal s_extra      : std_logic;
  signal s_addr       : std_logic_vector(3 downto 0);
  signal s_DataTime   : std_logic_vector(7 downto 0);
  signal s_d_enable   : std_logic;
  signal s_mensagens  : std_logic;
  signal s_extraSelect: std_logic;
  
  BEGIN
-- Instantiate the UUT
  uut: entity work.BreadBakerFSM(Behavioral)
    port map (reset     => s_reset,
				clk         => s_clk,
				p1_p2       => s_p1_p2,
				start_stop  => s_start_stop,
				timeExtra   => s_timeExtra,
				newTime     => s_newTime,
				timeVal     => s_timeVal,
				stOut       => s_stOut,
				timeExp     => s_timeExp,
				ledRed      => s_ledRed,
				newPrg      => s_newPrg,
				extra       => s_extra,
				addr        => s_addr,
				DataTime    => s_DataTime,
				d_enable    => s_d_enable,
				mensagens   => s_mensagens,
				extraSelect => s_extraSelect);
  
  
  -- Clock process
  clk_proc: process
		  begin
			 s_clk <= '0';
			 wait for 10 ns;
			 s_clk <= '1';
			 wait for 10 ns;
		  end process;

  -- Stimulus process
 stim_proc: process
	  begin
		 s_reset <= '1';
		 wait for 20 ns;
		 s_reset <= '0';
		 s_DataTime <= "00000011";
		 s_p1_p2 <= '1';
		 wait for 40 ns;
		 
		 s_start_stop <= '1';
		 wait for 300 ns;
		 s_timeExp <='1';
		 wait for 20 ns;
		 s_timeExp <='0';
		 s_DataTime <= "00001010";
		 wait for 30 ns;
		 
		 s_start_stop <= '0';
		 wait for 145 ns;
		 
		 s_start_stop <= '1';
		 wait for 167 ns;
		 
		 s_timeExp <= '1';
		 wait for 20 ns;
		 
		 s_timeExp <= '0';
		 s_timeExtra <= "00001010";
		 wait for 30 ns;
		 
		 s_reset <= '1';
		 wait for 20 ns;
		 
		 s_p1_p2 <= '0'; 
		 wait for 100 ns;
		 
		 s_timeExp <= '1';
		 wait for 50 ns;
		 
		 s_DataTime <= "00001010";
		 s_timeExp <= '0';
		 wait for 90 ns;
		 
		 s_timeExp  <= '1';
		 s_DataTime <= "00001101";
		 s_timeExtra<= "00000111";
		 wait for 100 ns;
		 
		 s_timeExp <= '0';
		 s_start_stop <= '0';
		 wait for 125 ns;
		 
		 s_p1_p2 <= '1'; 
		 wait for 40 ns;
		
		 s_start_stop <= '1';
		 wait for 100 ns;
		 
		 s_timeExtra <= "11111111";
		 
		 s_timeExp <= '1';
		 wait for 10 ns;
		 
		 s_timeExp <= '0';
		 s_p1_p2 <= '1';
		 wait for 10 ns;
		
		 s_start_stop <= '1';
		wait for 100 ns;
		
		s_start_stop <= '0';
		wait for 10 ns;
	
		s_timeExtra <= "00000001"; 
		wait for 130 ns; 
	-- End simulation
  end process;

END Stimulus;
