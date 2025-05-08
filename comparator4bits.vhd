LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
use digital_components.comparator1bits_package.all;

ENTITY comparator4bits IS 
  PORT (A, B               : IN STD_LOGIC_vector(3 downto 0);
        AeqB, AltB, AgtB   : OUT STD_LOGIC);
END comparator4bits;

architecture behavior of comparator4bits is 
signal E, L, G : std_logic_vector(3 downto 0);
begin

comparator1bit_0 : comparator1bits port map (A(0), B(0), E(0), L(0), G(0));
comparator1bit_1 : comparator1bits port map (A(1), B(1), E(1), L(1), G(1));
comparator1bit_2 : comparator1bits port map (A(2), B(2), E(2), L(2), G(2));
comparator1bit_3 : comparator1bits port map (A(3), B(3), E(3), L(3), G(3));

AeqB <= E(3) and E(2) and E(1) and E(0);
AltB <= L(3) or (E(3) and L(2)) or (E(3) and E(2) and L(1)) or (E(3) and E(2) and E(1) and L(0));
AgtB <= G(3) or (E(3) and G(2)) or (E(3) and E(2) and G(1)) or (E(3) and E(2) and E(1) and G(0));

end behavior; 
