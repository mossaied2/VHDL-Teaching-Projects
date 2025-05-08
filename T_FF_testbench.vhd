
-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity T_FF_testbench is
-- empty
end T_FF_testbench; 

architecture T_FF_tb of T_FF_testbench is

-- DUT component
component T_FF is
  PORT (T, clk, reset   : IN  STD_LOGIC;
        Q, Q_bar        : out  STD_LOGIC);
end component;

signal T_in : STD_LOGIC;
signal reset_in : STD_LOGIC;
signal clk_in : std_logic := '0';
signal Q_out : std_logic;
signal Q_bar_out : std_logic;

begin

  -- Connect DUT
  DUT: T_FF port map(T_in, clk_in, reset_in, Q_out, Q_bar_out);

  -- Process for generating the clock
  clk_in <= not clk_in after 1.300 ns;

  process
  begin
    T_in <= '0'; reset_in <= '1';
    
    wait for 1 ns; 
    T_in <= '1'; reset_in <= '1';
    
    wait for 1 ns;
    T_in <= '0'; reset_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;  
  T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;  
  T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;   
 T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;   
 T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;  
  T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;  
  T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;    
T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;    
T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;   
 T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns; 
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    T_in <= '0';
    
    wait for 1 ns;
    T_in <= '1';
    
    wait for 1 ns;
    
    assert false report "Test done." severity note;
    wait;
  end process;
end T_FF_tb;
