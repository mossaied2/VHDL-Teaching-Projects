library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
  
use ieee.numeric_std.all;

entity RippleCarryAdderSubtractor_testbench is
-- empty
end RippleCarryAdderSubtractor_testbench; 

architecture RippleCarryAdderSubtractor_tb of RippleCarryAdderSubtractor_testbench is

-- DUT component
component RippleCarryAdderSubtractor is
  PORT (A, B          : IN  STD_LOGIC_vector(3 downto 0);
        M             : in std_logic;
        c             : out std_logic;
        s             : out std_logic_vector(3 downto 0));
end component;

signal A_in, B_in, s_out : STD_LOGIC_vector(3 downto 0);
signal M_in, c_out : STD_LOGIC;

begin

  -- Connect DUT
  DUT: RippleCarryAdderSubtractor port map(A_in, B_in, M_in, c_out, s_out);

  process
  begin

M_in <= '0'; -- Addition
    for i in 0 to 15 loop 
	A_in <= std_logic_vector(to_unsigned(i, A_in'length));
        for j in i to 15 loop
	    B_in <= std_logic_vector(to_unsigned(j, B_in'length));
            wait for 1 ns;
        end loop;
    end loop;

M_in <= '1'; -- subtraction
    for i in 0 to 7 loop -- Remember 7 is 0111 so 7 is max positive integer we can represent using 4 bits. 
                         -- Remember also 1000 is not 8 in signed numbers! because since we have 1 at the 
                         -- most significant bit, that means it a 2's complement for some other number. so
                         -- 1000 -> 2's -> 0111+1 = 1000 therefore 1000 is actually -8 not 8
                         -- that is why the loop only iterate until 7 not 15 like the addition. if you have confusion email the instructor
	A_in <= std_logic_vector(to_unsigned(i, A_in'length));
        for j in 0 to i loop
	    B_in <= std_logic_vector(to_unsigned(j, B_in'length));
            wait for 1 ns;
        end loop;
    end loop;

--    B_in <=  "0001";
--    M_in <= '0';
--    wait for 1 ns;
--    
--for i in 0 to 15 loop
--    for k in 0 to 1 loop
--        if k = 0 then 
--           M_in <= '0';
--        else 
--           M_in <= '1';
--        end if ;
--        for j in 0 to 15 loop
--            B_in <= B_in + "0001";
--            wait for 1 ns;
--            --if B_in = 15 then 
--            --   exit; 
--            --end if; 
--         end loop;
--    end loop;
--    A_in <=  A_in + "0001";
--    B_in <=  A_in + "0001"; 
--    M_in <= '0';
--    wait for 1 ns;
--end loop;
    
    assert false report "Test done." severity note;
    wait;
  end process;
end RippleCarryAdderSubtractor_tb;
