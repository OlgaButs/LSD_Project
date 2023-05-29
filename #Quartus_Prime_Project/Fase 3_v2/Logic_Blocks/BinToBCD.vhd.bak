library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity BinToBCD is
    port (
        inBin   : in std_logic_vector (7 downto 0);
        outBCD  : out std_logic_vector (3 downto 0);
        outBCD2 : out std_logic_vector (3 downto 0)
    );
end BinToBCD;

architecture Behavioral of BinToBCD is
    signal n : integer;
begin
    n <= to_integer(unsigned(inBin));
    process(inBin,n)
    begin
        if n < 10 then
            outBCD <= inBin(3 downto 0);
            outBCD2 <= "0000";
        elsif n < 20 then
            outBCD2 <= "0001";
            case n is
                when 10 => outBCD <= "0000";
                when 11 => outBCD <= "0001";
                when 12 => outBCD <= "0010";
                when 13 => outBCD <= "0011";
                when 14 => outBCD <= "0100";
                when 15 => outBCD <= "0101";
                when 16 => outBCD <= "0110";
                when 17 => outBCD <= "0111";
                when 18 => outBCD <= "1000";
					 when others => outBCD <= "1001";
            end case;
        elsif n < 30 then
            outBCD2 <= "0010";
            case n is
                when 20 => outBCD <= "0000";
                when 21 => outBCD <= "0001";
                when 22 => outBCD <= "0010";
                when 23 => outBCD <= "0011";
                when 24 => outBCD <= "0100";
                when 25 => outBCD <= "0101";
                when 26 => outBCD <= "0110";
                when 27 => outBCD <= "0111";
                when 28 => outBCD <= "1000";
                when others => outBCD <= "1001";
            end case;
        elsif n < 40 then
            outBCD2 <= "0011";
            case n is
                when 30 => outBCD <= "0000";
                when 31 => outBCD <= "0001";
                when 32 => outBCD <= "0010";
                when 33 => outBCD <= "0011";
                when 34 => outBCD <= "0100";
                when 35 => outBCD <= "0101";
                when 36 => outBCD <= "0110";
                when 37 => outBCD <= "0111";
                when 38 => outBCD <= "1000";
                when others => outBCD <= "1001";
            end case;
			elsif n < 50 then
					outBCD2 <= "0100";
            case n is
                when 40 => outBCD <= "0000";
                when 41 => outBCD <= "0001";
                when 42 => outBCD <= "0010";
                when 43 => outBCD <= "0011";
                when 44 => outBCD <= "0100";
					 when 45 => outBCD <= "0101";
					 when 46 => outBCD <= "0110";
                when 47 => outBCD <= "0111";
                when 48 => outBCD <= "1000";
					 when others => outBCD <= "1001";
					 end case;
			elsif n < 60 then
					outBCD2 <= "0101";
            case n is
                when 50 => outBCD <= "0000";
                when 51 => outBCD <= "0001";
                when 52 => outBCD <= "0010";
                when 53 => outBCD <= "0011";
                when 54 => outBCD <= "0100";
					 when 55 => outBCD <= "0101";
					 when 56 => outBCD <= "0110";
                when 57 => outBCD <= "0111";
                when 58 => outBCD <= "1000";
                when others => outBCD <= "1001";
					 end case;
			else
					outBCD2 <= "0110";
					outBCD <= "0000";
        end if;
    end process;
end Behavioral;
