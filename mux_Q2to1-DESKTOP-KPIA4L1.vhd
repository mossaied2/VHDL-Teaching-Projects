LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY muxQ2to1 IS 
  PORT (A, B  : IN STD_LOGIC_vector(3 downto 0);
        S     : IN STD_LOGIC;
        E     : IN STD_LOGIC;
        Y     : OUT STD_LOGIC_vector(3 downto 0));
END muxQ2to1;

architecture behavior of muxQ2to1 is 

signal SE : std_logic_vector(1 downto 0);

begin
 
  SE <= S & E;
  with SE select 
      Y <= A when "00",
           B when "10",
           "0000" when others;
	
end behavior;    
