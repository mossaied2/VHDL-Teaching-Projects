LIBRARY ieee;
USE ieee.std_logic_1164.all;

--library digital_components;
--use digital_components.D_FF_PosEdge_package.all;

ENTITY JK_FF IS 
  PORT (j, k, clk, reset   : IN  STD_LOGIC;
        Q, Q_bar           : out  STD_LOGIC);
END JK_FF;

architecture structure of JK_FF is
signal QQ: std_logic; -- := '0'
signal QQ_bar: std_logic;  -- := '1'
--signal j2, k2, D : std_logic; 
begin 

--j2 <= Q_bar_internal and j and (not(reset));
--k2 <= Q_internal and (not(k)) and (not (reset));
--
--D <= j2 or k2;
--D_FF_PosEdge1  : D_FF_PosEdge port map (D,  clk,  Q_internal, Q_bar_internal);
--Q <= Q_internal;
--Q_bar <= Q_bar_internal;


JK_proc : process(clk, reset) begin 
	if reset = '1' then 
		QQ <= '0';
		QQ_bar <= '1';
	elsif rising_edge(clk) then 
		if j = '0' and k = '1' then
 			QQ <= '0';
			QQ_bar <= '1';
		elsif j = '1' and k = '0' then
			QQ <= '1';
			QQ_bar <= '0';  
		elsif j = '1' and k = '1' then 
			QQ <= not QQ;
			QQ_bar <= not QQ_bar;
		end if;
	end if;   
end process;

	Q <= QQ;
	Q_bar <= QQ_bar;	

end structure;