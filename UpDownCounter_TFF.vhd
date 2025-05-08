LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
use digital_components.TFF_package.all;

entity UpDownCounter_TFF is 
port ( X , reset, clk: in std_logic;
       Y : out std_logic_vector(1 downto 0));
end UpDownCounter_TFF;

architecture structural of UpDownCounter_TFF is 

signal QA, QA_bar, QB, QB_bar, TA, TB : std_logic; 

begin 

TA <= X xor QB;
TB <= '1';

TFFA : T_FF port map (TA, clk, reset, QA, QA_bar);
TFFB : T_FF port map (TB, clk, reset, QB, QB_bar);

Y(0) <= QB;
Y(1) <= QA;

end structural;
