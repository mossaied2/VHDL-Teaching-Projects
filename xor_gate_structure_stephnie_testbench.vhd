library IEEE;
use IEEE.std_logic_1164.all;

entity xor_gate_structure_testbench is
-- empty
end xor_gate_structure_testbench;

architecture xor_gate_structure_tb of xor_gate_structure_testbench is
-- DUT component
component xor_gate_stephanie is
  PORT (a, b          : IN  STD_LOGIC;
           y          : out  STD_LOGIC);
end component;
signal a_in, b_in, y_out: std_logic;
begin
  -- Connect DUT
  DUT: xor_gate_stephanie port map(a_in, b_in, y_out);
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
end xor_gate_structure_tb;

