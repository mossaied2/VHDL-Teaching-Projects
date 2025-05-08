LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY binarytobcdencoder IS 
  PORT (binary          : in std_logic_vector(3 downto 0);
        bcd : out std_logic_vector(4 downto 0));
END binarytobcdencoder;

architecture behavior of binarytobcdencoder is 
begin 
process(binary)
begin 
 case binary is                    --abbcdefg
  when "0000" => bcd <= "00000";
  when "0001" => bcd <= "00001";
  when "0010" => bcd <= "00010";
  when "0011" => bcd <= "00011";
  when "0100" => bcd <= "00100";
  when "0101" => bcd <= "00101";
  when "0110" => bcd <= "00110";
  when "0111" => bcd <= "00111";
  when "1000" => bcd <= "01000";
  when "1001" => bcd <= "01001";

  when "1010" => bcd <= "10000";
  when "1011" => bcd <= "10001";
  when "1100" => bcd <= "10010";
  when "1101" => bcd <= "10011";
  when "1110" => bcd <= "10100";
  when "1111" => bcd <= "10101";
  when others => bcd <= "-----"; -- "-" is don't care
 end case;
end process;	
end behavior;    
