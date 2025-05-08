LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

library digital_components;
use digital_components.comparator1bits_package.all; 

ENTITY comparatorNbits_v3_structure IS 
PORT (A, B  : IN STD_LOGIC_vector(15 downto 0);
AeqB, AltB, AgtB  : OUT STD_LOGIC);
END comparatorNbits_v3_structure;

architecture structure of comparatorNbits_v3_structure is 

signal AeqB_vector, AltB_vector, AgtB_vector : STD_LOGIC_vector (15 downto 0);

begin 
  G1: for i in 0 to 15 generate
     comparators: comparator1bits port map (A(i), B(i), AeqB_vector(i), AltB_vector(i), AgtB_vector(i));
  end generate;
  
--comparator: comparator1bits port map (A, B, AeqB_vector, AltB_vector, AgtB_vector);
--comparators0: comparator1bits port map (A(0), B(0), AeqB_vector(0), AltB_vector(0), AgtB_vector(0));
--comparators1: comparator1bits port map (A(1), B(1), AeqB_vector(1), AltB_vector(1), AgtB_vector(1));
--comparators2: comparator1bits port map (A(2), B(2), AeqB_vector(2), AltB_vector(2), AgtB_vector(2));
--comparators3: comparator1bits port map (A(3), B(3), AeqB_vector(3), AltB_vector(3), AgtB_vector(3));
--comparators4: comparator1bits port map (A(4), B(4), AeqB_vector(4), AltB_vector(4), AgtB_vector(4));
--comparators5: comparator1bits port map (A(5), B(5), AeqB_vector(5), AltB_vector(5), AgtB_vector(5));
--comparators6: comparator1bits port map (A(6), B(6), AeqB_vector(6), AltB_vector(6), AgtB_vector(6));
--comparators7: comparator1bits port map (A(7), B(7), AeqB_vector(7), AltB_vector(7), AgtB_vector(7));
--comparators8: comparator1bits port map (A(8), B(8), AeqB_vector(8), AltB_vector(8), AgtB_vector(8));
--comparators9: comparator1bits port map (A(9), B(9), AeqB_vector(9), AltB_vector(9), AgtB_vector(9));
--comparators10: comparator1bits port map (A(10), B(10), AeqB_vector(10), AltB_vector(10), AgtB_vector(10));
--comparators11: comparator1bits port map (A(11), B(11), AeqB_vector(11), AltB_vector(11), AgtB_vector(11));
--comparators12: comparator1bits port map (A(12), B(12), AeqB_vector(12), AltB_vector(12), AgtB_vector(12));
--comparators13: comparator1bits port map (A(13), B(13), AeqB_vector(13), AltB_vector(13), AgtB_vector(13));
--comparators14: comparator1bits port map (A(14), B(14), AeqB_vector(14), AltB_vector(14), AgtB_vector(14));
--comparators15: comparator1bits port map (A(15), B(15), AeqB_vector(15), AltB_vector(15), AgtB_vector(15));

  AgtB <= '1' when AgtB_vector > AltB_vector else '0';
  AltB <= '1' when AgtB_vector < AltB_vector else '0';
  AeqB <= '1' when AgtB_vector = AltB_vector else '0';

end structure;
