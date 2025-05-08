library IEEE;
use IEEE.std_logic_1164.all;
 
entity halfAdder_testbench is
-- empty
end halfAdder_testbench; 

architecture halfAdder_tb of halfAdder_testbench is

-- DUT component
component halfAdder is
  PORT (x, y          : IN  STD_LOGIC;
        c, s          : out  STD_LOGIC);
end component;

signal x_in, y_in, c_out, s_out: std_logic;

begin

  -- Connect DUT
  DUT: halfAdder port map(x_in, y_in, c_out, s_out);

  process
  begin
    
    x_in <= '0';
    y_in <= '0';
    wait for 1 ns;  
    
    x_in <= '0';
    y_in <= '1';
    wait for 1 ns;
  
    x_in <= '1';
    y_in <= '0';
    wait for 1 ns;

    x_in <= '1';
    y_in <= '1';
    wait for 1 ns;
     
    -- Clear inputs
    x_in <= '0';
    y_in <= '0';

    assert false report "Test done." severity note;
    wait;
  end process;
end halfAdder_tb;
