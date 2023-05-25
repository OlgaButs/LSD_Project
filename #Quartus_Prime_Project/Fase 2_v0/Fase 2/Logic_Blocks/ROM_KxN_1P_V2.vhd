library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- Interface:
entity ROM_KxN_1P_V2 is
	generic( K : integer := 4;
				N : integer := 8);
				
	port( address : in std_logic_vector((K-1) downto 0);
			dataOut : out std_logic_vector((N-1) downto 0));
end ROM_KxN_1P_V2;


-- Arquitetura:
architecture Behaviour of ROM_KxN_1P_V2 is -- NOTA: A parametrização para futuros pães é aqui! (+na FSM)

	constant WORDS : integer := (2**K);
	
	type TMemory is array(0 to (WORDS-1)) of std_logic_vector((N-1) downto 0);
										   --TempoTotal,  Amassar ,  Levedar ,   Cozer
	constant c_memory : TMemory := ("00011000","00001010","00000100","00001010", -- Caseiro
											  "00100001","00001111","00001000","00001010", -- Rústico
											  "00000000","00000000","00000000","00000000", -- Outro 1 (para futuros
											  "00000000","00000000","00000000","00000000");-- Outro 2 tipos de pão)
begin

	dataOut <= c_memory(to_integer(unsigned(address)));
	
end Behaviour;