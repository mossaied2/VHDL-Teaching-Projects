LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY CarryLookahead IS 
  PORT (p, g            : in  STD_LOGIC_vector(3 downto 0);
        c1, c2, c3, c4  : out std_logic);
END CarryLookahead;

architecture behavior of CarryLookahead is

begin 

c1 <= g(0);
c2 <= g(1) or (p(1) and g(0));
c3 <= g(2) or (p(2) and g(1)) or (p(2) and p(1) and g(0));
c4 <= g(3) or (p(3) and g(2)) or (p(3) and p(2) and g(1)) or (p(3) and p(2) and p(1) and g(0));

end behavior;