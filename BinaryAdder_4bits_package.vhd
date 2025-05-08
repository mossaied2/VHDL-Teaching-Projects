library ieee;
use ieee.std_logic_1164.all;
package BinaryAdder_4bits_package is 
component BinaryAdder_4bits 
  PORT (A, B          : IN  STD_LOGIC_vector(3 downto 0);
        Cin           : in std_logic;
        S             : out std_logic_vector(3 downto 0);
        C             : out STD_LOGIC);
end component;
end BinaryAdder_4bits_package;