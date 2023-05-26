library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FlipFlopD is
	port(	clk	 :	in	std_logic;
			reset  : in std_logic;
			enable :	in std_logic;
			dataIn :	in std_logic;
			dataOut:	out std_logic);
end FlipFlopD;

architecture Behavioral of FlipFlopD is
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(reset='1') then
				dataOut <= '0';
			elsif (enable='1') then
				dataOut <= dataIn;
			end if;
		end if;
	end process;
end Behavioral;