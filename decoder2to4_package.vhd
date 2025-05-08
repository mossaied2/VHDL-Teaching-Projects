library ieee;
use ieee.std_logic_1164.all;
package decoder2to4_package is 
component decoder2to4 
  PORT (x, y            : in std_logic;
        En              : in std_logic;
        D0, D1, D2, D3  : out std_logic);
end component;
end decoder2to4_package;