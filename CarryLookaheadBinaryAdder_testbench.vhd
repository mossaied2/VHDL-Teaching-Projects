-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity CarryLookaheadBinaryAdder_testbench is
-- empty
end CarryLookaheadBinaryAdder_testbench; 

architecture CarryLookaheadBinaryAdder_tb of CarryLookaheadBinaryAdder_testbench is

-- DUT component
component CarryLookaheadBinaryAdder is
  PORT (A, B          : in  STD_LOGIC_vector(3 downto 0);
        s             : out std_logic_vector(3 downto 0);
        c             : out STD_LOGIC);
end component;

signal A_in, B_in : STD_LOGIC_vector(3 downto 0);
signal s_out : STD_LOGIC_vector(3 downto 0);
signal c_out : STD_LOGIC;

begin

  -- Connect DUT
  DUT: CarryLookaheadBinaryAdder port map(A_in, B_in, s_out, c_out);

  process
  begin

    A_in <=  "0000";
    B_in <=  "0000";
    wait for 1 ns;
    
for i in 0 to 15 loop 
    for j in 0 to 15 loop
        B_in <=  B_in + "0001";
        wait for 1 ns;
    end loop;
    A_in <=  A_in + "0001";
end loop;

    assert false report "Test done." severity note;
    wait;
  end process;
end CarryLookaheadBinaryAdder_tb;

