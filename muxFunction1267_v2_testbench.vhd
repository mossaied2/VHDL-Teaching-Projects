library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
use ieee.numeric_std.all;
 
entity muxFunction1267_v2_testbench is
-- empty
end muxFunction1267_v2_testbench; 

architecture muxFunction1267_v2_tb of muxFunction1267_v2_testbench is

-- DUT component
component muxFunction1267_v2 is
port (x, y, z : in std_logic;
      F       : out std_logic);
end component;

signal x_in, y_in, z_in: STD_LOGIC;
signal F_out: std_logic;

begin

  -- Connect DUT
  DUT: muxFunction1267_v2 port map(x_in, y_in, z_in, F_out);

  process
  begin
    
	for i in std_logic range '0' to '1' loop 
		x_in <= i;
        	for j in std_logic range '0' to '1' loop 
			y_in <= j;
        		for k in std_logic range '0' to '1' loop 
				z_in <= k;
        			wait for 1 ns;
    			end loop;
	        end loop;
	end loop;

    assert false report "Test done." severity note;
    wait;
  end process;
end muxFunction1267_v2_tb;
