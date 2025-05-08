-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
use ieee.numeric_std.all;

entity BinaryAdder_3Numbers_HA_testbench is
-- empty
end BinaryAdder_3Numbers_HA_testbench; 

architecture BinaryAdder_3Numbers_HA_tb of BinaryAdder_3Numbers_HA_testbench is

-- DUT component
component BinaryAdder_3Numbers_HA is
  PORT (A, B, C          : IN  STD_LOGIC_vector(3 downto 0);
        Sum             : out std_logic_vector(5 downto 0));
end component;

signal A_in, B_in, C_in : STD_LOGIC_vector(3 downto 0);
signal Sum_out      : STD_LOGIC_vector(5 downto 0);

begin

  -- Connect DUT
  DUT: BinaryAdder_3Numbers_HA port map(A_in, B_in, C_in, Sum_out);

  process
  begin
    
    for i in 0 to 15 loop 
	A_in <= std_logic_vector(to_unsigned(i, A_in'length));
        for j in 0 to 15 loop
	    B_in <= std_logic_vector(to_unsigned(j, B_in'length));
	    for k in 0 to 15 loop
		C_in <= std_logic_vector(to_unsigned(k, C_in'length));
            	wait for 1 ns;
	    end loop;
        end loop;
    end loop;

    
    assert false report "Test done." severity note;
    wait;
  end process;
end BinaryAdder_3Numbers_HA_tb;

