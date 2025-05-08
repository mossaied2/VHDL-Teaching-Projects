LIBRARY ieee;
USE ieee.std_logic_1164.all;
library digital_components;
use digital_components.halfAdder_package.all;

ENTITY mutliplier_2bits_v2 IS 
  PORT (A, B : IN STD_LOGIC_vector(1 downto 0);
        P    : out STD_LOGIC_vector(3 downto 0));
END mutliplier_2bits_v2;

architecture behavioral of mutliplier_2bits_v2 is 
signal AB : STD_LOGIC_vector (3 downto 0); 
signal c1 : STD_LOGIC;
begin 

--------------------------------------------------------------------------             
--         0      1         2       3                
-- AB = [ A0B0   A0B1      A1B0    A1B1 ]
G1: for i in 0 to 1 generate                      
        G2 : for j in 0 to 1 generate 
             AB(i*2+j) <= A(i) and B(j);          
        end generate;
end generate; 
--------------------------------------------------------------------------
P(0) <= AB(0);
--------------------------------------------------------------------------
halfAdder1  : halfAdder port map (AB(1),  AB(2),  c1,   P(1));
--------------------------------------------------------------------------
halfAdder2  : halfAdder port map (c1,     AB(3), P(3),  P(2));
--------------------------------------------------------------------------
end behavioral;
