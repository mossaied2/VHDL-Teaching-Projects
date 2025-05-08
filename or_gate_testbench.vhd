library IEEE;
use IEEE.std_logic_1164.all;

entity or_gate_testbench is
-- empty
end or_gate_testbench; 

architecture or_gate_tb of or_gate_testbench is
-- DUT component
component or_gate is
  PORT (a, b          : IN  STD_LOGIC;
           y          : out  STD_LOGIC);
end component;
signal a_in, b_in, y_out: std_logic;
begin
  -- Connect DUT
  DUT: or_gate port map(a_in, b_in, y_out);
  process
  begin    
    a_in <= '0';
    b_in <= '0';
    wait for 1 ns; 
    a_in <= '0';
    b_in <= '1';
    wait for 1 ns;
    a_in <= '1';
    b_in <= '0';
    wait for 1 ns;
    a_in <= '1';
    b_in <= '1';
    wait for 1 ns;
     
    wait;
  end process;
end or_gate_tb;
