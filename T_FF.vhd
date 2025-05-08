LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
use digital_components.JK_FF_package.all;

ENTITY T_FF IS 
  PORT (T, clk, reset          : IN  STD_LOGIC;
        Q, Q_bar        : out  STD_LOGIC);
END T_FF;

architecture structure of T_FF is
begin 

JK_FF1  : JK_FF port map (T,  T, clk, reset, Q, Q_bar);

end structure;
