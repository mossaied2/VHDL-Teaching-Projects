LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
use digital_components.nand_gate_package.all;


ENTITY xor_gate_stephanie IS
   PORT (a, b        : IN STD_LOGIC;
         y           : OUT STD_LOGIC);
END xor_gate_stephanie;

architecture behavior of xor_gate_stephanie is
signal m, n, A_bar, B_bar: STD_LOGIC;
begin
    not1  : nand_gate port map (a, a, A_bar); -- NOT
    not2  : nand_gate port map (b, b, B_bar); -- NOT
    nand1 : nand_gate port map (a, B_bar, m);
    nand2 : nand_gate port map (A_bar, b, n);
    nand3 : nand_gate port map (m, n, y);
end behavior;  
