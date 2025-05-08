LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
use digital_components.RippleCarryAdder_package.all; 

ENTITY BCDAdder_v1 IS 
  PORT (x,y  : IN STD_LOGIC_vector(3 downto 0);
        s    : out STD_LOGIC_vector(3 downto 0); -- s(0) = s1, s(1) = s2, s(2) = s4, s(3) = s8 
        c    : OUT STD_LOGIC);
END BCDAdder_v1;

architecture structure of BCDAdder_v1 is 
signal s_signal : STD_LOGIC_vector (3 downto 0);
signal z8, z4, z2, z1 : STD_LOGIC;
signal k : std_logic;
begin 

  Adder1 : RippleCarryAdder port map (x, y, s_signal, k);

  z8 <= s_signal(3);
  z4 <= s_signal(2);
  z2 <= s_signal(1);
  z1 <= s_signal(0);	 

  c <= (z8 and z4) or (z8 and z2) or k;
  s(0) <= z1;
  s(1) <= ((not k) and (not z8) and z2) or (z8 and z4 and (not z2))  or (k and (not z2));
  s(2) <= ((not z8) and z4)       or (z4 and z2)               or (k and (not z2));
  s(3) <= (k and z2)              or (z8 and (not z4) and (not z2));

end structure;