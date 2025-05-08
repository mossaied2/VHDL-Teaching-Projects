
-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity UpDownCounterSevenSegment_DFF_testbench is
-- empty
end UpDownCounterSevenSegment_DFF_testbench; 

architecture UpDownCounterSevenSegment_DFF_tb of UpDownCounterSevenSegment_DFF_testbench is

-- DUT component
component UpDownCounterSevenSegment_DFF is
port ( X, reset, clk: in std_logic;
       a,b,c,d,e,f,g : out std_logic);
end component;

signal clk_in : std_logic := '0';
signal reset_in : std_logic := '0';
signal X_in : std_logic := '0';
signal a_out, b_out, c_out, d_out, e_out, f_out, g_out :  std_logic;

begin

  -- Connect DUT
  DUT: UpDownCounterSevenSegment_DFF port map(X_in, reset_in, clk_in, a_out, b_out, c_out, d_out, e_out, f_out, g_out);

  -- Process for generating the clock
  clk_in <= not clk_in after 1 ns;

  process
  begin

    reset_in <= '1';
    wait for 2 ns; 
    X_in <= '0'; reset_in <= '0';
    wait for 10 ns;
    X_in <= '1'; reset_in <= '0';
    wait for 10 ns;



    assert false report "Test done." severity note;
    wait;
  end process;
end UpDownCounterSevenSegment_DFF_tb;
