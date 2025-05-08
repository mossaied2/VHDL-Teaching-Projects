LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY or_gate IS 
  PORT (a, b  : in STD_LOGIC;           
        y     : OUT STD_LOGIC);
END or_gate;

architecture or_gate_behvioral of or_gate is 
begin 
      y <= a or b;
end or_gate_behvioral ;
