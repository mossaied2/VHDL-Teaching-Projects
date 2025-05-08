LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux8to1 IS 
  PORT (I  : IN STD_LOGIC_vector(7 downto 0);
        S               : IN STD_LOGIC_vector(2 downto 0);
        F               : OUT STD_LOGIC);
END mux8to1;

architecture behavior of mux8to1 is 

begin 
  
  with S select 
      F <= I(0) when "000", 
           I(1) when "001",
           I(2) when "010",
           I(3) when "011",
           I(4) when "100",
           I(5) when "101",
           I(6) when "110",
           I(7) when others; 
	
end behavior;    
