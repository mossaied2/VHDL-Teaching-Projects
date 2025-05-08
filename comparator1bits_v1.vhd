LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY comparator1bits_v1 IS 
  PORT (A, B       : IN STD_LOGIC;
        C          : OUT STD_LOGIC_VECTOR(1 downto 0));
END comparator1bits_v1;

architecture behavior of comparator1bits_v1 is 

begin 

  C(0) <= not A and B;
  C(1) <= not B and A;
	
end behavior; 
