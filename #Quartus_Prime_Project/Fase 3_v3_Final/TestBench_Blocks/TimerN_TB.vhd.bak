library ieee;
use ieee.std_logic_1164.all;

entity TimerN_TB is
end TimerN_TB;

architecture Behavioral of TimerN_TB is

	-- Signals
	signal s_clk, s_reset, s_enable, s_start, s_timerOut : std_logic;
	signal s_cnt : std_logic_vector(7 downto 0);

begin
	-- Instanciação do TimerN
	uut : entity work.TimerN(Behavioral)
		generic map(N => 5)
		port map(clk   => s_clk,
				reset    => s_reset,
				enable   => s_enable,
				start    => s_start,
				timerOut => s_timerOut,
				cnt 		=> s_cnt);
		
	-- Processo de clock
	clock_proc: process
	begin
		s_clk <= '0';
		wait for 10  ns;
		s_clk <= '1';
		wait for 10 ns;
	end process;
	
	-- Processo de estímulo
	stom_proc : process
	begin
		s_reset  <= '1';
		s_enable <= '0';
		s_start  <= '0';
		wait for 124 ns;
		
		s_reset  <= '0';
		s_enable <= '1';
		s_start  <= '0';
		wait for 125 ns;
		
		s_reset  <= '0';
		s_enable <= '1';
		s_start  <= '1';
		wait for 112 ns;
		
		s_reset  <= '0';
		s_enable <= '1';
		s_start  <= '0';
		wait for 100 ns;
		
		s_reset  <= '1';
		s_enable <= '1';
		s_start  <= '0';
		wait for 120 ns;
		
		s_reset  <= '0';
		s_enable <= '1';
		s_start  <= '0';
		wait for 100 ns;
		
		s_reset  <= '0';
		s_enable <= '1';
		s_start  <= '1';
		wait for 10 ns;
	
		s_reset  <= '0';
		s_enable <= '1';
		s_start  <= '0';
		wait for 50 ns;
		
		s_reset  <= '0';
		s_enable <= '1';
		s_start  <= '0';
		wait for 100 ns;
		
	end process;
end Behavioral;
