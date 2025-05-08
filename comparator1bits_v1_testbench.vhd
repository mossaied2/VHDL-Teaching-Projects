library IEEE;
use IEEE.std_logic_1164.all;

entity comparator1bits_v1_testbench is
-- empty
end comparator1bits_v1_testbench; 

architecture comparator1bits_v1_tb of comparator1bits_v1_testbench is
-- DUT component
component comparator1bits_v1 is
  PORT (A, B       : IN STD_LOGIC;
        C          : OUT STD_LOGIC_VECTOR(1 downto 0));
end component;
signal A_in, B_in : std_logic;
signal C_out      : STD_LOGIC_VECTOR(1 downto 0);
begin
  -- Connect DUT
  DUT: comparator1bits_v1 port map(A_in, B_in, C_out);
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
end comparator1bits_v1_tb;
