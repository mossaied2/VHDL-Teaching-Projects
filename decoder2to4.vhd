LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY decoder2to4 IS 
  PORT (x, y            : in std_logic;
        En              : in std_logic;
        D0, D1, D2, D3  : out std_logic);
END decoder2to4;

architecture behavior of decoder2to4 is
 
begin 
      D0 <=  not x  and not y  and   En;
      D1 <=  not x  and     y  and   En;
      D2 <=      x  and not y  and   En;
      D3 <=      x  and     y  and   En;
end behavior; 