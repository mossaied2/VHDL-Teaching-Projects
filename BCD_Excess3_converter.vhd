LIBRARY ieee;
USE ieee.std_logic_1164.all; 

ENTITY BCD_Excess3_converter IS 
  PORT (A, B, C, D  : IN STD_LOGIC;
        w, x, y, z  : out STD_LOGIC);
END BCD_Excess3_converter;

architecture behavioral of BCD_Excess3_converter is 
begin 

  w <= A or (B and C) or (B and D);
  x <= (not B and C) or (not B and D) or (B and not C and not D);
  y <= C xnor D;
  z <= not D;

end behavioral;
