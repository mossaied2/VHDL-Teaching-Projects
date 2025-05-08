LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
USE digital_components.mux2to1_package.all;

ENTITY muxQ2to1_v2 IS 
  PORT (A, B  : IN STD_LOGIC_vector(3 downto 0);
        S     : IN STD_LOGIC;
        E     : IN STD_LOGIC;
        Y     : OUT STD_LOGIC_vector(3 downto 0));
END muxQ2to1_v2;

architecture behavior of muxQ2to1_v2 is 

begin
 
mux2x1_package1: mux2to1 port map (A(0), B(0), S, E, Y(0));
mux2x1_package2: mux2to1 port map (A(1), B(1), S, E, Y(1));
mux2x1_package3: mux2to1 port map (A(2), B(2), S, E, Y(2));
mux2x1_package4: mux2to1 port map (A(3), B(3), S, E, Y(3));
	
end behavior;    
