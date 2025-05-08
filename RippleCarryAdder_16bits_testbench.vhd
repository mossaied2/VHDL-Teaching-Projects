-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
use ieee.numeric_std.all;

entity RippleCarryAdder_16bits_testbench is
-- empty
end RippleCarryAdder_16bits_testbench; 

architecture RippleCarryAdder_16bits_tb of RippleCarryAdder_16bits_testbench is

-- DUT component
component RippleCarryAdder_16bits is
  PORT (A, B          : IN  STD_LOGIC_vector(15 downto 0);
        s             : out std_logic_vector(15 downto 0);
        c             : out STD_LOGIC);
end component;

signal A_in, B_in : STD_LOGIC_vector(15 downto 0);
signal s_out : STD_LOGIC_vector(15 downto 0);
signal c_out : STD_LOGIC;

begin

  -- Connect DUT
  DUT: RippleCarryAdder_16bits port map(A_in, B_in, s_out, c_out);

  process
  begin

    --for i in 0 to 65535 loop 
	A_in <= std_logic_vector(to_unsigned(4000, A_in'length));
        for j in 1000 to 1010 loop
	    B_in <= std_logic_vector(to_unsigned(j, B_in'length));
            wait for 1 ns;
        end loop;
    --end loop;

    
    assert false report "Test done." severity note;
    wait;
  end process;
end RippleCarryAdder_16bits_tb;

