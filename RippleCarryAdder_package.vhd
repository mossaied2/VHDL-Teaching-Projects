library ieee;
use ieee.std_logic_1164.all;
package RippleCarryAdder_package is 
component RippleCarryAdder 
  PORT (A, B          : IN  STD_LOGIC_vector(3 downto 0);
        s             : out std_logic_vector(3 downto 0);
        c             : out STD_LOGIC);
end component;
end RippleCarryAdder_package;
