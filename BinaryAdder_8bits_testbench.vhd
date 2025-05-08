-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
use ieee.numeric_std.all;

entity BinaryAdder_8bits_testbench is
-- empty
end BinaryAdder_8bits_testbench; 

architecture BinaryAdder_8bits_tb of BinaryAdder_8bits_testbench is

-- DUT component
component BinaryAdder_8bits is
port (A , B : in  std_logic_vector (7 downto 0);
      S     : out std_logic_vector (7 downto 0);
      C     : out std_logic);
end component;

signal A_in, B_in : STD_LOGIC_vector(7 downto 0);
signal S_out      : STD_LOGIC_vector(7 downto 0);
signal C_out      : STD_LOGIC;

begin

  -- Connect DUT
  DUT: BinaryAdder_8bits port map(A_in, B_in, S_out, C_out);

  process
  begin

    for i in 0 to 255 loop 
	A_in <= std_logic_vector(to_unsigned(i, A_in'length));
        for j in i to 255 loop
	    B_in <= std_logic_vector(to_unsigned(j, B_in'length));
            wait for 1 ns;
        end loop;
    end loop;

    
    assert false report "Test done." severity note;
    wait;
  end process;
end BinaryAdder_8bits_tb;

