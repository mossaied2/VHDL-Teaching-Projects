LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mutliplier_2bits_v1 IS 
  PORT (A, B : IN STD_LOGIC_vector(1 downto 0);
        C    : out STD_LOGIC_vector(3 downto 0));
END mutliplier_2bits_v1;

architecture behavioral of mutliplier_2bits_v1 is 
begin 

C(3) <= A(1) and A(0) and B(1) and B(0);

C(2) <= (A(1) and (not A(0)) and B(1)) or (A(1) and (not B(0)) and B(1));

C(1) <= (A(1) and (not B(1)) and B(0)) or 
        (A(1) and not A(0) and B(0)) or 
        (A(0) and B(1) and not B(0)) or 
        (not A(1) and A(0) and B(1));

C(0) <= A(0) and B(0);

end behavioral;
