library ieee;
use ieee.std_logic_1164.all;
package CarryLookahead_package is 
component CarryLookahead 
  PORT (p, g            : in  STD_LOGIC_vector(3 downto 0);
        c1, c2, c3, c4  : out std_logic);
end component;
end CarryLookahead_package;

-- vcom -work digital_components CarryLookahead_package.vhd