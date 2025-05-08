-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
use ieee.numeric_std.all;

entity RippleCarryAdder_testbench is
-- empty
end RippleCarryAdder_testbench; 

architecture RippleCarryAdder_tb of RippleCarryAdder_testbench is

-- DUT component
component RippleCarryAdder is
  PORT (A, B          : IN  STD_LOGIC_vector(3 downto 0);
        s             : out std_logic_vector(3 downto 0);
        c             : out STD_LOGIC);
end component;

signal A_in, B_in : STD_LOGIC_vector(3 downto 0);
signal s_out : STD_LOGIC_vector(3 downto 0);
signal c_out : STD_LOGIC;

begin

  -- Connect DUT
  DUT: RippleCarryAdder port map(A_in, B_in, s_out, c_out);

  process
  begin

--    A_in <=  "0000";
--    B_in <=  "0000";
--    wait for 1 ns;
--    
--for i in 0 to 15 loop 
--    for j in 0 to 15 loop
--        B_in <=  B_in + "0001";
--        wait for 1 ns;
--    end loop;
--    A_in <=  A_in + "0001";
--end loop;

    for i in 0 to 15 loop 
	A_in <= std_logic_vector(to_unsigned(i, A_in'length));
        for j in i to 15 loop
	    B_in <= std_logic_vector(to_unsigned(j, B_in'length));
            wait for 1 ns;
        end loop;
    end loop;

--
--    wait for 1 ns;
--    
--    A_in <=  "0011";
--    B_in <=  "0011";
--
--    wait for 1 ns;
--    
--    A_in <=  "0100";
--    B_in <=  "0100";
--
--    wait for 1 ns;
--    
--    A_in <=  "0101";
--    B_in <=  "0101";
--
--    wait for 1 ns;
--    
--    A_in <=  "0110";
--    B_in <=  "0110";
--
--    wait for 1 ns;
--    
--    A_in <=  "0111";
--    B_in <=  "0111";
--
--    wait for 1 ns;
--    
--    A_in <=  "1000";
--    B_in <=  "1000";
--
--    wait for 1 ns;
--    
--    A_in <=  "1001";
--    B_in <=  "1001";
--
--    wait for 1 ns;
--     
--    A_in <=  "1010";
--    B_in <=  "1010";
--
--    wait for 1 ns;
--    
--    A_in <=  "1011";
--    B_in <=  "1011";
--
--    wait for 1 ns;
--    
--    A_in <=  "1100";
--    B_in <=  "1100";
--
--    wait for 1 ns;
--     
--    A_in <=  "1100";
--    B_in <=  "1100";
--
--    wait for 1 ns;
--     
--    A_in <=  "1110";
--    B_in <=  "1110";
--
--    wait for 1 ns;
--    
--    A_in <=  "1111";
--    B_in <=  "1111";
--
--    wait for 1 ns;
--     
    
    assert false report "Test done." severity note;
    wait;
  end process;
end RippleCarryAdder_tb;

