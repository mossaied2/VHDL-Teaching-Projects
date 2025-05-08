LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
use digital_components.jk_FF_package.all;

entity UpDownCounter_JKFF is 
port ( X , reset, clk: in std_logic;
       Y : out std_logic_vector(1 downto 0));
end UpDownCounter_JKFF;

architecture structural of UpDownCounter_JKFF is 

signal QA, QA_bar, QB, QB_bar, JA, KA, JB, KB : std_logic; 

begin 

JA <= X xor QB;
KA <= X xor QB;
JB <= '1';
KB <= '1';

JKFFA : JK_FF port map (JA, KA, clk, reset, QA, QA_bar);
JKFFB : JK_FF port map (JB, KB, clk, reset, QB, QB_bar); 

Y(0) <= QB;
Y(1) <= QA;

end structural;
