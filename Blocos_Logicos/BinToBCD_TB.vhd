library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Entidade sem portos
entity BinToBCD_TB is
end BinToBCD_TB;

architecture Stimulus of BinToBCD_TB is

    -- Signal declarations
    signal inBin_tb   : std_logic_vector (7 downto 0);
    signal outBCD_tb  : std_logic_vector (3 downto 0);
    signal outBCD2_tb : std_logic_vector (3 downto 0);

begin
    -- Instanciação da Unit Under Test (UUT)
    UUT: entity work.BinToBCD(Behavioral)
	 port map (inBin   => inBin_tb,
				  outBCD  => outBCD_tb,
				  outBCD2 => outBCD2_tb);

    -- Stimulus process
    stimulus_proc: process
    begin
        -- Test case 1: inBin = "00000000"
        inBin_tb <= "00000000";
        wait for 45 ns;

        -- Test case 2: inBin = "00001010"
        inBin_tb <= "00001010";
        wait for 40 ns;

        -- Test case 3: inBin = "00010110"
        inBin_tb <= "00010110";
        wait for 50 ns;

        -- Test case 4: inBin = "00110000"
        inBin_tb <= "00110000";
        wait for 100 ns;

        -- Test case 5: inBin = "01001100"
        inBin_tb <= "01001100";
        wait for 87 ns;

        -- Test case 6: inBin = "01111001"
        inBin_tb <= "01111001";
        wait for 66 ns;

        -- Test case 7: inBin = "10010011"
        inBin_tb <= "10010011";
        wait for 48 ns;

        -- Test case 8: inBin = "11010101"
        inBin_tb <= "11010101";
        wait for 95 ns;

        -- Test case 9: inBin = "11111111"
        inBin_tb <= "11111111";
        wait for 40 ns;

        -- End simulation
        wait;
    end process;

end Stimulus;
