library ieee;
USE ieee.std_logic_1164.all;

library digital_components; 
use digital_components.mux4to1_package.all;

entity muxFunction1267 is 
port (x, y, z : in std_logic;
      F       : out std_logic);
end muxFunction1267;

architecture structural of muxFunction1267 is
signal notZ : std_logic; 
signal S : std_logic_vector (1 downto 0); 
signal I : std_logic_vector (3 downto 0);
begin 

notZ <= not z;
S <= x & y;
I <= z & notZ & '0' & '1';
mux4to1_module : mux4to1 port map (I, S, F);
 
end structural;
