library ieee;
use ieee.std_logic_1164.all;
package TFF_package is 
component T_FF 
  PORT (T, clk, reset          : IN  STD_LOGIC;
        Q, Q_bar        : out  STD_LOGIC);
end component;
end TFF_package;


