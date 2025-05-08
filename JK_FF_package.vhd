library ieee;
use ieee.std_logic_1164.all;
package JK_FF_package is 
component JK_FF 
  PORT (j, k, clk, reset   : IN  STD_LOGIC;
        Q, Q_bar           : out  STD_LOGIC);
end component;
end JK_FF_package;
