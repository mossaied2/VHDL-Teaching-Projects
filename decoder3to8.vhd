LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY decoder3to8 IS 
  PORT (x, y, z                         : in std_logic;
        D0, D1, D2, D3, D4, D5, D6, D7  : out std_logic);
END decoder3to8;

architecture behavior of decoder3to8 is
 
begin 
      D0 <= not x  and  not y  and  not z;
      D1 <= not x  and  not y  and      z;
      D2 <= not x  and      y  and  not z;
      D3 <= not x  and      y  and      z;
      D4 <=     x  and  not y  and  not z;
      D5 <=     x  and  not y  and      z;
      D6 <=     x  and      y  and  not z;
      D7 <=     x  and      y  and      z;
end behavior; 
