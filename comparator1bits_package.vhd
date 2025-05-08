library ieee;
use ieee.std_logic_1164.all;
package comparator1bits_package is 
component comparator1bits 
  PORT (A, B               : IN STD_LOGIC;
        AeqB, AltB, AgtB   : OUT STD_LOGIC);
end component;
end comparator1bits_package;
