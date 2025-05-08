LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
use digital_components.D_Latch_package.all;

ENTITY D_FF IS 
  PORT (D, clock     : IN STD_LOGIC;
        Q, Q_bar     : out STD_LOGIC);
END  D_FF;

architecture behavior of D_FF is 

signal Q1, Q1_bar : std_logic;
signal clk_bar : std_logic;
begin 
D_Latch_slave  : D_Latch port map (Q1, clock, Q, Q_bar);      -- positive edge 
D_Latch_master : D_Latch port map (D, clk_bar, Q1, Q1_bar);
clk_bar <= not clock;
end behavior;    
