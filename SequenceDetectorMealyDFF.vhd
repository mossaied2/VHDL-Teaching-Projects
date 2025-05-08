LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
use digital_components.D_FF_PosEdge_package.all;

entity SequenceDetectorMealy_DFF is 
port ( X, reset, clk: in std_logic;
       Y : out std_logic);
end SequenceDetectorMealy_DFF;

architecture structural of SequenceDetectorMealy_DFF is 
signal Q, Q_bar, D: std_logic; 
begin 

D <= X;

DFF : D_FF port map (D, clk, Q, Q_bar);

Y <= X and Q;

end structural;
