library ieee;
use ieee.std_logic_1164.all;
package fullAdder_package is 
component fullAdder 
  PORT (x, y, ci          : IN  STD_LOGIC;
        co, s             : out  STD_LOGIC);
end component;
end fullAdder_package;


-- vlib digital_components
-- vmap digital_components digital_components
-- vcom -work digital_components halfAdder_package.vhd