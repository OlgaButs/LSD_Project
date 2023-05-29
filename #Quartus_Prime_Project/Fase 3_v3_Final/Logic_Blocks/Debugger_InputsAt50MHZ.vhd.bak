library ieee;
use ieee.std_logic_1164.all;


-- Interface:
entity Debugger_InputsAt50MHZ is
port( input  : in  std_logic;
		output : out std_logic);
end Debugger_InputsAt50MHZ;


-- Architecture:
architecture behaviour of Debugger_InputsAt50MHZ is

	signal startStop : std_logic := '0';

begin

	main : process(input)
	begin
	
		if (input = '1') then
			if (startStop = '1') then
				startStop <= '0';
			else
				startStop <= '1';
			end if;
		end if;
	end process;
	
	output <= startStop;
	
end behaviour;