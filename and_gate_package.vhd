library ieee;
use ieee.std_logic_1164.all;
package and_gate_package is 
component and_gate 
port(a, b :in std_logic;
	y: out std_logic);
end component;
end and_gate_package;
