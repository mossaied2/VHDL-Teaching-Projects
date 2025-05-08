library ieee;
use ieee.std_logic_1164.all;
package fullAdder_v1_package is 
component fullAdder_v1_structure 
  PORT (x, y, z          : IN  STD_LOGIC;
        c, s             : out  STD_LOGIC);
end component;
end fullAdder_v1_package;

-- vlib digital_components
-- vmap digital_components digital_components
-- vcom -work digital_components fullAdder_v1_package.vhd
