LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY comparator1bits IS 
  PORT (A, B               : IN STD_LOGIC;
        AeqB, AltB, AgtB   : OUT STD_LOGIC);
END comparator1bits;

architecture behavior of comparator1bits is 

begin 

  AeqB <= A xnor B;
  AltB <= not A and B ;
  AgtB <= A and not B ;
	
end behavior; 
