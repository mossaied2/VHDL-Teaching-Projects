LIBRARY ieee;
USE ieee.std_logic_1164.all;
--library digital_components;
--use digital_components.fullAdder_package.all;

ENTITY RippleCarryAdder_v2 IS 
  PORT (x, y          : in  STD_LOGIC_vector(3 downto 0);
        s             : out std_logic_vector(3 downto 0);
        c             : out STD_LOGIC);
END RippleCarryAdder_v2;

architecture behavior of RippleCarryAdder_v2 is
signal carrySignal : std_logic_vector(4 downto 0); 
signal p : std_logic_vector(3 downto 0); 
signal g : std_logic_vector(3 downto 0); 
begin 

carrySignal(0) <= '0';
G1: for i in 0 to 3 generate
    s(i) <= x(i) xor y(i) xor carrySignal(i);
    p(i) <= x(i) xor y(i);
    g(i) <= x(i) and y(i);   
end generate;

G2: for i in 1 to 4 generate
    carrySignal(i) <= (p(i-1) and carrySignal(i-1)) or g(i-1);
end generate;


c <= carrySignal(4);
end behavior;
