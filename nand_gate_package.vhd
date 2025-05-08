library ieee;
use ieee.std_logic_1164.all;
package nand_gate_package is 
component nand_gate 
  PORT (a, b  : IN STD_LOGIC;
        y     : OUT STD_LOGIC);
end component;
end nand_gate_package;
