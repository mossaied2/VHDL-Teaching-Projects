LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY halfAdder IS 
  PORT (x, y          : IN  STD_LOGIC;
        c, s          : out STD_LOGIC);
END halfAdder;

architecture behavior of halfAdder is 
begin 
s <= x xor y;
c <= x and y;
end behavior; 


