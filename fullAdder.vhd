LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fullAdder IS 
  PORT (x, y, ci          : IN  STD_LOGIC;
        co, s             : out  STD_LOGIC);
END fullAdder;

architecture behavior of fullAdder is 
begin 
co <= (x and y) or (x and ci) or (y and ci);
s <= x xor y xor ci;
end behavior; 