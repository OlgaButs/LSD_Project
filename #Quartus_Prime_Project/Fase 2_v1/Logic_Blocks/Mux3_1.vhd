library IEEE;
use IEEE.STD_LOGIC_1164.all;



entity Mux3_1 is
    port (
        dataIn1    : in std_logic_vector(3 downto 0);
        dataIn2    : in std_logic_vector(3 downto 0);
        dataIn3    : in std_logic_vector(3 downto 0);
        S          : in std_logic_vector(1 downto 0);
        dataOut    : out std_logic_vector(3 downto 0)
    );
end Mux3_1;

architecture Behavioral of Mux3_1 is
begin
    process(S, dataIn1, dataIn2, dataIn3)
    begin
        case S is
            when "01" =>
                dataOut <= dataIn1;
            when "10" =>
                dataOut <= dataIn2;
            when others =>
                dataOut <= dataIn3;
        end case;
      end process;

end Behavioral;
