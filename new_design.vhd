LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
use digital_components.and_gate_package.all; 

ENTITY new_design IS 
  PORT (a, b, c, d  : IN STD_LOGIC;
        y     : OUT STD_LOGIC
);
END new_design;

architecture structural of new_design is
signal n, m : STD_LOGIC;
begin 

instant_and_gate1 : and_gate port map (a, b, n);
instant_and_gate2 : and_gate port map (c, d, m);
instant_and_gate3 : and_gate port map (n, m, y);
      
end structural;    
