LIBRARY ieee;
USE ieee.std_logic_1164.all;
--library digital_components;
--use digital_components.fullAdder_package.all;

ENTITY LookaheadSubtractor IS 
  PORT (x, y          : in  STD_LOGIC_vector(3 downto 0);
        s             : out std_logic_vector(3 downto 0));
END LookaheadSubtractor;

architecture behavior of LookaheadSubtractor is
signal carrySignal : std_logic_vector(4 downto 0); 
signal x_inv : std_logic_vector (3 downto 0);
signal p : std_logic_vector(3 downto 0); 
signal g : std_logic_vector(3 downto 0); 
begin 

G3: for i in 0 to 3 generate
    x_inv(i) <= not x(i);
    p(i)     <= x_inv(i) xor y(i);
    g(i)     <= x_inv(i) and y(i);   
end generate;

carrySignal(0) <= '0';
G2: for i in 1 to 4 generate
    carrySignal(i) <= g(i-1) or (p(i-1) and carrySignal(i-1));
end generate;

s(0) <= x_inv(0) xor y(0) xor '1';
G1: for i in 1 to 3 generate
    s(i) <= x_inv(i) xor y(i) xor carrySignal(i);
    p(i) <= x_inv(i) xor y(i);
    g(i) <= x_inv(i) and y(i);   
end generate;

end behavior;
