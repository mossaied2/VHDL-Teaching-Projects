LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nand_gate IS 
  PORT (a, b  : IN STD_LOGIC;
        y     : OUT STD_LOGIC
);
END nand_gate;

architecture behavioral of nand_gate is
begin 

y <= a nand b;
      
end behavioral;    
