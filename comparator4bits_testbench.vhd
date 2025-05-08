-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
USE ieee.std_logic_unsigned.all ;

use ieee.numeric_std.all;

entity comparator4bits_testbench is
-- empty
end comparator4bits_testbench; 

architecture comparator4bits_tb of comparator4bits_testbench is

-- DUT component
component comparator4bits is
  PORT (A, B               : IN STD_LOGIC_vector(3 downto 0);
        AeqB, AltB, AgtB   : OUT STD_LOGIC);
end component;

signal AeqB_out, AltB_out, AgtB_out: std_logic;
signal A_in, B_in : std_logic_vector(3 downto 0);

begin

  -- Connect DUT
  DUT: comparator4bits port map(A_in, B_in, AeqB_out, AltB_out, AgtB_out);

  process
  begin

    for i in 0 to 15 loop 
A_in <= std_logic_vector(to_unsigned(i, A_in'length));
        for j in 0 to 15 loop
B_in <= std_logic_vector(to_unsigned(j, B_in'length));
            wait for 1 ns;
        end loop;
    end loop;


    assert false report "Test done." severity note;
    wait;
  end process;
end comparator4bits_tb;

