library ieee;
use ieee.std_logic_1164.all;
package D_FF_PosEdge_package is 
component D_FF 
PORT (D, clock     : IN STD_LOGIC;
      Q, Q_bar     : OUT STD_LOGIC);
end component;
end D_FF_PosEdge_package;
