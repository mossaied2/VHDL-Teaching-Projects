library IEEE;
use IEEE.std_logic_1164.all;

entity new_design_testbench is
-- empty
end new_design_testbench; 

architecture new_design_tb of new_design_testbench is
-- DUT component
component new_design is
  PORT (a, b, c, d  : IN STD_LOGIC;
        y     : OUT STD_LOGIC
);
end component;
signal a_in, b_in, c_in, d_in, y_out: std_logic;
begin
  -- Connect DUT
  DUT: new_design port map(a_in, b_in, c_in, d_in, y_out);
  process
  begin    
    a_in <= '0';
    b_in <= '0';
    c_in <= '0';
    d_in <= '0';
    wait for 1 ns; 
    a_in <= '0';
    b_in <= '0';
    c_in <= '0';
    d_in <= '1';
    wait for 1 ns;
    a_in <= '0';
    b_in <= '0';
    c_in <= '1';
    d_in <= '0';
    wait for 1 ns;
    a_in <= '0';
    b_in <= '0';
    c_in <= '1';
    d_in <= '1';
    wait for 1 ns;
-----------------------------------
    a_in <= '0';
    b_in <= '1';
    c_in <= '0';
    d_in <= '0';
    wait for 1 ns; 
    a_in <= '0';
    b_in <= '1';
    c_in <= '0';
    d_in <= '1';
    wait for 1 ns;
    a_in <= '0';
    b_in <= '1';
    c_in <= '1';
    d_in <= '0';
    wait for 1 ns;
    a_in <= '0';
    b_in <= '1';
    c_in <= '1';
    d_in <= '1';
    wait for 1 ns;
-----------------------------------
    a_in <= '1';
    b_in <= '0';
    c_in <= '0';
    d_in <= '0';
    wait for 1 ns; 
    a_in <= '1';
    b_in <= '0';
    c_in <= '0';
    d_in <= '1';
    wait for 1 ns;
    a_in <= '1';
    b_in <= '0';
    c_in <= '1';
    d_in <= '0';
    wait for 1 ns;
    a_in <= '1';
    b_in <= '0';
    c_in <= '1';
    d_in <= '1';
    wait for 1 ns;
-----------------------------------
    a_in <= '1';
    b_in <= '1';
    c_in <= '0';
    d_in <= '0';
    wait for 1 ns; 
    a_in <= '1';
    b_in <= '1';
    c_in <= '0';
    d_in <= '1';
    wait for 1 ns;
    a_in <= '1';
    b_in <= '1';
    c_in <= '1';
    d_in <= '0';
    wait for 1 ns;
    a_in <= '1';
    b_in <= '1';
    c_in <= '1';
    d_in <= '1';
    wait for 1 ns;
     
    wait;
  end process;
end new_design_tb;