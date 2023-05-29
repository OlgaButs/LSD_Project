library IEEE;
use IEEE.std_logic_1164.all;

entity BreadMakerTop_TB is
end BreadMakerTop_TB;

architecture Stimulus of BreadMakerTop_TB is

  -- Signal declarations
  signal s_clk          : std_logic := '0';
  signal s_KEY          : std_logic_vector(3 downto 0) := (others => '0');
  signal s_SW           : std_logic_vector(0 downto 0) := (others => '0');
  signal s_HEX0         : std_logic_vector(6 downto 0);
  signal s_HEX1         : std_logic_vector(6 downto 0);
  signal s_HEX2         : std_logic_vector(6 downto 0);
  signal s_HEX3         : std_logic_vector(6 downto 0);
  signal s_HEX4         : std_logic_vector(6 downto 0);
  signal s_HEX5         : std_logic_vector(6 downto 0);
  signal s_HEX6         : std_logic_vector(6 downto 0);
  signal s_HEX7         : std_logic_vector(6 downto 0);
  signal s_LEDG         : std_logic_vector(2 downto 0);
  signal s_LEDR         : std_logic_vector(0 downto 0);
  signal s_LCD_RS       : std_logic;
  signal s_LCD_EN       : std_logic;
  signal s_LCD_RW       : std_logic;
  signal s_LCD_ON       : std_logic;
  signal s_LCD_BLON     : std_logic;
  signal s_LCD_DATA     : std_logic_vector(7 downto 0);

begin
  -- Instantiate the UUT
  uut: entity work.BreadMakerTop(Shell)
    port map (
      CLOCK_50 => s_clk,
      KEY      => s_KEY,
      SW       => s_SW,
      HEX0     => s_HEX0,
      HEX1     => s_HEX1,
      HEX2     => s_HEX2,
      HEX3     => s_HEX3,
      HEX4     => s_HEX4,
      HEX5     => s_HEX5,
      HEX6     => s_HEX6,
      HEX7     => s_HEX7,
      LEDG     => s_LEDG,
      LEDR     => s_LEDR,
      LCD_RS   => s_LCD_RS,
      LCD_EN   => s_LCD_EN,
      LCD_RW   => s_LCD_RW,
      LCD_ON   => s_LCD_ON,
      LCD_BLON => s_LCD_BLON,
      LCD_DATA => s_LCD_DATA
    );

  -- Clock process
 clk_proc: process
  begin
    s_clk <= '0';
    wait for 10 ns;
    s_clk <= '1';
    wait for 10 ns;
  end process;

  -- Stimulus process
 stim_proc:  process
  begin
	  s_SW <= "0";
    wait for 10 ns;

    s_KEY <= "0001";
    wait for 26000 ms;

    s_SW <= "1";	 
    s_KEY <= "0000";
    wait for 20 ns;

    s_KEY <= "0001";
    wait for 33000 ms;

    s_KEY <= "1000";
    wait for 60 ns;

    s_KEY <= "0001";
    wait for 5000 ms;

    s_KEY <= "0010";
    wait for 60 ns;

    s_SW <= "1";
    s_KEY <= "0100";
    wait for 20 ns;

    s_KEY <= "0001";
    wait for 30000 ms;

    s_KEY <= "0010";
    wait for 20 ns;

    s_KEY <= "0100";
    wait for 20 ns;

  end process;

end Stimulus;
