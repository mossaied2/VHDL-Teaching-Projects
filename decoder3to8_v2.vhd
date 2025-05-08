LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY decoder3to8_compact IS 
  PORT (w  : in std_logic_vector(2 downto 0);       -- x=w(0) y=w(1) z=w(2)
        En : in std_logic;
        D  : out std_logic_vector(7 downto 0));     -- D0=D(0) D1=D(1) D2=D(2) .... D7=D(7) 
END decoder3to8_compact;

architecture behavior of decoder3to8_compact is

signal wEn : std_logic_vector(3 downto 0);
 
begin 
	wEn <= w & En; -- & is the concatenation
	with wEn select 
		D <= "10000000" when "0001",
		     "01000000" when "0011",
		     "00100000" when "0101",
		     "00010000" when "0111",
		     "00001000" when "1001",
		     "00000100" when "1011",
		     "00000010" when "1101",
		     "00000001" when "1111",
		     "00000000" when others; -- when En=0 and then whatever w is, just assign "0000" to the output 
end behavior; 
