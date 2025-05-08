library ieee;
use ieee.std_logic_1164.all;

entity mux2to1 is
  PORT (I0, I1  : IN STD_LOGIC;
        S       : IN STD_LOGIC;
	E       : in std_logic;
        Y       : OUT STD_LOGIC);
end mux2to1;

architecture behavioral of mux2to1 is 

signal SE : std_logic_vector (1 downto 0);

begin 

SE <= S & E;
  with SE select 
      Y <= I0 when "00",
           I1 when "10",
           '0' when others;

end behavioral;