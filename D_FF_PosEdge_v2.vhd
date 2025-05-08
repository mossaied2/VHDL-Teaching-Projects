LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
use digital_components.D_Latch_package.all;

ENTITY D_FF_PosEdge_v2 IS 
  PORT (D, clock     : IN STD_LOGIC;
        Q, Q_bar     : OUT STD_LOGIC);
END  D_FF_PosEdge_v2;

architecture behavior of D_FF_PosEdge_v2 is 

signal Q1, Q1_bar : std_logic;
signal O1, S, R, O4 : std_logic;
--signal O1 : std_logic ; 
--signal O2 : std_logic ='0';
--signal O3 : std_logic ='0';
--signal O4 : std_logic ='0'; 
begin 

Q <= Q1;
Q_bar <= Q1_bar;

O1 <= S nand O4;
S <= O1 nand clock;
R <= (S nand clock) nand O4;
O4 <= D nand R;

--D_Latch1 : D_Latch  port map (O2, O3, Q, Q_bar);
Q1 <= S nand Q1_bar;
Q1_bar <= Q1 nand R;

end behavior;    