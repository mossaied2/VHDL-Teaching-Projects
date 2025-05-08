LIBRARY ieee;
USE ieee.std_logic_1164.all;
library digital_components;
use digital_components.BinaryAdder_4bits_package.all;
use digital_components.halfAdder_package.all;

ENTITY BinaryAdder_3Numbers_HA IS 
  PORT (A, B, C          : IN  STD_LOGIC_vector(3 downto 0);
        Sum              : out std_logic_vector(5 downto 0));
END BinaryAdder_3Numbers_HA;

architecture structural of BinaryAdder_3Numbers_HA is
signal C1,C2 : std_logic; 
signal S1 : std_logic_vector(3 downto 0); 
begin 

BinaryAdder1  : BinaryAdder_4bits port map (A,  B,  '0', S1, C1);
BinaryAdder2  : BinaryAdder_4bits port map (S1,  C,  '0', Sum(3 downto 0), C2);
  
halfAdder1  : halfAdder port map (C1, C2, Sum(5), Sum(4));

end structural;
