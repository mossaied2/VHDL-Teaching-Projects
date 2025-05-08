LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux4to1 IS 
  PORT (I  : IN STD_LOGIC_vector(3 downto 0);
        s  : IN STD_LOGIC_vector(1 downto 0);
        F  : OUT STD_LOGIC);
END mux4to1;

architecture behavior of mux4to1 is 
begin 

  with s select 
      f <= I(0) when "00",
           I(1) when "01",
           I(2) when "10",
           I(3) when others;
	
end behavior;    
