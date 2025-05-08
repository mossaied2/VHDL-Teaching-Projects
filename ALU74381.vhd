LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY ALU74381 IS 
  PORT (A, B         : in  std_logic_vector(3 downto 0);
        S            : in  std_logic_vector(2 downto 0);
        Y            : out std_logic_vector(3 downto 0));
END ALU74381;

architecture behavior of ALU74381 is 
begin 
process(A, B, S)
begin 
 case S is                    --abbcdefg
  when "000" =>  Y <= "0000";
  when "001" =>  Y <= B-A;
  when "010" =>  Y <= A-B;
  when "011" =>  Y <= A+B;
  when "100" =>  Y <= A xor B;
  when "101" =>  Y <= A or B;
  when "110" =>  Y <= A and B;
  when "111" =>  Y <= "1111";
  when others => Y <= "----"; -- "-" is don't care
 end case;
end process;	
end behavior;   
