library IEEE;
use IEEE.std_logic_1164.all;

entity comparator1bits_testbench is
-- empty
end comparator1bits_testbench; 

architecture comparator1bits_tb of comparator1bits_testbench is
-- DUT component
component comparator1bits is
  PORT (A, B               : IN STD_LOGIC;
        AeqB, AltB, AgtB   : OUT STD_LOGIC);
end component;
signal A_in, B_in : std_logic;
signal AeqB_out, AltB_out, AgtB_out      : STD_LOGIC;
begin
  -- Connect DUT
  DUT: comparator1bits port map(A_in, B_in, AeqB_out, AltB_out, AgtB_out );
  process
  begin    
    A_in <= '0';
    B_in <= '0';
    wait for 1 ns; 
    A_in <= '0';
    B_in <= '1';
    wait for 1 ns;
    A_in <= '1';
    B_in <= '0';
    wait for 1 ns;
    A_in <= '1';
    B_in <= '1';
    wait for 1 ns;
     
    wait;
  end process;
end comparator1bits_tb;
