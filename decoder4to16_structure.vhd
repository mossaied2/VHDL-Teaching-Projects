LIBRARY ieee;
USE ieee.std_logic_1164.all;

library digital_components;
use digital_components.decoder2to4_package.all; 

ENTITY decoder4to16_structure IS 
  PORT (w  : in std_logic_vector(3 downto 0);
        En : in std_logic;
        y  : out std_logic_vector(15 downto 0));
END decoder4to16_structure;

architecture structure of decoder4to16_structure is 

signal m : STD_LOGIC_vector (3 downto 0);
begin 

-- implementation I 
  --decoder_s1  : decoder2to4 port map (w(3 downto 2), En,   m(0),  m(1),  m(2),  m(3));
  --decoder_s20 : decoder2to4 port map (w(1 downto 0), m(0), y(0),  y(1),  y(2),  y(3));
  --decoder_s21 : decoder2to4 port map (w(1 downto 0), m(1), y(4),  y(5),  y(6),  y(7));
  --decoder_s22 : decoder2to4 port map (w(1 downto 0), m(2), y(8),  y(9),  y(10), y(11));
  --decoder_s23 : decoder2to4 port map (w(1 downto 0), m(3), y(12), y(13), y(14), y(15));

-- implementation II
  --decoder_s1  : decoder2to4 port map (w(3 downto 2), En,   m(0),  m(1),  m(2),  m(3)); 
  --G1: for i in 0 to 3 generate
  --  decoders_s2 : decoder2to4 port map (w(1 downto 0), m(i), y(i*4),  y(i*4+1),  y(i*4+2),  y(i*4+3));
  --end generate;
  
-- implementation III
  G1: for i in 0 to 3 generate
     decoders_s2 : decoder2to4 port map (w(1 downto 0), m(i), y(i*4),  y(i*4+1),  y(i*4+2),  y(i*4+3));
     G2: if i=3 generate 
     decoder_s1 : decoder2to4 port map (w(3 downto 2), En,   m(0),  m(1),  m(2),  m(3));
     end generate; 
  end generate;

end structure;