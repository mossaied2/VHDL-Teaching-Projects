library IEEE;
use IEEE.std_logic_1164.all;
entity D_Latch_testbench is
-- empty
end D_Latch_testbench; 
architecture D_Latch_tb of D_Latch_testbench is
-- DUT component
component D_Latch is
  PORT (D, En     : IN STD_LOGIC;
        Q, Q_bar     : OUT STD_LOGIC);
end component;
signal D_in, En_in, Q_out, Q_bar_out: std_logic;
begin
  -- Connect DUT
  DUT: D_Latch port map(D_in, En_in, Q_out, Q_bar_out);
  process
  begin   

	for i in std_logic range '0' to '1' loop 
		En_in <= i;
        	for j in std_logic range '0' to '1' loop 
			D_in <= j;
        		wait for 1 ns;
	        end loop;
	end loop;  
      
--    D_in <= '1';
--En_in <= '1';
--    wait for 1 ns; 
--    
--    D_in <= '1';
--En_in <= '1';
--    wait for 1 ns;
--    
--    D_in <= '0';
--En_in <= '1';
--    wait for 1 ns;
--    
--    D_in <= '0';
--En_in <= '1';
--    wait for 1 ns;
--    
--    D_in <= '0';
--En_in <= '1';
--    wait for 1 ns;
--    
--    D_in <= '0';
--En_in <= '1';
--    wait for 1 ns;
--     
--
--    
--    D_in <= '1';
--En_in <= '0';
--    wait for 1 ns; 
--    
--    D_in <= '1';
--En_in <= '0';
--    wait for 1 ns;
--    
--    D_in <= '0';
--En_in <= '0';
--    wait for 1 ns;
--    
--    D_in <= '0';
--En_in <= '0';
--    wait for 1 ns;
--    
--    D_in <= '0';
--En_in <= '0';
--    wait for 1 ns;
--    
--    D_in <= '0';
--En_in <= '0';
--    wait for 1 ns;
--
-- D_in <= '1';
--En_in <= '1';
--    wait for 1 ns; 
--    
--    D_in <= '1';
--En_in <= '1';
--    wait for 1 ns;
--    
--    D_in <= '0';
--En_in <= '1';
--    wait for 1 ns;
--    
--    D_in <= '0';
--En_in <= '1';
--    wait for 1 ns;
--    
--    D_in <= '0';
--En_in <= '1';
--    wait for 1 ns;
--    
--    D_in <= '0';
--En_in <= '1';
--    wait for 1 ns;
     



    wait;
  end process;
end D_Latch_tb;
