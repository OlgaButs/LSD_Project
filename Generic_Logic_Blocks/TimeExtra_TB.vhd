library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TimeExtra_TB is
end TimeExtra_TB;

architecture Stimulus of TimeExtra_TB is
    -- Component signals
    signal s_clk, s_data, s_enable, s_resetglb, s_reset : std_logic;
    signal s_cnt : std_logic_vector(3 downto 0);
    
begin

    uut : entity work.TimeExtra(Structural)
        port map(
            clk => s_clk,
            cnt => s_cnt,
            data => s_data,
            enable => s_enable,
            resetglb => s_resetglb,
            reset => s_reset
        );

    -- Clock generation process
    clock_proc : process
    begin
            s_clk <= '0';
            wait for 100 ns;
            s_clk <= '1';
            wait for 100 ns;
    end process;

    -- Stimulus process
    stim_proc : process
    begin
        -- Initialize inputs
        s_enable <= '0';
        s_data <= '0';
        s_resetglb <= '0';
        s_reset <= '0';
		  wait for 825 ns;

        -- Apply stimulus
        s_enable <= '1';
        s_data <= '1';  
        wait for 645 ns; 
        
        s_enable <= '0';
        wait for 825 ns;  
        
        s_enable <= '1';
        s_data <= '0';  
        wait for 645 ns;  
        
        s_resetglb <= '1';
        wait for 825 ns;  
        
        s_resetglb <= '0';
        s_reset <= '1';
        wait for 645 ns; 
        
        s_reset <= '0';
        s_enable <= '1';
        wait for 825 ns; 
    end process;

end Stimulus;
