LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux2to1_v2 IS 
  PORT (w0, w1          : IN  STD_LOGIC;
        s               : IN  STD_LOGIC;
        f               : OUT STD_LOGIC);
END mux2to1_v2;

architecture behavior of mux2to1_v2 is 
begin 
process(w0, w1, s)
begin 
if s='0' then f <= w0;
else f <= w1;
end if;
end process;	
end behavior;    
