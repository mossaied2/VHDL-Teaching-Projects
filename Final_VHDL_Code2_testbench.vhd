library IEEE;
use IEEE.std_logic_1164.all;
 
entity Final_VHDL_Code2_testbench is
-- empty
end Final_VHDL_Code2_testbench; 

architecture Final_VHDL_Code2_tb of Final_VHDL_Code2_testbench is

-- DUT component
component Final_VHDL_Code2 is
port ( X, reset, clk: in std_logic;
       Y : out std_logic);
end component;

signal X_in : std_logic;
signal clk_in : std_logic := '0';
signal reset_in : std_logic := '0';
signal Y_out :  std_logic;

begin

  -- Connect DUT
  DUT: Final_VHDL_Code2 port map(X_in, reset_in, clk_in, Y_out);

  -- Process for generating the clock
  clk_in <= not clk_in after 1 ns;

  process
  begin

reset_in <= '1';
wait for 2 ns;
reset_in <= '0';
X_in <= '0'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;
X_in <= '0'; 
    wait for 2 ns;
X_in <= '0'; 
    wait for 2 ns;
X_in <= '0'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;
X_in <= '0'; 
    wait for 2 ns;
X_in <= '0'; 
    wait for 2 ns;

    assert false report "Test done." severity note;
    wait;
  end process;
end Final_VHDL_Code2_tb;
