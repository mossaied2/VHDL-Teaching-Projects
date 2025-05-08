LIBRARY ieee;
USE ieee.std_logic_1164.all;
library digital_components;
use digital_components.fullAdder_v1_package.all;

ENTITY BinaryAdder_4bits IS 
  PORT (A, B          : IN  STD_LOGIC_vector(3 downto 0);
        Cin           : in std_logic;
        S             : out std_logic_vector(3 downto 0);
        C             : out STD_LOGIC);
END BinaryAdder_4bits;

architecture structural of BinaryAdder_4bits is
signal ripple_carry : std_logic_vector(3 downto 0); 
begin 

fullAdder1  : fullAdder_v1_structure port map (A(0),  B(0),  Cin,               ripple_carry(0), S(0));
  G1: for i in 1 to 3 generate
         fullAdders  : fullAdder_v1_structure port map (A(i),  B(i),  ripple_carry(i-1), ripple_carry(i), S(i));
  end generate;
C <= ripple_carry(3);

end structural;