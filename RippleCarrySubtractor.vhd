LIBRARY ieee;
USE ieee.std_logic_1164.all;
library digital_components;
use digital_components.fullAdder_package.all;

ENTITY RippleCarrySubtractor IS 
  PORT (A, B          : IN  STD_LOGIC_vector(3 downto 0);
        s             : out std_logic_vector(3 downto 0));
END RippleCarrySubtractor;

architecture behavior of RippleCarrySubtractor is
signal ripple_carry, B_in : std_logic_vector(3 downto 0); 
begin 

G2: for i in 0 to 3 generate
    B_in(i) <= not B(i);
end generate;

--fullAdder1  : fullAdder port map (A(0),  B_in(0),  '1',             ripple_carry(0), s(0));
--fullAdder2  : fullAdder port map (A(1),  B_in(1),  ripple_carry(0), ripple_carry(1), s(1));
--fullAdder3  : fullAdder port map (A(2),  B_in(2),  ripple_carry(1), ripple_carry(2), s(2));
--fullAdder4  : fullAdder port map (A(3),  B_in(3),  ripple_carry(2), ripple_carry(3), s(3));

--G2: for i in 0 to 3 generate
--    B_in(i) <= not B(i);
--end generate;

fullAdder0  : fullAdder port map (A(0),  B_in(0),  '1',               ripple_carry(0), s(0));
  G1: for i in 1 to 3 generate
      fullAdders  : fullAdder port map (A(i),  B_in(i),  ripple_carry(i-1), ripple_carry(i), s(i));
  end generate;


end behavior;
