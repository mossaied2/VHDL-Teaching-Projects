library ieee;
use ieee.std_logic_1164.all;
package halfAdder_package is 
component halfAdder 
  PORT (x, y          : IN  STD_LOGIC;
        c, s          : out  STD_LOGIC);
end component;
end halfAdder_package;

-- vlib digital_components
-- vmap digital_components digital_components
-- vcom -work digital_components halfAdder_package.vhd