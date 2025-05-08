library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

use ieee.numeric_std.all;

entity BCDAdder_v2_testbench is
-- empty
end BCDAdder_v2_testbench; 

architecture BCDAdder_v2_tb of BCDAdder_v2_testbench is

-- DUT component
component BCDAdder_v2 is
  PORT (x,y  : IN STD_LOGIC_vector(3 downto 0);
        s  : out STD_LOGIC_vector(3 downto 0);
        c  : OUT STD_LOGIC);
end component;

signal x_in, y_in, s_out: std_logic_vector(3 downto 0);
signal c_out: std_logic;

begin
  -- Connect DUT
  DUT: BCDAdder_v2 port map(x_in, y_in, s_out, c_out);

  process
  begin
    
    for i in 0 to 9 loop 
	x_in <= std_logic_vector(to_unsigned(i, x_in'length));
        for j in i to 9 loop
	    y_in <= std_logic_vector(to_unsigned(j, y_in'length));
            wait for 1 ns;
        end loop;
    end loop;

    assert false report "Test done." severity note;
    wait;
  end process;
end BCDAdder_v2_tb;






--use IEEE.std_logic_1164.all;
--use ieee.std_logic_unsigned.all;
-- 
--entity BCDAdder_structure_testbench is
---- empty
--end BCDAdder_structure_testbench; 
--
--architecture BCDAdder_structure_tb of BCDAdder_structure_testbench is
--
---- DUT component
--component BCDAdder_structure is
--  PORT (x,y  : IN STD_LOGIC_vector(3 downto 0);
--        s  : out STD_LOGIC_vector(3 downto 0);
--        c  : OUT STD_LOGIC);
--end component;
--
--signal x_in, y_in, s_out: std_logic_vector(3 downto 0);
--signal c_out: std_logic;
--
--begin
--  -- Connect DUT
--  DUT: BCDAdder_structure port map(x_in, y_in, s_out, c_out);
--
--  process
--  begin
--    x_in <=  "0000";
--    y_in <=  "0000";
--    wait for 1 ns;
--    
--    for i in 0 to 9 loop 
--        for j in 0 to 8 loop
--            y_in <=  y_in + "0001";
--            if y_in > 8 then
--               y_in <=  "0000";          
--             end if;
--            wait for 1 ns;
--        end loop;
--        x_in <=  x_in + "0001";
--        if x_in > 9 then
--           x_in <=  "0000";          
--        end if;
--    end loop;
--   
--    -- Clear inputs
--    x_in <= "0000";
--    y_in <= "0000";
--
--    assert false report "Test done." severity note;
--    wait;
--  end process;
--end BCDAdder_structure_tb;
