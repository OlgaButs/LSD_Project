library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder is
	port(	binInput	:	in std_logic_vector(3 downto 0);
			decOut_n	:	out std_logic_vector(6 downto 0);
			enable   :  in std_logic);
		

end Bin7SegDecoder;

architecture Behavioral of Bin7SegDecoder is

begin
			
			decOut_n <= "1111111" when enable = '0' else    
							"1111001" when binInput = "0001" else -- 1
							"0100100" when binInput = "0010" else -- 2
							"0110000" when binInput = "0011" else -- 3
							"0011001" when binInput = "0100" else -- 4
							"0010010" when binInput = "0101" else -- 5/S
							"0000010" when binInput = "0110" else -- 6
							"1111000" when binInput = "0111" else -- 7
							"0000000" when binInput = "1000" else -- 8
							"0010000" when binInput = "1001" else -- 9
							"1111111" when binInput = "1010" else -- 
							"0000111" when binInput = "1011" else -- t
							"0100011" when binInput = "1100" else -- o
							"0001100" when binInput = "1101" else -- P
							"0101011" when binInput = "1110" else -- n
							"0111111" when binInput = "1111" else -- -
							"1000000"; -- 0/O
		
end Behavioral;