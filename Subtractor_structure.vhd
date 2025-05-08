-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity CarryLookaheadAdder_testbench is
-- empty
end CarryLookaheadAdder_testbench; 

architecture CarryLookaheadAdder_tb of CarryLookaheadAdder_testbench is

-- DUT component
component CarryLookaheadAdder is
  PORT (x, y          : in  STD_LOGIC_vector(3 downto 0);
        s             : out std_logic_vector(3 downto 0);
        c             : out STD_LOGIC);
end component;

signal x_in, y_in : STD_LOGIC_vector(3 downto 0);
signal s_out : STD_LOGIC_vector(3 downto 0);
signal c_out : STD_LOGIC;

begin

  -- Connect DUT
  DUT: CarryLookaheadAdder port map(x_in, y_in, s_out, c_out);

  process
  begin

    x_in <=  "0000";
    y_in <=  "0000";
    wait for 1 ns;
    
for i in 0 to 15 loop 
    for j in 0 to 15 loop
        y_in <=  y_in + "0001";
        wait for 1 ns;
    end loop;
    x_in <=  x_in + "0001";
end loop;

