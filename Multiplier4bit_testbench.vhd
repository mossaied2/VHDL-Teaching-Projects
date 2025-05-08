-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
use ieee.numeric_std.all;

entity Multiplier4bits_testbench is
-- empty
end Multiplier4bits_testbench; 

architecture Multiplier4bits_tb of Multiplier4bits_testbench is

-- DUT component
component Multiplier4bits is
  PORT (A, B : IN STD_LOGIC_vector(3 downto 0);
        m    : out STD_LOGIC_vector(7 downto 0));
end component;

signal A_in, B_in : STD_LOGIC_vector(3 downto 0);
signal m_out : STD_LOGIC_vector(7 downto 0);

begin

  -- Connect DUT
  DUT: Multiplier4bits port map(A_in, B_in, m_out);

  process
  begin

    for i in 0 to 15 loop 
	A_in <= std_logic_vector(to_unsigned(i, A_in'length));
        for j in i to 15 loop
	    B_in <= std_logic_vector(to_unsigned(j, B_in'length));
            wait for 1 ns;
        end loop;
    end loop;

    assert false report "Test done." severity note;
    wait;
  end process;
end Multiplier4bits_tb;

