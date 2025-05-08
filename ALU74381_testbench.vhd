
-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity ALU74381_testbench is
-- empty
end ALU74381_testbench; 

architecture ALU74381_tb of ALU74381_testbench is

-- DUT component
component ALU74381 is
  PORT (A, B         : in  std_logic_vector(3 downto 0);
        S            : in  std_logic_vector(2 downto 0);
        Y            : out std_logic_vector(3 downto 0));
end component;

signal A_in, B_in, Y_out: std_logic_vector(3 downto 0);
signal S_in: std_logic_vector(2 downto 0);

begin

  -- Connect DUT
  DUT: ALU74381 port map(A_in, B_in, S_in, Y_out);

  process
  begin
    A_in <= "0011";
    B_in <= "0001";
    S_in <= "000";
    wait for 1 ns;
     
    A_in <= "0010";
    B_in <= "0101";
    S_in <= "001";
    wait for 1 ns;
     
    A_in <= "1111";
    B_in <= "1111";
    S_in <= "010";
    wait for 1 ns;
     
    A_in <= "0110";
    B_in <= "1000";
    S_in <= "011";
    wait for 1 ns;
    
    A_in <= "0000";
    B_in <= "0000";
    S_in <= "100";
    wait for 1 ns;
    A_in <= "0011";
    B_in <= "0001";
    S_in <= "101";
    wait for 1 ns;
     
    A_in <= "0010";
    B_in <= "0101";
    S_in <= "110";
    wait for 1 ns;
     
    A_in <= "1111";
    B_in <= "1111";
    S_in <= "111";
    wait for 1 ns;
     
    A_in <= "0110";
    B_in <= "1000";
    S_in <= "010";
    wait for 1 ns;
    
    A_in <= "0000";
    B_in <= "0000";
    S_in <= "100";
    wait for 1 ns;
 

    assert false report "Test done." severity note;
    wait;
  end process;
end ALU74381_tb;
