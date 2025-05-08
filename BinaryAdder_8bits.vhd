LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
use digital_components.BinaryAdder_4bits_package.all; 

entity BinaryAdder_8bits is 
port (A , B : in  std_logic_vector (7 downto 0);
      S     : out std_logic_vector (7 downto 0);
      C     : out std_logic);
end BinaryAdder_8bits;

Architecture Structural of BinaryAdder_8bits is 
signal C3 : std_logic;
begin

Adder1 : BinaryAdder_4bits port map (A(3 downto 0), B(3 downto 0), '0', S(3 downto 0), C3);
Adder2 : BinaryAdder_4bits port map (A(7 downto 4), B(7 downto 4),  C3, S(7 downto 4), C);

end Structural; 