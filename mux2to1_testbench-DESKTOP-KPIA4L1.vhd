-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity mux2to1_testbench is
-- empty
end mux2to1_testbench; 

architecture mux2to1_tb of mux2to1_testbench is

-- DUT component
component mux2to1 is
  PORT (I0, I1  : IN STD_LOGIC;
        S       : IN STD_LOGIC;
        E       : IN STD_LOGIC;
        Y       : OUT STD_LOGIC);
end component;

signal I0_in, I1_in, S_in,  E_in, Y_out: std_logic;

begin

  -- Connect DUT
  DUT: mux2to1 port map(I0_in, I1_in, S_in, E_in, Y_out);

  process
  begin
    	for i in std_logic range '0' to '1' loop 
		E_in <= i;
		for j in std_logic range '0' to '1' loop 
			S_in <= j;
        		for k in std_logic range '0' to '1' loop 
				I0_in <= k;
        			for l in std_logic range '0' to '1' loop 
					I1_in <= l;
            				wait for 1 ns;
				end loop;
	        	end loop;
		end loop;
	end loop;

    assert false report "Test done." severity note;
    wait;
  end process;
end mux2to1_tb;

