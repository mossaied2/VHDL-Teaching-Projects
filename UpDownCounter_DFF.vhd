LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
use digital_components.D_FF_PosEdge_package.all;

entity UpDownCounter_DFF is 
port ( X , reset, clk: in std_logic;
       Y : out std_logic_vector(1 downto 0));
end UpDownCounter_DFF;

architecture structural of UpDownCounter_DFF is 

signal QA, QA_bar, QB, QB_bar, DA, DB : std_logic; 

begin 

DA <= (X xor QA xor QB) and (not reset);
DB <= QB_bar and (not reset);

DFFA : D_FF port map (DA, clk, QA, QA_bar);
DFFB : D_FF port map (DB, clk, QB, QB_bar); 

Y(0) <= QB;
Y(1) <= QA;

end structural;