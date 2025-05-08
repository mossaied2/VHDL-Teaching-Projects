LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY and_gate IS 
  PORT (a, b  : in STD_LOGIC;           
        y     : OUT STD_LOGIC);
END  and_gate ;

architecture and_gate_arch of and_gate is 
begin 
      y <= a and b;
end and_gate_arch ;

