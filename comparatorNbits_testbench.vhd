-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
USE ieee.std_logic_unsigned.all ;

entity comparatorNbits_testbench is
-- empty
end comparatorNbits_testbench; 

architecture comparatorNbits_tb of comparatorNbits_testbench is

-- DUT component
component comparatorNbits is
  PORT (A, B               : IN STD_LOGIC_vector(3 downto 0);
        AeqB, AltB, AgtB   : OUT STD_LOGIC);
end component;

signal AeqB_out, AltB_out, AgtB_out: std_logic;
signal A_in, B_in : std_logic_vector(3 downto 0);

begin

  -- Connect DUT
  DUT: comparatorNbits port map(A_in, B_in, AeqB_out, AltB_out, AgtB_out);

  process
  begin
    A_in <= "0011";
    B_in <= "0001";
    wait for 1 ns;
     
    A_in <= "0010";
    B_in <= "0101";
    wait for 1 ns;
     
    A_in <= "1111";
    B_in <= "1111";
    wait for 1 ns;
     
    A_in <= "0110";
    B_in <= "1000";
    wait for 1 ns;
    
    A_in <= "0000";
    B_in <= "0000";
    wait for 1 ns;
  
    assert false report "Test done." severity note;
    wait;
  end process;
end comparatorNbits_tb;

