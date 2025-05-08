-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity decoder3to8_testbench is
-- empty
end decoder3to8_testbench; 

architecture decoder3to8_tb of decoder3to8_testbench is

-- DUT component
component decoder3to8 is
  PORT (x, y, z                         : in std_logic;
        D0, D1, D2, D3, D4, D5, D6, D7  : out std_logic);
end component;

signal x_in, y_in, z_in, D0_out, D1_out, D2_out, D3_out, D4_out, D5_out, D6_out, D7_out  : std_logic;

begin

  -- Connect DUT
  DUT: decoder3to8 port map(x_in, y_in, z_in, D0_out, D1_out, D2_out, D3_out, D4_out, D5_out, D6_out, D7_out);

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
end decoder3to8_tb;