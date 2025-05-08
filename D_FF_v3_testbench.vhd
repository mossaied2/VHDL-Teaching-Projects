library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity D_FF_v3_testbench is
-- empty
end D_FF_v3_testbench; 
architecture D_FF_v3_tb of D_FF_v3_testbench is
-- DUT component
component DFF_v3 is
    port (clk, reset, D: in std_logic; 
          Q, Q_bar: out std_logic);
end component;
signal D_in: std_logic;
signal clock_in : std_logic := '0';
signal reset_in : std_logic := '1';
signal Q_out : std_logic ;
signal Q_bar_out : std_logic ;

begin
  -- Connect DUT
  DUT: DFF_v3 port map(clock_in, reset_in, D_in, Q_out, Q_bar_out);
  
  -- Process for generating the clock
  clock_in <= not clock_in after 1.5 ns;

 process
  begin  
    
    D_in <= '1'; reset_in <= '1';
    wait for 3 ns; 
    
    D_in <= '1'; reset_in <= '0';
    wait for 3 ns;
    
    D_in <= '0'; reset_in <= '0';
    wait for 3 ns;
    
    D_in <= '0'; reset_in <= '0';
    wait for 3 ns;
    
    D_in <= '0'; reset_in <= '0';
    wait for 3 ns;
    
    D_in <= '0'; reset_in <= '0';
    wait for 3 ns;
     
    D_in <= '1'; reset_in <= '0';
    wait for 3 ns; 
    
    D_in <= '1'; reset_in <= '0';
    wait for 3 ns;
    
    D_in <= '0'; reset_in <= '0';
    wait for 3 ns;
    
    D_in <= '0'; reset_in <= '0';
    wait for 3 ns;
    
    D_in <= '0'; reset_in <= '0';
    wait for 3 ns;
    
    D_in <= '0'; reset_in <= '0';
    wait for 3 ns;

    D_in <= '1'; reset_in <= '0';
    wait for 3 ns; 
    
    D_in <= '1'; reset_in <= '0';
    wait for 3 ns;
    
    D_in <= '0'; reset_in <= '0';
    wait for 3 ns;
    
    D_in <= '0'; reset_in <= '0';
    wait for 3 ns;
    
    D_in <= '0'; reset_in <= '0';
    wait for 3 ns;
    
    D_in <= '0'; reset_in <= '0';
    wait for 3 ns;

    wait;
  end process;
end D_FF_v3_tb;