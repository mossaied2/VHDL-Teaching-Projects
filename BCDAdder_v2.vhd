LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
use digital_components.RippleCarryAdder_package.all; 

ENTITY BCDAdder_v2 IS 
  PORT (x,y  : IN STD_LOGIC_vector(3 downto 0);
        s    : out STD_LOGIC_vector(3 downto 0);
        c    : OUT STD_LOGIC);
END BCDAdder_v2;

architecture structure of BCDAdder_v2 is 
signal x2, y2 : STD_LOGIC_vector (3 downto 0);
signal k, c_in, c2 : std_logic;
begin 

  Adder1 : RippleCarryAdder port map (x, y, x2, k);
  
  c_in <= k or (x2(3) and x2(2)) or (x2(3) and x2(1));

  y2(0)<='0';
  y2(1)<=c_in;
  y2(2)<=c_in;
  y2(3)<='0';

  Adder2 : RippleCarryAdder port map (x2, y2, s, c2);

  c <= c_in;

end structure;
