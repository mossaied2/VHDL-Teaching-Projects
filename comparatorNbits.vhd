LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all ; -- this library is used so that std_logic_vector can be used as unsigned binary numbers with VHDL relational operators

ENTITY comparatorNbits IS 
  PORT (A, B               : IN STD_LOGIC_vector(3 downto 0);
        AeqB, AltB, AgtB   : OUT STD_LOGIC);
END comparatorNbits;

architecture behavior of comparatorNbits is 

begin 
 
  AltB <= '1' when A < B else '0';
  AgtB <= '1' when A > B else '0';
  AeqB <= '1' when A = B else '0';

end behavior; 
