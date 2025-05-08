LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux2to1_v3 IS 
  PORT (w0, w1          : IN  STD_LOGIC;
        s               : IN  STD_LOGIC;
        f               : OUT STD_LOGIC);
END mux2to1_v3;

architecture behavior of mux2to1_v3 is 
begin 
process(w0, w1, s)
begin 
 case s is 
  when '0' => f <= w0;
  when others => f <= w1;
 end case;
end process;	
end behavior;    
