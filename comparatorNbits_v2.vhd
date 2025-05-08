LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all ; -- this library is used so that A and B are defined as unsigned numbers

ENTITY comparatorNbits_v2 IS 
  PORT (A, B               : IN signed(3 downto 0);
        AeqB, AltB, AgtB   : OUT STD_LOGIC);
END comparatorNbits_v2;

architecture behavior of comparatorNbits_v2 is 

begin 
  AeqB <= '1' when A = B else '0';
  AltB <= '1' when A < B else '0';
  AgtB <= '1' when A > B else '0';
end behavior; 
