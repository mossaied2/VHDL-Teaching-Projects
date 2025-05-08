library ieee;
use ieee.std_logic_1164.all;
package mux8to1_package is 
component mux8to1 
  PORT (I  : IN STD_LOGIC_vector(7 downto 0);
        S  : IN STD_LOGIC_vector(2 downto 0);
        F  : OUT STD_LOGIC);
end component;
end mux8to1_package;
