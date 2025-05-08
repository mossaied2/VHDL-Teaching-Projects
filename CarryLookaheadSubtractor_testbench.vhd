-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity LookaheadSubtractor_testbench is
-- empty
end LookaheadSubtractor_testbench; 

architecture LookaheadSubtractor_tb of LookaheadSubtractor_testbench is

-- DUT component
component LookaheadSubtractor is
  PORT (x, y          : in  STD_LOGIC_vector(3 downto 0);
        s             : out std_logic_vector(3 downto 0));
end component;

signal x_in, y_in : STD_LOGIC_vector(3 downto 0);
signal s_out : STD_LOGIC_vector(3 downto 0);
signal c_out : STD_LOGIC;

begin

  -- Connect DUT
  DUT: LookaheadSubtractor port map(x_in, y_in, s_out);

  process
  begin

    x_in <=  "0000";
    y_in <=  "0000";
    wait for 1 ns;
    
for i in 0 to 15 loop
    y_in <= x_in; 
    wait for 1 ns;
    for j in 0 to 15 loop
        y_in <= y_in + "0001";
        wait for 1 ns;
        if y_in = 14 then 
           exit; 
        end if; 
    end loop;
    x_in <=  x_in + "0001";
end loop;
    
    assert false report "Test done." severity note;
    wait;
  end process;
end LookaheadSubtractor_tb;

