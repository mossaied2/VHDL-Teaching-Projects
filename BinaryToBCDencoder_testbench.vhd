
-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity binarytobcdencoder_testbench is
-- empty
end binarytobcdencoder_testbench; 

architecture binarytobcdencoder_tb of binarytobcdencoder_testbench is

-- DUT component
component binarytobcdencoder is
  PORT (binary          : in std_logic_vector(3 downto 0);
        bcd : out std_logic_vector(4 downto 0));
end component;

signal binary_in: std_logic_vector(3 downto 0);
signal bcd_out: std_logic_vector(4 downto 0);

begin
  -- Connect DUT
  DUT: binarytobcdencoder port map(binary_in, bcd_out);

  process
  begin
    binary_in <= "0000";
    wait for 1 ns;
    binary_in <= "0001";
    wait for 1 ns;
    binary_in <= "0010";
    wait for 1 ns;
    binary_in <= "0011";
    wait for 1 ns;
    binary_in <= "0100";
    wait for 1 ns;
    binary_in <= "0101";
    wait for 1 ns;
    binary_in <= "0110";
    wait for 1 ns;
    binary_in <= "0111";
    wait for 1 ns;
    binary_in <= "1000";
    wait for 1 ns;
    binary_in <= "1001";
    wait for 1 ns;
    binary_in <=  "1010";
    wait for 1 ns;
    binary_in <=  "1011";
    wait for 1 ns;
    binary_in <=  "1100";
    wait for 1 ns;
    binary_in <=  "1101";
    wait for 1 ns;
    binary_in <=  "1110";
    wait for 1 ns;
    binary_in <=  "1111";
    wait for 1 ns;
   
    -- Clear inputs
    binary_in <= "0000";

    assert false report "Test done." severity note;
    wait;
  end process;
end binarytobcdencoder_tb;
