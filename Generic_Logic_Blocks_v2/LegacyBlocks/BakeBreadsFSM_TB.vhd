library IEEE;
use IEEE.std_logic_1164.all;

entity BakeBreadsFSM_TB is
end BakeBreadsFSM_TB;

architecture TB of BakeBreadsFSM_TB is

  -- Signal declarations
  signal s_reset      : std_logic := '0';
  signal s_clk        : std_logic := '0';
  signal s_p1_p2      : std_logic_vector := "00";
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
  signal s_mensagens  : std_logic_vector(2 downto 0);

begin
  -- Instantiate the UUT
  uut: entity work.BakeBreadsFSM(Behavioral)
    port map (
      reset      => s_reset,
      clk        => s_clk,
      p1_p2      => s_p1_p2,
      start_stop => s_start_stop,
      timeExtra  => s_timeExtra,
      newTime    => s_newTime,
      timeVal    => s_timeVal,
      stOut      => s_stOut,
      timeExp    => s_timeExp,
      ledRed     => s_ledRed,
      newPrg     => s_newPrg,
      extra      => s_extra,
      addr       => s_addr,
      DataTime   => s_DataTime,
      d_enable   => s_d_enable,
      mensagens  => s_mensagens
    );

  -- Clock process
  process
  begin
    s_clk <= '0';
    wait for 10 ns;
    s_clk <= '1';
    wait for 10 ns;
  end process;

  -- Stimulus process
  process
  begin
    s_reset <= '1';
    wait for 10 ns;
    s_reset <= '0';
    s_DataTime <= "111111111";
    s_p1_p2 <= "01"; -- Example value for p1_p2
    s_start_stop <= '1'; -- Example value for start_stop
    wait for 20 ns;
    s_start_stop <= '0';
    wait for 10 ns;
    s_timeExp <= '1'; -- Example value for timeExp
    wait for 10 ns;
    s_timeExtra <= "00001010"; -- Example value for timeExtra
    wait for 30 ns;
    s_p1_p2 <= "10"; -- Example value for p1_p2
    s_start_stop <= '1';
    wait for 100 ns;
    s_start_stop <= '0'; 
    wait for 50 ns;
	 s_start_stop <= '1';
    wait for 900 ns;
	 
	 
    -- End simulation
    wait;
  end process;

end TB;
