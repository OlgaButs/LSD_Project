library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity PulseGenN is
	generic(N : positive := 4)
	port (clkIn	:	in std_logic;
			reset :  in std_logic;
			pulse : out std_logic);
end PulseGenN;

architecture Behavioral of PulseGenN is
	signal s_counter	:	natural;
begin
	process(clkIn)
	begin
		if(rising_edge(clkIn)) then
			if(reset = '1') then
				pulse <= '0';
				s_counter <= 0;
			elsif(s_counter = N-1) then
 				pulse <= '1';                  
				s_counter<= 0;
			else
				s_counter <= s_counter+1;
				pulse <='0';
			end if;
			end if;
		end process;
end Behavioral;