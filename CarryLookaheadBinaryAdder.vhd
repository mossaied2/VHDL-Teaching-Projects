LIBRARY ieee;
USE ieee.std_logic_1164.all;
library digital_components;
use digital_components.halfAdder_package.all;
use digital_components.CarryLookahead_package.all;

ENTITY CarryLookaheadBinaryAdder IS 
  PORT (A, B          : in  STD_LOGIC_vector(3 downto 0);
        s             : out std_logic_vector(3 downto 0);
        c             : out STD_LOGIC);
END CarryLookaheadBinaryAdder;

architecture structural of CarryLookaheadBinaryAdder is
signal carrySignal : std_logic_vector(4 downto 0); 
signal p : std_logic_vector(3 downto 0); 
signal g : std_logic_vector(3 downto 0); 
begin 

carrySignal(0) <= '0';

carrylookahead_instance : CarryLookahead port map (p, g, carrySignal(1), carrySignal(2), carrySignal(3), carrySignal(4));

G1: for i in 0 to 3 generate
HalfAdders: halfAdder port map (A(i), B(i), g(i), p(i));
end generate;

G2: for i in 0 to 3 generate
    s(i) <= p(i) xor carrySignal(i);   
end generate;

c <= carrySignal(4);

end structural;
