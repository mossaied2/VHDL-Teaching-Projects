-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
use ieee.numeric_std.all;

entity mutliplier_2bits_v1_testbench is
-- empty
end mutliplier_2bits_v1_testbench; 

architecture mutliplier_2bits_v1_tb of mutliplier_2bits_v1_testbench is

-- DUT component
component mutliplier_2bits_v1 is
  PORT (A, B          : in  STD_LOGIC_vector(1 downto 0);
        C             : out std_logic_vector(3 downto 0));
end component;

signal A_in, B_in : STD_LOGIC_vector(1 downto 0);
signal C_out : STD_LOGIC_vector(3 downto 0);

begin

  -- Connect DUT
  DUT: mutliplier_2bits_v1 port map(A_in, B_in, C_out);

  process
  begin

    for i in 0 to 3 loop 
	A_in <= std_logic_vector(to_unsigned(i, A_in'length));
        for j in i to 3 loop
	    B_in <= std_logic_vector(to_unsigned(j, B_in'length));
            wait for 1 ns;
        end loop;
    end loop;
    
    assert false report "Test done." severity note;
    wait;
  end process;
end mutliplier_2bits_v1_tb;

