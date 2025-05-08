LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY RS_Latch_NOR IS 
  PORT (S, R         : IN STD_LOGIC;
        Q, Q_bar     : INOUT STD_LOGIC);
END  RS_Latch_NOR;

architecture behavior of RS_Latch_NOR is 

signal QQ, QQ_bar : std_logic;
begin 
--      QQ <= R nor QQ_bar;
--      QQ_bar <= S nor QQ;
--      Q <= QQ;
--      Q_bar <= QQ_bar;
      Q <= R nor Q_bar;
      Q_bar <= S nor Q;

end behavior;    

