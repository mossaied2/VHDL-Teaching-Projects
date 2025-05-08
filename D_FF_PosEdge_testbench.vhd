library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity D_FF_PosEdge_testbench is
-- empty
end D_FF_PosEdge_testbench; 
architecture D_FF_PosEdge_tb of D_FF_PosEdge_testbench is
-- DUT component
component D_FF is
  PORT (D, clock     : IN STD_LOGIC;
        Q, Q_bar     : OUT STD_LOGIC);
end component;
signal D_in, Q_out, Q_bar_out: std_logic;
signal clock_in : std_logic := '0';

--constant ClockPeriod : integer := 3 ns; 
--constant ClockPeriod    : time    := 1000 ms / ClockFrequency;

begin
  -- Connect DUT
  DUT: D_FF port map(D_in, clock_in, Q_out, Q_bar_out);
  
  -- Process for generating the clock
  clock_in <= not clock_in after 1.5 ns;

 process
  begin  
    
    D_in <= '1';
    wait for 1 ns; 
    
    D_in <= '1';
    wait for 1 ns;
    
    D_in <= '0';
    wait for 1 ns;
    
    D_in <= '0';
    wait for 1 ns;
    
    D_in <= '0';
    wait for 1 ns;
    
    D_in <= '0';
    wait for 1 ns;
     
    
    D_in <= '1';
    wait for 1 ns; 
    
    D_in <= '1';
    wait for 1 ns;
    
    D_in <= '0';
    wait for 1 ns;
    
    D_in <= '0';
    wait for 1 ns;
    
    D_in <= '0';
    wait for 1 ns;
    
    D_in <= '0';
    wait for 1 ns;

    D_in <= '1';
    wait for 1 ns; 
    
    D_in <= '1';
    wait for 1 ns;
    
    D_in <= '0';
    wait for 1 ns;
    
    D_in <= '0';
    wait for 1 ns;
    
    D_in <= '0';
    wait for 1 ns;
    
    D_in <= '0';
    wait for 1 ns;

    wait;
  end process;
end D_FF_PosEdge_tb;
