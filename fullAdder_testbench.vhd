
-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity fullAdder_testbench is
-- empty
end fullAdder_testbench; 

architecture fullAdder_tb of fullAdder_testbench is

-- DUT component
component fullAdder_trent is
  PORT (x, y, ci          : IN  STD_LOGIC;
        co, s             : out  STD_LOGIC);
end component;

signal x_in, y_in, ci_in, co_out, s_out: std_logic;

begin

  -- Connect DUT
  DUT: fullAdder_trent port map(x_in, y_in, ci_in, co_out, s_out);

  process
  begin
    x_in <= '0';
    y_in <= '0';
    ci_in <= '0';
    wait for 1 ns;
    
    x_in <= '0';
    y_in <= '0';
    ci_in <= '1';
    wait for 1 ns;
    
    x_in <= '0';
    y_in <= '1';
    ci_in <= '0';
    wait for 1 ns;    

    x_in <= '0';
    y_in <= '1';
    ci_in <= '1';
    wait for 1 ns;
     
    x_in <= '1';
    y_in <= '0';
    ci_in <= '0';
    wait for 1 ns;
    
    x_in <= '1';
    y_in <= '0';
    ci_in <= '1';
    wait for 1 ns;
    
    x_in <= '1';
    y_in <= '1';
    ci_in <= '0';
    wait for 1 ns;    

    x_in <= '1';
    y_in <= '1';
    ci_in <= '1';
    wait for 1 ns;
     
    -- Clear inputs
    x_in <= '0';
    y_in <= '0';

    assert false report "Test done." severity note;
    wait;
  end process;
end fullAdder_tb;
