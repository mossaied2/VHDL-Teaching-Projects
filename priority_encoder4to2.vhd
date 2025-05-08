LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY priority_encoder4to2 IS 
  PORT (w        : IN std_logic_vector(3 downto 0);
        y        : OUT std_logic_vector(1 downto 0);
	V        : out std_logic);
END priority_encoder4to2;

architecture behavior of priority_encoder4to2 is 
begin 
 
      y <= "01" when w = "0010" else
	   "10" when w = "0100" else
           "11" when w = "1000" else
           "00" ;
          	
      V <= '0' when w = "0000" else
            '1';
	
end behavior;    