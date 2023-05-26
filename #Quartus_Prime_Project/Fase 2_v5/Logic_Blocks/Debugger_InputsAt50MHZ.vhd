LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


-- Interface:
ENTITY Debugger_InputsAt50MHZ IS
	PORT (
		input : IN STD_LOGIC;
		output : OUT STD_LOGIC);
END Debugger_InputsAt50MHZ;


-- Architecture:
ARCHITECTURE behaviour OF Debugger_InputsAt50MHZ IS

	SIGNAL startStop : STD_LOGIC := '0';

BEGIN

	main : PROCESS (input)
	BEGIN

		IF (input = '1') THEN
			IF (startStop = '1') THEN
				startStop <= '0';
				ELSE
				startStop <= '1';
			END IF;
		END IF;
	END PROCESS;

	output <= startStop;

END behaviour;