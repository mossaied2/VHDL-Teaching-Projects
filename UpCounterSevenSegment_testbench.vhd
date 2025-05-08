
-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity UpCounterSevenSegment_DFF_testbench is
-- empty
end UpCounterSevenSegment_DFF_testbench; 

architecture UpCounterSevenSegment_DFF_tb of UpCounterSevenSegment_DFF_testbench is

-- DUT component
component UpCounterSevenSegment_DFF is
port ( reset, clk: in std_logic;
       a,b,c,d,e,f,g : out std_logic);
end component;

signal clk_in : std_logic := '0';
signal reset_in : std_logic := '0';
signal a_out, b_out, c_out, d_out, e_out, f_out, g_out :  std_logic;

begin

  -- Connect DUT
  DUT: UpCounterSevenSegment_DFF port map(reset_in, clk_in, a_out, b_out, c_out, d_out, e_out, f_out, g_out);

  -- Process for generating the clock
  clk_in <= not clk_in after 1 ns;

  process
  begin

    reset_in <= '1';
    wait for 2 ns; 
    reset_in <= '0';
    wait for 2 ns;


    assert false report "Test done." severity note;
    wait;
  end process;
end UpCounterSevenSegment_DFF_tb;
