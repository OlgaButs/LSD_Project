library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all; 
entity TimeExtra is 
 port(clk     :   in std_logic;
		 cnt    :   out std_logic_vector(3 downto 0);
		 data   :   in std_logic;
		 enable :   in std_logic;
		resetglb:  in std_logic;
		 reset  :   in std_logic); 
end TimeExtra;

 
architecture Structural of TimeExtra is 
 signal s_count : std_logic_vector(3 downto 0);
 signal s_reset, S_LD  : std_logic;
begin  

 s_reset <= resetglb or (reset and not enable);
 Counter: entity work.Counter4(Behavioral)
			port map(clk => clk,
						button => data, 
						reset => s_reset,
						enable => enable, 
						load => S_LD,
						dataIn => "0000",
						count => s_count);
						
 S_LD <= '1' when (s_count(2) ='1' and s_count(0)='1') else '0';
 cnt <= s_count; 
end Structural;
