library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
use ieee.numeric_std.all;
 
entity muxFunction_1_3_4_11_12_13_14_15_v2_testbench is
-- empty
end muxFunction_1_3_4_11_12_13_14_15_v2_testbench; 

architecture muxFunction_1_3_4_11_12_13_14_15_v2_tb of muxFunction_1_3_4_11_12_13_14_15_v2_testbench is

-- DUT component
component muxFunction_1_3_4_11_12_13_14_15_v2 is
port (A, B, C, D : in std_logic;
      F       : out std_logic);
end component;

signal A_in, B_in, C_in, D_in: STD_LOGIC;
signal F_out: std_logic;

begin

  -- Connect DUT
  DUT: muxFunction_1_3_4_11_12_13_14_15_v2 port map(A_in, B_in, C_in, D_in, F_out);

  process
  begin
    
	for i in std_logic range '0' to '1' loop 
		A_in <= i;
        	for j in std_logic range '0' to '1' loop 
			B_in <= j;
        		for k in std_logic range '0' to '1' loop 
				C_in <= k;
        			for l in std_logic range '0' to '1' loop 
					D_in <= l;
	        			wait for 1 ns;
				end loop; 
    			end loop;
	        end loop;
	end loop;

    assert false report "Test done." severity note;
    wait;
  end process;
end muxFunction_1_3_4_11_12_13_14_15_v2_tb;
