library ieee; 
use ieee.std_logic_1164.all;  
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fullAdder_trent is  
  port( 
		x, y, ci : in std_logic;  
		co, s : out std_logic
  );
end fullAdder_trent;  
 
 architecture Behavioral of fullAdder_trent is   
 signal temp: std_logic_vector(1 downto 0);
 begin  
   process(x,y,ci)
   begin 
 temp <= ('0'& x) + ('0'& y) +('0'& ci);
   end process;
   S <= temp(0);
   co <= temp(1);
 end Behavioral;