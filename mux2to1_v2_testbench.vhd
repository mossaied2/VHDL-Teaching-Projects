-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity mux2to1_v2_testbench is
-- empty
end mux2to1_v2_testbench; 

architecture mux2to1_v2_tb of mux2to1_v2_testbench is

-- DUT component
component mux2to1_v2 is
  PORT (w0, w1          : IN  STD_LOGIC;
        s               : IN  STD_LOGIC;
        f               : OUT STD_LOGIC);
end component;

signal w0_in, w1_in, s_in, f_out: std_logic;

begin

  -- Connect DUT
  DUT: mux2to1_v2 port map(w0_in, w1_in, s_in, f_out);

  process
  begin
    w0_in <= '1';
    w1_in <= '0';
    s_in <= '0';
    wait for 1 ns;
    
    w0_in <= '0';
    w1_in <= '1';
    s_in <= '1';
    wait for 1 ns;
    
    w0_in <= '0';
    w1_in <= '0';
    s_in <= '0';
    wait for 1 ns;    

    w0_in <= '0';
    w1_in <= '0';
    s_in <= '1';
    wait for 1 ns;
     
    -- Clear inputs
    w0_in <= '0';
    w1_in <= '0';
    s_in <= '0';

    assert false report "Test done." severity note;
    wait;
  end process;
end mux2to1_v2_tb;

