library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerAuxFSM_TB is
end TimerAuxFSM_TB;

architecture Stimulus of TimerAuxFSM_TB is
    -- Signals
    signal s_clk, s_enable, s_load, s_timeExp, s_reset : std_logic;
    signal s_count, s_dataIn  : std_logic_vector(7 downto 0);
	 
begin 
	
	uut : entity work.TimerAuxFSM(Behavioral)
	  generic map (N => 8)
	  port map (clk    => s_clk,
					count  => s_count,
					dataIn => s_dataIn,
					enable => s_enable,
					load   => s_load,
					timeExp=> s_timeExp,
					reset  => s_reset);


	-- Clock process
	clock_proc: process
	begin
		s_clk <= '0';
		wait for 10 ns;
		s_clk <= '1';
		wait for 10 ns;
	end process;

	-- Stimulus process
	stimulus_proc: process
	begin
		-- Test case 1: Count down from 8 with enable active
		s_dataIn <= "10000000";
		s_enable <= '1';
		s_load <= '1';
		wait for 20 ns;
		s_load <= '0';
		wait for 100 ns;

		-- Test case 2: Count down from 6 with enable inactive
		s_dataIn <= "00000110";
		s_enable <= '0';
		s_load <= '1';
		wait for 20 ns;
		s_load <= '0';
		wait for 100 ns;

		-- Test case 3: Reset and count down from 10
		s_reset <= '1';
		wait for 20 ns;
		s_reset <= '0';
		wait for 100 ns;

		-- Test case 4: Load new value and count down from 14
		s_dataIn <= "00001110";
		s_enable <= '1';
		s_load <= '1';
		wait for 20 ns;
		s_load <= '0';
		wait for 100 ns;

		-- Test case 5: Count down to zero and check timeExp signal
		s_enable <= '1';
		s_load <= '0';
		wait for 60 ns;

		-- End simulation
		wait;
	end process;

end Stimulus;
