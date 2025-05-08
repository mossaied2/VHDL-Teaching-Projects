-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity fullAdder_v1_structure_testbench is
-- empty
end fullAdder_v1_structure_testbench; 

architecture fullAdder_v1_structure_tb of fullAdder_v1_structure_testbench is

-- DUT component
component fullAdder_v1_structure is
  PORT (x, y, z          : IN  STD_LOGIC;
        c, s             : out  STD_LOGIC);
end component;

signal x_in, y_in, z_in, c_out, s_out: std_logic;

begin

  -- Connect DUT
  DUT: fullAdder_v1_structure port map(x_in, y_in, z_in, c_out, s_out);

  process
  begin
    x_in <= '0';
    y_in <= '0';
    z_in <= '0';
    wait for 1 ns;
    
    x_in <= '0';
    y_in <= '0';
    z_in <= '1';
    wait for 1 ns;
    
    x_in <= '0';
    y_in <= '1';
    z_in <= '0';
    wait for 1 ns;    

    x_in <= '0';
    y_in <= '1';
    z_in <= '1';
    wait for 1 ns;
     
    x_in <= '1';
    y_in <= '0';
    z_in <= '0';
    wait for 1 ns;
    
    x_in <= '1';
    y_in <= '0';
    z_in <= '1';
    wait for 1 ns;
    
    x_in <= '1';
    y_in <= '1';
    z_in <= '0';
    wait for 1 ns;    

    x_in <= '1';
    y_in <= '1';
    z_in <= '1';
    wait for 1 ns;
     
    -- Clear inputs
    x_in <= '0';
    y_in <= '0';
    z_in <= '0';

    assert false report "Test done." severity note;
    wait;
  end process;
end fullAdder_v1_structure_tb;
