LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
use digital_components.D_FF_PosEdge_package.all;

entity UpCounterSevenSegment_DFF is 
port ( reset, clk: in std_logic;
       a,b,c,d,e,f,g : out std_logic);
end UpCounterSevenSegment_DFF;

architecture structural of UpCounterSevenSegment_DFF is 
signal QA, QA_bar, QB, QB_bar, DA, DB : std_logic; 
begin 

DA <= (QA xor QB) and (not reset);
DB <= (QB_bar) and (not reset);

DFFA : D_FF port map (DA, clk, QA, QA_bar);
DFFB : D_FF port map (DB, clk, QB, QB_bar); 

a <= QB_bar or QA;
b <= '1';
c <= QA_bar or QB;
d <= QB_bar or QA;
e <= QB_bar;
f <= QA_bar and QB_bar;
g <= QA;

end structural;
