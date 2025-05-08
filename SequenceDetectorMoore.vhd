LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity SequenceDetectorMoore is 
port ( X, reset, clk: in std_logic;
       Y : out std_logic);
end SequenceDetectorMoore;

architecture Behavioral of SequenceDetectorMoore is 
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
	                        	state <= "01";
	                    	end if;
			when "01" => 
				y <= '0';
				if x = '0' then
	                         	state <= "00";
				else
	                        	state <= "10";
	                    	end if;
			when "10" => 
				y <= '1';
				if x = '0' then
	                         	state <= "00";
				else
	                        	state <= "10";
	                    	end if;
			when others =>
				y <= '0';
	                        state <= "00";
		end case;
	end if;
end process state_diagram;
end Behavioral;
