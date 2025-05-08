library ieee;
USE ieee.std_logic_1164.all;

library digital_components; 
use digital_components.mux2to1_package.all;

entity muxFunction1267_v2 is 
port (x, y, z : in std_logic;
      F       : out std_logic);
end muxFunction1267_v2;

architecture structural of muxFunction1267_v2 is
signal I0, I1 : std_logic; 
begin 

I0 <= y xor z;
I1 <= y;

mux2to1_module : mux2to1 port map (I0, I1, x, '0', F);
 
end structural;
