library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
use ieee.numeric_std.all;

entity multiplier_4bitx3bit_testbench is
-- empty
end multiplier_4bitx3bit_testbench; 

architecture multiplier_4bitx3bit_tb of multiplier_4bitx3bit_testbench is

-- DUT component
component multiplier_4bitx3bit is
  PORT (B : IN STD_LOGIC_vector(3 downto 0);
        A : IN STD_LOGIC_vector(2 downto 0);
        m : out STD_LOGIC_vector(6 downto 0));
end component;

signal B_in : STD_LOGIC_vector(3 downto 0);
signal A_in : STD_LOGIC_vector(2 downto 0);
signal m_out : STD_LOGIC_vector(6 downto 0);

begin

  -- Connect DUT
  DUT: multiplier_4bitx3bit port map(B_in, A_in, m_out);

  process
  begin

    for i in 0 to 7 loop 
	A_in <= std_logic_vector(to_unsigned(i, A_in'length));
        for j in i to 15 loop
	    B_in <= std_logic_vector(to_unsigned(j, B_in'length));
            wait for 1 ns;
        end loop;
    end loop;
    
    assert false report "Test done." severity note;
    wait;
  end process;
end multiplier_4bitx3bit_tb;

