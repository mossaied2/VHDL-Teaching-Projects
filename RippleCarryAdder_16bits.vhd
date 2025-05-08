LIBRARY ieee;
USE ieee.std_logic_1164.all;
library digital_components;
use digital_components.fullAdder_v1_package.all;

ENTITY RippleCarryAdder_16bits IS 
  PORT (A, B          : IN  STD_LOGIC_vector(15 downto 0);
        s             : out std_logic_vector(15 downto 0);
        c             : out STD_LOGIC);
END RippleCarryAdder_16bits;

architecture structural of RippleCarryAdder_16bits is
signal ripple_carry : std_logic_vector(15 downto 0); 
begin 

--fullAdder0  : fullAdder port map (A(0),  B(0),  '0',             ripple_carry(0), s(0));
--fullAdder1  : fullAdder port map (A(1),  B(1),  ripple_carry(0), ripple_carry(1), s(1));
--fullAdder2  : fullAdder port map (A(2),  B(2),  ripple_carry(1), ripple_carry(2), s(2));
--fullAdder3  : fullAdder port map (A(3),  B(3),  ripple_carry(2), c,               s(3));

fullAdder1  : fullAdder_v1_structure port map (A(0),  B(0),  '0',               ripple_carry(0), s(0));
  G1: for i in 1 to 15 generate
         fullAdders  : fullAdder_v1_structure port map (A(i),  B(i),  ripple_carry(i-1), ripple_carry(i), s(i));
  end generate;
c <= ripple_carry(15);

end structural;
