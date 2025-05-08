LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bcdto7segmentencoder IS 
  PORT (bcd          : in std_logic_vector(3 downto 0);
        sevenSegment : out std_logic_vector(6 downto 0));
END bcdto7segmentencoder;

architecture behavior of bcdto7segmentencoder is 
begin 
process(bcd)
begin 
 case bcd is                    --abbcdefg
  when "0000" => sevenSegment <= "1111110";
  when "0001" => sevenSegment <= "0110000";
  when "0010" => sevenSegment <= "1101101";
  when "0011" => sevenSegment <= "1111001";
  when "0100" => sevenSegment <= "0110011";
  when "0101" => sevenSegment <= "1011011";
  when "0110" => sevenSegment <= "1011111";
  when "0111" => sevenSegment <= "1110000";
  when "1000" => sevenSegment <= "1111111";
  when "1001" => sevenSegment <= "1110011";
  when others => sevenSegment <= "-------"; -- "-" is don't care
 end case;
end process;	
end behavior;    
