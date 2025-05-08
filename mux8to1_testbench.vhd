library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
use ieee.numeric_std.all;
 
entity mux8to1_testbench is
-- empty
end mux8to1_testbench; 

architecture mux8to1_tb of mux8to1_testbench is

-- DUT component
component mux8to1 is
  PORT (I  : IN STD_LOGIC_vector(7 downto 0);
        S               : IN STD_LOGIC_vector(2 downto 0);
        F               : OUT STD_LOGIC);
end component;

signal I_in: STD_LOGIC_vector(7 downto 0);
signal F_out: std_logic;
signal S_in: STD_LOGIC_vector(2 downto 0);

begin

  -- Connect DUT
  DUT: mux8to1 port map(I_in, S_in, F_out);

  process
  begin
    
	for i in 0 to 7 loop  
		S_in <= std_logic_vector(to_unsigned(i, S_in'length));
        	for j in 0 to 255 loop 
			I_in <= std_logic_vector(to_unsigned(j, I_in'length));
        		wait for 1 ns;
    		end loop;
	end loop;

    assert false report "Test done." severity note;
    wait;
  end process;
end mux8to1_tb;

