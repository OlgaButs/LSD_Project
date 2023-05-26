library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1 is
  generic (
    N : positive := 4);
  port (sel     : in  std_logic;
    input0  : in  std_logic_vector(N-1 downto 0);
    input1  : in  std_logic_vector(N-1 downto 0);
    muxOut  : out std_logic_vector(N-1 downto 0));
end Mux2_1;

architecture BehavAssign of Mux2_1 is
begin
  muxOut <= input0 when (sel = '0') else input1;
end BehavAssign;