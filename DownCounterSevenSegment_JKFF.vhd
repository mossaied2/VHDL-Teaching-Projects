LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
use digital_components.jk_FF_package.all;

entity DownCounterSevenSegment_JKFF is 
port (reset, clk: in std_logic;
      a,b,c,d,e,f,g : out std_logic);
end DownCounterSevenSegment_JKFF;

architecture structural of DownCounterSevenSegment_JKFF is 
signal QA, QA_bar, QB, QB_bar: std_logic; 
begin 

JKFFA : JK_FF port map (QB_bar, QB_bar, clk, reset, QA, QA_bar);
JKFFB : JK_FF port map ('1',    '1',    clk, reset, QB, QB_bar); 

a <= QB_bar or QA;
b <= '1';
c <= QA_bar or QB;
d <= QB_bar or QA;
e <= QB_bar;
f <= QA_bar and QB_bar;
g <= QA;

end structural;
