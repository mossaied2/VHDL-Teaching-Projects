LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
use digital_components.RippleCarryAdder_package.all; 

ENTITY Multiplier4bits IS 
  PORT (A, B : IN STD_LOGIC_vector(3 downto 0);
        m    : out STD_LOGIC_vector(7 downto 0));
END Multiplier4bits;

architecture structure of Multiplier4bits is 
signal AB : STD_LOGIC_vector (15 downto 0);
signal In0, In1, In2, In3, In4, In5 : std_logic_vector (3 downto 0);
signal s0, s1, s2 : std_logic_vector (3 downto 0);
signal c0, c1, c2 : std_logic;
begin 
--------------------------------------------------------------------------
-- AB = [A0B0 A0B1 A0B2 A0B3            A1B0 A1B1 A1B2 A1B3             A2B0 A2B1 A2B2 A2B3             A3B0 A3B1 A3B2 A3B3 ]
G1: for i in 0 to 3 generate
        G2 : for j in 0 to 3 generate 
             AB(i*4+j) <= A(i) and B(j);
        end generate;
end generate; 
--------------------------------------------------------------------------
m(0) <= AB(0);
--------------------------------------------------------------------------
In0(0) <= AB(1);
In0(1) <= AB(2);
In0(2) <= AB(3);
In0(3) <= '0'; 
In1(0) <= AB(4);
In1(1) <= AB(5);
In1(2) <= AB(6);
In1(3) <= AB(7); 
Adder1 : RippleCarryAdder port map (In0, In1, s0, c0);
m(1) <= s0(0);
--------------------------------------------------------------------------
In2(0) <= s0(1);
In2(1) <= s0(2);
In2(2) <= s0(3);
In2(3) <= c0; 
In3(0) <= AB(8);
In3(1) <= AB(9);
In3(2) <= AB(10);
In3(3) <= AB(11); 
Adder2 : RippleCarryAdder port map (In2, In3, s1, c1);
m(2) <= s1(0);
--------------------------------------------------------------------------
In4(0) <= s1(1);
In4(1) <= s1(2);
In4(2) <= s1(3);
In4(3) <= c1; 
In5(0) <= AB(12);
In5(1) <= AB(13);
In5(2) <= AB(14);
In5(3) <= AB(15); 
Adder3 : RippleCarryAdder port map (In4, In5, s2, c2);
m(6 downto 3) <= s2(3 downto 0);
m(7) <= c2;

end structure;
