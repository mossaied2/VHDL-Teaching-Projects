LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
use digital_components.and_gate_package.all; 

ENTITY nand_gate_structural IS 
  PORT (a, b  : IN STD_LOGIC;
        y     : OUT STD_LOGIC
);
END nand_gate_structural;

architecture structural of nand_gate_structural is
signal y1 : STD_LOGIC;
begin 

instant_and_gate1 : and_gate port map (a, b, y1);
y <= not y1;
      
end structural;  
