LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
use digital_components.RippleCarryAdder_package.all; 

ENTITY multiplier_4bitx3bit IS 
  PORT (B : IN STD_LOGIC_vector(3 downto 0);
        A : IN STD_LOGIC_vector(2 downto 0);
        m : out STD_LOGIC_vector(6 downto 0));
END multiplier_4bitx3bit;

architecture structure of multiplier_4bitx3bit is 
signal AB : STD_LOGIC_vector (11 downto 0);
signal In0, In1, In2, In3, In4, In5 : std_logic_vector (3 downto 0);
signal s0, s1, s2 : std_logic_vector (3 downto 0);
signal c0, c1, c2 : std_logic;
begin 
--------------------------------------------------------------------------
--       m(0)  In0(0)  In0(1)  In0(2)          In1(0)   In1(1)   In1(2)    In1(3)           In3(0)  In3(1)   In3(2)   In3(3)
--        0      1       2       3               4        5        6         7                8       9        10       11
-- AB = [A0B0   A0B1   A0B2     A0B3            A1B0     A1B1     A1B2      A1B3             A2B0    A2B1     A2B2     A2B3]
G1: for i in 0 to 2 generate
        G2 : for j in 0 to 3 generate 
             AB(i*4+j) <= A(i) and B(j);
        end generate;
end generate; 
--------------------------------------------------------------------------
m(0) <= AB(0);
--------------------------------------------------------------------------
--In0(0) <= AB(1);
--In0(1) <= AB(2);
--In0(2) <= AB(3);
In0(2 downto 0) <= AB(3 downto 1);
In0(3) <= '0'; 

--In1(0) <= AB(4);
--In1(1) <= AB(5);
--In1(2) <= AB(6);
--In1(3) <= AB(7); 
In1(3 downto 0) <= AB(7 downto 4);
Adder1 : RippleCarryAdder port map (In0, In1, s0, c0);
m(1) <= s0(0);
--------------------------------------------------------------------------
--In2(0) <= s0(1);
--In2(1) <= s0(2);
--In2(2) <= s0(3);
In2(2 downto 0) <= s0(3 downto 1);
In2(3) <= c0; 

--In3(0) <= AB(8);
--In3(1) <= AB(9);
--In3(2) <= AB(10);
--In3(3) <= AB(11);
In3(3 downto 0) <= AB(11 downto 8); 
Adder2 : RippleCarryAdder port map (In2, In3, s1, c1);
--m(2) <= s1(0);
--m(3) <= s1(1);
--m(4) <= s1(2);
--m(5) <= s1(3);
m(5 downto 2) <= s1(3 downto 0);
m(6) <= c1;

end structure;