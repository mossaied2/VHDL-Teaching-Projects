LIBRARY ieee;
USE ieee.std_logic_1164.all;
library digital_components;
use digital_components.halfAdder_package.all;

ENTITY fullAdder_v2_structure IS 
  PORT (x, y, ci          : IN  STD_LOGIC;
        c, s             : out  STD_LOGIC);
END fullAdder_v2_structure;

architecture behavior of fullAdder_v2_structure is
signal s1, c1, c2, c3 : std_logic; 
begin 
halfAdder1  : halfAdder port map (x,  y,  c1, s1);
halfAdder2  : halfAdder port map (s1, ci, c2, s);
halfAdder3  : halfAdder port map (c2, c1, c3, c);
end behavior;
