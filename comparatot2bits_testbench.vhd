-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity comparator2bits_testbench is
-- empty
end comparator2bits_testbench; 

architecture comparator2bits_tb of comparator2bits_testbench is

-- DUT component
component comparator2bits is
  PORT (A, B               : IN STD_LOGIC;
        AeqB, AltB, AgtB   : OUT STD_LOGIC);
end component;

signal A_in, B_in, AeqB_out, AltB_out, AgtB_out: std_logic;

begin

  -- Connect DUT
  DUT: comparator2bits port map(A_in, B_in, AeqB_out, AltB_out, AgtB_out);

  process
  begin
    A_in <= '0';
    B_in <= '0';
    wait for 1 ns;
    
  
    A_in <= '1';
    B_in <= '0';
    wait for 1 ns;
    
  
    A_in <= '0';
    B_in <= '1';
    wait for 1 ns;
    
  
    A_in <= '1';
    B_in <= '1';
    wait for 1 ns;
    
  
    A_in <= '0';
    B_in <= '0';
    wait for 1 ns;
    
  
    assert false report "Test done." severity note;
    wait;
  end process;
end comparator2bits_tb;

