-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
use ieee.numeric_std.all;
 
entity muxQ2to1_testbench is
-- empty
end muxQ2to1_testbench; 

architecture muxQ2to1_tb of muxQ2to1_testbench is

-- DUT component
component muxQ2to1 is
  PORT (A, B  : IN STD_LOGIC_vector(3 downto 0);
        S     : IN STD_LOGIC;
        E     : IN STD_LOGIC;
        Y     : OUT STD_LOGIC_vector(3 downto 0));
end component;

signal A_in, B_in, Y_out: STD_LOGIC_vector(3 downto 0);
signal S_in, E_in: std_logic;

begin

  -- Connect DUT
  DUT: muxQ2to1 port map(A_in, B_in, S_in, E_in, Y_out);

  process
  begin
    
	for i in std_logic range '0' to '1' loop 
		E_in <= i;
        	for j in std_logic range '0' to '1' loop 
			S_in <= j;
        		for i in 0 to 15 loop 
				A_in <= std_logic_vector(to_unsigned(i, A_in'length));
        			for j in 0 to 15 loop
	    				B_in <= std_logic_vector(to_unsigned(j, B_in'length));
            				wait for 1 ns;
        			end loop;
    			end loop;
	        end loop;
	end loop;

    assert false report "Test done." severity note;
    wait;
  end process;
end muxQ2to1_tb;

