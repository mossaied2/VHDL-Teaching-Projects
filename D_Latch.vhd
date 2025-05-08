LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY D_Latch IS 
  PORT (D, En     : IN STD_LOGIC;
        Q, Q_bar     : OUT STD_LOGIC);
END  D_Latch;

architecture behavior of D_Latch is 

signal QQ, QQ_bar, SEn, REn : std_logic;
begin 

SEn <= D nand En;
REn <= (not D) nand En;
      QQ <= SEn nand QQ_bar;
      QQ_bar <= REn nand QQ;

      Q <= QQ;
      Q_bar <= QQ_bar;

end behavior;    
