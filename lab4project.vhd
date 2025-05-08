LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
use digital_components.and_gate_package.all; 
use digital_components.or_gate_package.all; 

ENTITY lab3project IS 
  PORT (a, b, c, d, e, f  : IN STD_LOGIC;
        y     : OUT STD_LOGIC
);
END lab3project;

architecture structural of lab3project is
signal n, m, k, l : STD_LOGIC;
begin 

instant_and_gate1 : and_gate port map (a, b, n);
instant_or_gate1 : or_gate port map (c, d, m);
instant_and_gate2 : and_gate port map (e, f, k);

instant_or_gate2 : or_gate port map (n, m, l);

instant_or_gate3 : or_gate port map (l, k, y);
      
end structural; 
