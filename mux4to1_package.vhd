library ieee;
use ieee.std_logic_1164.all;
package mux4to1_package is 
component mux4to1 
  PORT (I  : IN STD_LOGIC_vector(3 downto 0);
        s  : IN STD_LOGIC_vector(1 downto 0);
        F  : OUT STD_LOGIC);
end component;
end mux4to1_package;