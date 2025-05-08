library ieee;
use ieee.std_logic_1164.all;
package mux2to1_package is 
component mux2to1 
  PORT (I0, I1  : IN STD_LOGIC;
        S       : IN STD_LOGIC;
        E       : IN STD_LOGIC;
        Y       : OUT STD_LOGIC);
end component;
end mux2to1_package;

