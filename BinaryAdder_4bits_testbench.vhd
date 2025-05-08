-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
use ieee.numeric_std.all;

entity BinaryAdder_4bits_testbench is
-- empty
end BinaryAdder_4bits_testbench; 

architecture BinaryAdder_4bits_tb of BinaryAdder_4bits_testbench is

-- DUT component
component BinaryAdder_4bits is
  PORT (A, B          : IN  STD_LOGIC_vector(3 downto 0);
        Cin           : in std_logic;
        S             : out std_logic_vector(3 downto 0);
        C             : out STD_LOGIC);
end component;

signal A_in, B_in : STD_LOGIC_vector(3 downto 0);
signal S_out : STD_LOGIC_vector(3 downto 0);
signal C_in : STD_LOGIC;
signal C_out : STD_LOGIC;

begin

  -- Connect DUT
  DUT: BinaryAdder_4bits port map(A_in, B_in, C_in, S_out, C_out);

  process
  begin

    C_in <= '0';
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
end BinaryAdder_4bits_tb;

