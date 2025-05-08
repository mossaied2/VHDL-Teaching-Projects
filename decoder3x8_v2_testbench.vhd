library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity decoder3to8_compact_testbench is
-- empty
end decoder3to8_compact_testbench; 

architecture decoder3to8_compact_tb of decoder3to8_compact_testbench is

-- DUT component
component decoder3to8_compact is
  PORT (w  : in std_logic_vector(2 downto 0);
        En : in std_logic;
        D  : out std_logic_vector(7 downto 0));
end component;

signal En_in: std_logic;
signal w_in: std_logic_vector(2 downto 0);
signal D_out: std_logic_vector(7 downto 0);

begin

  -- Connect DUT
  DUT: decoder3to8_compact port map(w_in, En_in, D_out);

  process
  begin
	for i in std_logic range '0' to '1' loop 
		En_in <= i;
        	for j in 0 to 7 loop
	    		w_in <= std_logic_vector(to_unsigned(j, w_in'length));       		
			wait for 1 ns;
	        end loop;
	end loop;

    assert false report "Test done." severity note;
    wait;
  end process;
end decoder3to8_compact_tb;
