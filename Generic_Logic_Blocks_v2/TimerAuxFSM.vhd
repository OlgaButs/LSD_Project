library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerAuxFSM is
    generic (N : positive := 8);
    port (
        clk    : in  std_logic;
        count  : out std_logic_vector(N-1 downto 0);
        dataIn : in  std_logic_vector(N-1 downto 0);
        enable : in  std_logic;
        load   : in std_logic;
        timeExp: out std_logic;
        reset  : in std_logic
    );
end TimerAuxFSM;

architecture Behavioral of TimerAuxFSM is
    signal s_count   : unsigned(N-1 downto 0);
    signal s_cntZero : std_logic;
    signal s_enable  : std_logic;
begin
    s_enable <= enable;

    process(clk)
    begin
        if (rising_edge(clk)) then
            if (reset = '1') then
                s_count <= (others => '0');
                s_cntZero <= '0';
            elsif (load = '1') then
                s_count <= unsigned(dataIn);
                s_cntZero <= '0';
            elsif (s_enable = '1') then
                if (s_count = "00000000") then
                    s_cntZero <= '1';
                else
                    s_count <= s_count - 1;
                    s_cntZero <= '0';
                end if;
            end if;
        end if;
    end process;
    timeExp <= s_cntZero;
    count <= std_logic_vector(s_count);
end Behavioral;