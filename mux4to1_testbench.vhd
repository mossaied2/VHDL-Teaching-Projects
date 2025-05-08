-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
use ieee.numeric_std.all;
 
entity mux4to1_testbench is
-- empty
end mux4to1_testbench; 

architecture mux4to1_tb of mux4to1_testbench is

-- DUT component
component mux4to1 is
  PORT (I  : IN STD_LOGIC_vector(3 downto 0);
        s  : IN STD_LOGIC_vector(1 downto 0);
        F  : OUT STD_LOGIC);
end component;

signal I_in : STD_LOGIC_vector(3 downto 0);
signal f_out: std_logic;
signal s_in: std_logic_vector(1 downto 0);

begin

  -- Connect DUT
  DUT: mux4to1 port map(I_in, s_in, f_out);

  process
  begin
	for i in 0 to 3 loop  
		S_in <= std_logic_vector(to_unsigned(i, S_in'length));
        	for j in 0 to 15 loop 
			I_in <= std_logic_vector(to_unsigned(j, I_in'length));
        		wait for 1 ns;
    		end loop;
	end loop;

    assert false report "Test done." severity note;
    wait;
  end process;
end mux4to1_tb;

