library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Counter4 is 
    port (
        clk    : in std_logic;
        count  : out std_logic_vector(3 downto 0);
        dataIn : in std_logic_vector(3 downto 0);
        enable : in std_logic;
        button : in std_logic;
        load   : in std_logic;
        reset  : in std_logic
    ); 
end Counter4;

architecture Behavioral of Counter4 is 
    signal s_count : unsigned(3 downto 0); 
begin 
    process(clk) 
    begin 
        if (rising_edge(clk)) then  
            if (reset = '1') then
                s_count <= (others => '0');
            elsif (enable = '1') then
                if (load = '1') then
                    s_count <= unsigned(dataIn);
                elsif (button = '1') then
                    s_count <= s_count + 1;
                end if;
            end if;
        end if;		  
    end process; 

    count <= std_logic_vector(s_count); 
end Behavioral;
