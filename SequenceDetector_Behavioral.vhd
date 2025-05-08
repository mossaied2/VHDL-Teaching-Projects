LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity SequenceDetector_Behavioral is 
port ( X, reset, clk: in std_logic;
       Y : out std_logic);
end SequenceDetector_Behavioral;

architecture Behavioral of SequenceDetector_Behavioral is 
--signal state : std_logic := '0';
type states is ('0','1');
signal state : states := '0';
begin 
state_diagram : process(clk, reset) begin 
	if reset = '1' then 
		Y <= '0';
	elsif rising_edge(clk) then 
		case state is
			when '0' => 
				if x = '0' then
					y <= '0';
	                         	state <= '0';
				else
	                         	y <= '0';
	                        	state <= '1';
	                    	end if;
			when '1' => 
				if x = '0' then
	                         	y <= '0';
	                         	state <= '0';
	                    	else
	                        	y <= '1';
	                        	state <= '1';
	                    	end if;
		end case;
	end if;
end process state_diagram;
end Behavioral;


--signal Xt_1, Xt_2, history: std_logic:= '0'; 
--history <= X and Xt_1 and Xt_2;
--proc : process(clk, reset) begin 
--	if reset = '1' then 
--		Y <= '0';
--	elsif rising_edge(clk) then 
--		if history = '1' then
-- 			Y <= '1';
--		else Y <= '0';
--		end if;
--	end if;   
--
--	Xt_2 <= Xt_1;
--	Xt_1 <= X;
--end process;	