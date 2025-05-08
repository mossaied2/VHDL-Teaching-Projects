library IEEE;
use IEEE.std_logic_1164.all;

entity nor_gate_structural_testbench is
-- empty
end nor_gate_structural_testbench; 

architecture nor_gate_structural_tb of nor_gate_structural_testbench is
-- DUT component
component nor_gate_structural is
  PORT (a, b          : IN  STD_LOGIC;
           y          : out  STD_LOGIC);
end component;
signal a_in, b_in, y_out: std_logic;
begin
  -- Connect DUT
  DUT: nor_gate_structural port map(a_in, b_in, y_out);
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
end nor_gate_structural_tb;
