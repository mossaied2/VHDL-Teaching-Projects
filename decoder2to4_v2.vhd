LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY decoder2to4_compact IS 
  PORT (w  : in std_logic_vector(1 downto 0);       -- x=w(0) and y=w(1)
        En : in std_logic;
        y  : out std_logic_vector(3 downto 0));     -- D0=y(0) D1=y(1) D2=y(2) D3=y(3) 
END decoder2to4_compact;

architecture behavior of decoder2to4_compact is

signal wEn : std_logic_vector(2 downto 0);
 
begin 
	wEn <= w & En; -- & is the concatenation
	with wEn select 
		y <= "1000" when "001",
		     "0100" when "011",
		     "0010" when "101",
		     "0001" when "111",
		     "0000" when others; -- when En=0 and then whatever w is, just assign "0000" to the output 
end behavior; 