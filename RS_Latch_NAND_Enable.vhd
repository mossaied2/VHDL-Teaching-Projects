
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY RS_Latch_NAND_Enable IS 
  PORT (S, R, En     : IN STD_LOGIC;
        Q, Q_bar     : INOUT STD_LOGIC);
END  RS_Latch_NAND_Enable;

architecture behavior of RS_Latch_NAND_Enable is 

signal QQ, QQ_bar, SEn, REn : std_logic;
begin 
--      QQ <= R nor QQ_bar;
--      QQ_bar <= S nor QQ;
--      Q <= QQ;
--      Q_bar <= QQ_bar;
SEn <= S nand En;
REn <= R nand En;
      Q <= SEn nand Q_bar;
      Q_bar <= REn nand Q;

end behavior;    
