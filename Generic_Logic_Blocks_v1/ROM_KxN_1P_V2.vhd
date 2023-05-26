library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- Interface:
entity ROM_KxN_1P_V2 is
	generic( K : integer := 1;
				N : integer := 16);
				
	port( address : in std_logic_vector((K-1) downto 0);
			dataOut : out std_logic_vector((N-1) downto 0));
end ROM_KxN_1P_V2;


-- Arquitetura:
architecture Behaviour of ROM_KxN_1P_V2 is

	constant WORDS : integer := (2**K);
	
	type TMemory is array(0 to (WORDS-1)) of std_logic_vector((N-1) downto 0);

	constant c_memory : TMemory := ("0101101111001101", -- STOP
											  "1010101011001110");-- --ON
begin

	dataOut <= c_memory(to_integer(unsigned(address)));
	
end Behaviour;