library ieee;
USE ieee.std_logic_1164.all;

library digital_components; 
use digital_components.mux4to1_package.all;

entity muxFunction_1_3_4_11_12_13_14_15 is 
port (A, B, C, D : in std_logic;
      F       : out std_logic);
end muxFunction_1_3_4_11_12_13_14_15;

architecture structural of muxFunction_1_3_4_11_12_13_14_15 is
signal CD, CnorD : std_logic; 
signal S : std_logic_vector (1 downto 0); 
signal I : std_logic_vector (3 downto 0);
begin 

CD <= C and D;

CnorD <= C nor D;

I <= '1' & CD & CnorD & D ;

S <= A & B;

mux4to1_module : mux4to1 port map (I, S, F);
 
end structural;
