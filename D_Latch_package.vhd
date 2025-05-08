library ieee;
use ieee.std_logic_1164.all;
package D_Latch_package is 
component D_Latch 
  PORT (D, En     : IN STD_LOGIC;
        Q, Q_bar     : OUT STD_LOGIC);
end component;
end D_Latch_package;
