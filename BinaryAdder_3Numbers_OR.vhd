LIBRARY ieee;
USE ieee.std_logic_1164.all;
library digital_components;
use digital_components.BinaryAdder_4bits_package.all;

ENTITY BinaryAdder_3Numbers_OR IS 
  PORT (A, B, C          : IN  STD_LOGIC_vector(3 downto 0);
        Sum             : out std_logic_vector(3 downto 0);
        Carry             : out STD_LOGIC);
END BinaryAdder_3Numbers_OR;

architecture structural of BinaryAdder_3Numbers_OR is
signal C1,C2 : std_logic; 
signal S1 : std_logic_vector(3 downto 0); 
begin 

BinaryAdder1  : BinaryAdder_4bits port map (A,  B,  '0', S1, C1);
BinaryAdder2  : BinaryAdder_4bits port map (S1,  C,  '0', Sum, C2);
  
Carry <= C1 OR C2;

end structural;
