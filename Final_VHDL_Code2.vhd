LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity Final_VHDL_Code2 is 
port ( X, reset, clk: in std_logic;
       Y : out std_logic);
end Final_VHDL_Code2;

architecture Behavioral of Final_VHDL_Code2 is 
signal state : bit_vector(1 downto 0) := "00";
begin 
state_diagram : process(clk, reset) begin 
	if reset = '1' then 
		Y <= '0';
	elsif rising_edge(clk) then 
		case state is
			when "00" => 
				y <= '0';
				if x = '0' then
	                         	state <= "00";
				else
	                        	state <= "10";
	                    	end if;

			when "01" => 
				y <= '0';
				if x = '0' then
	                         	state <= "00";
	                    	else
	                        	state <= "10";
	                    	end if;

			when "10" => 
				y <= '0';
				if x = '0' then
	                         	state <= "01";
	                    	else
	                        	state <= "11";
	                    	end if;

			when "11" => 
				y <= '1';
				if x = '0' then
	                         	state <= "01";
	                    	else
	                        	state <= "11";
	                    	end if;
		end case;
	end if;
end process state_diagram;
end Behavioral;

