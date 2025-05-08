library ieee;
use ieee.std_logic_1164.all;
package or_gate_package is 
component or_gate 
port(a, b :in std_logic;
	y: out std_logic);
end component;
end or_gate_package;
