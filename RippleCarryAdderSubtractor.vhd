LIBRARY ieee;
USE ieee.std_logic_1164.all;
library digital_components;
use digital_components.fullAdder_package.all;

ENTITY RippleCarryAdderSubtractor IS 
  PORT (A, B          : IN  STD_LOGIC_vector(3 downto 0);
        M             : in std_logic;
        c             : out std_logic;
        s             : out std_logic_vector(3 downto 0));
END RippleCarryAdderSubtractor;

architecture behavior of RippleCarryAdderSubtractor is
signal ripple_carry, B_in : std_logic_vector(3 downto 0); 
begin 

G2: for i in 0 to 3 generate
    B_in(i) <= M xor B(i);
end generate;

fullAdder0  : fullAdder port map (A(0),  B_in(0),  M, ripple_carry(0), s(0));
  G1: for i in 1 to 3 generate
      fullAdders  : fullAdder port map (A(i),  B_in(i),  ripple_carry(i-1), ripple_carry(i), s(i));
  end generate;

c <= ripple_carry(3);
end behavior;
