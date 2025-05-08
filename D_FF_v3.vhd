LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity DFF_v3 is 
    port (clk, reset, D: in std_logic; 
          Q, Q_bar: out std_logic);
end entity;

architecture baviour of DFF_v3 is 
begin
    DFF_proc : process(clk, reset) begin -- clk, reset this is basocally the sensitivity list 
        if reset = '1' then
            Q <= '0';
	    Q_bar <= '1';
        elsif rising_edge(clk) then -- for negative edge use falling_edge
            Q <= D;
	    Q_bar <= not D;
        end if;
    end process;

end;