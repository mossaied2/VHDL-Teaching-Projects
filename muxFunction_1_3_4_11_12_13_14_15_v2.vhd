library ieee;
USE ieee.std_logic_1164.all;

library digital_components; 
use digital_components.mux8to1_package.all;

entity muxFunction_1_3_4_11_12_13_14_15_v2 is 
port (A, B, C, D : in std_logic;
      F       : out std_logic);
end muxFunction_1_3_4_11_12_13_14_15_v2;

architecture structural of muxFunction_1_3_4_11_12_13_14_15_v2 is
signal I : std_logic_vector (7 downto 0); 
signal S : std_logic_vector (2 downto 0); 
begin 

I(0) <= D;
I(1) <= D;
I(2) <= not D;
I(3) <= '0';
I(4) <= '0';
I(5) <= D;
I(6) <= '1';
I(7) <= '1';

S <= A & B & C;

mux8to1_module : mux8to1 port map (I, S, F);
 
end structural;
