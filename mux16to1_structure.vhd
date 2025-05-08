LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
use digital_components.mux4to1_package.all; 

ENTITY mux16to1_structure IS 
  PORT (w  : IN STD_LOGIC_vector(15 downto 0);
        s  : IN STD_LOGIC_vector(3 downto 0);
        f  : OUT STD_LOGIC);
END mux16to1_structure;

architecture structure of mux16to1_structure is 

signal m : STD_LOGIC_vector (3 downto 0);
begin 

  G1: for i in 0 to 3 generate
     muxs : mux4to1 port map (w(i*4), w(i*4+1), w(i*4+2), w(i*4+3), s(1 downto 0), m(i));
  end generate;
  --mux0 : mux4to1 port map (w(0), w(1), w(2), w(3), s(1 downto 0), m(0));
  --mux1 : mux4to1 port map (w(4), w(5), w(6), w(7), s(1 downto 0), m(1));
  --mux2 : mux4to1 port map (w(8), w(9), w(10), w(11),  s(1 downto 0), m(2));
  --mux3 : mux4to1 port map (w(12), w(13), w(14), w(15),  s(1 downto 0), m(3));
  
  mux4 : mux4to1 port map (m(0), m(1), m(2), m(3), s(3 downto 2), f);
end structure;