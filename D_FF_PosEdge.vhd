LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
use digital_components.D_Latch_package.all;

ENTITY D_FF_PosEdge IS 
  PORT (D, clock     : IN STD_LOGIC;
        Q, Q_bar     : OUT STD_LOGIC);
END  D_FF_PosEdge;

architecture behavior of D_FF_PosEdge is 

signal Q1, Q1_bar : std_logic;
signal clk_bar : std_logic;
begin 
clk_bar <= not clock;

D_Latch1 : D_Latch port map (D, clk_bar, Q1, Q1_bar);
D_Latch2 : D_Latch port map (Q1, clock, Q, Q_bar);

end behavior;    
