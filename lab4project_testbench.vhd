library IEEE;
use IEEE.std_logic_1164.all;

entity lab3project_testbench is
-- empty
end lab3project_testbench; 

architecture lab3project_tb of lab3project_testbench is
-- DUT component
component lab3project is
  PORT (a, b, c, d, e, f  : IN STD_LOGIC;
        y     : OUT STD_LOGIC
);
end component;
signal a_in, b_in, c_in, d_in, e_in, f_in, y_out: std_logic;
begin
  -- Connect DUT
  DUT: lab3project port map(a_in, b_in, c_in, d_in, e_in, f_in, y_out);
  process
  begin    
    
    for aa in std_logic range '0' to '1' loop 
	a_in <= aa;
        for bb in std_logic range '0' to '1' loop
	    b_in <= bb;
            for cc in std_logic range '0' to '1' loop
	        c_in <= cc;
        	for dd in std_logic range '0' to '1' loop
	   	    d_in <= dd;
                    for ee in std_logic range '0' to '1' loop
	                e_in <= ee;
                        for ff in std_logic range '0' to '1' loop
	                    f_in <= ff;
                            wait for 1 ns;
                        end loop;
                    end loop;
                end loop;
            end loop;
        end loop;
    end loop;
     
    wait;
  end process;
end lab3project_tb;
