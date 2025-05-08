LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity Final_VHDL_Code2_Incomplete is 
port ( X, reset, clk: in std_logic;
       Y : out std_logic);
end Final_VHDL_Code2_Incomplete;

architecture Behavioral of Final_VHDL_Code2_Incomplete is 
signal state : bit_vector(1 downto 0) := "00";
begin 
state_diagram : process(clk, reset) begin 
	if reset = '1' then 
		Y <= '0';
	elsif rising_edge(clk) then 
		case state is
			when "00" => 
				-- put some statements here ?????????
			when "01" => 
				-- put some statements here ?????????
			when "10" => 
				-- put some statements here ?????????
			when "11" => 
				-- put some statements here ?????????
		end case;
	end if;
end process state_diagram;
end Behavioral;

