LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY priority_encoder4to2_v2 IS 
  PORT (w        : IN std_logic_vector(3 downto 0);
        y        : OUT std_logic_vector(1 downto 0);
	I        : out std_logic);
END priority_encoder4to2_v2;

architecture behavior of priority_encoder4to2_v2 is 
begin 
process (w)
begin 
         if w(3)='1' then y <= "11"; 
    elsif w(2)='1' then y <= "10"; 
    elsif w(1)='1' then y <= "01"; 
    else                  y <= "00";
    end if;
end process;	
I <= '0' when w = "0000" else '1';
end behavior;    
