
-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
use ieee.numeric_std.all;

entity RippleCarrySubtractor_testbench is
-- empty
end RippleCarrySubtractor_testbench; 

architecture RippleCarrySubtractor_tb of RippleCarrySubtractor_testbench is

-- DUT component
component RippleCarrySubtractor is
  PORT (A, B          : IN  STD_LOGIC_vector(3 downto 0);
        s             : out std_logic_vector(3 downto 0));
end component;

signal A_in, B_in : STD_LOGIC_vector(3 downto 0);
signal s_out : STD_LOGIC_vector(3 downto 0);

begin

  -- Connect DUT
  DUT: RippleCarrySubtractor port map(A_in, B_in, s_out);

  process
  begin

    for i in 0 to 15 loop 
	A_in <= std_logic_vector(to_unsigned(i, A_in'length));
        for j in 0 to i loop
	    B_in <= std_logic_vector(to_unsigned(j, B_in'length));
            wait for 1 ns;
        end loop;
    end loop;
   
    -- Clear inputs
    A_in <= "0000";
    B_in <= "0000";
    
    assert false report "Test done." severity note;
    wait;
  end process;
end RippleCarrySubtractor_tb;
