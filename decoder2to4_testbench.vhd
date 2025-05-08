
-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity decoder2to4_testbench is
-- empty
end decoder2to4_testbench; 

architecture decoder2to4_tb of decoder2to4_testbench is

-- DUT component
component decoder2to4 is
  PORT (x,y              : in std_logic;
        En               : in std_logic;
        D0, D1, D2, D3   : out std_logic);
end component;

signal x_in, y_in, En_in: std_logic;
signal D0_out, D1_out, D2_out, D3_out: std_logic;

begin

  -- Connect DUT
  DUT: decoder2to4 port map(x_in, y_in, En_in, D0_out, D1_out, D2_out, D3_out);

  process
  begin

	for i in std_logic range '0' to '1' loop 
		En_in <= i;
        	for j in std_logic range '0' to '1' loop 
			x_in <= j;
        		for k in std_logic range '0' to '1' loop 
				y_in <= k;
            			wait for 1 ns;
			end loop;
	        end loop;
	end loop;

    assert false report "Test done." severity note;
    wait;
  end process;
end decoder2to4_tb;
