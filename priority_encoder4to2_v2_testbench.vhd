
-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity priority_encoder4to2_v2_testbench is
-- empty
end priority_encoder4to2_v2_testbench; 

architecture priority_encoder4to2_v2_tb of priority_encoder4to2_v2_testbench is

-- DUT component
component priority_encoder4to2_v2 is
  PORT (w        : in std_logic_vector(3 downto 0);
        y        : out std_logic_vector(1 downto 0);
	V        : out std_logic);
end component;

signal V_out: std_logic;
signal w_in: std_logic_vector(3 downto 0);
signal y_out: std_logic_vector(1 downto 0);

begin

  -- Connect DUT
  DUT: priority_encoder4to2_v2 port map(w_in, y_out, V_out);

  process
  begin
    w_in <= "0000";
    wait for 1 ns;
    w_in <= "0100";
    wait for 1 ns;
    w_in <= "1000";
    wait for 1 ns;
    w_in <= "1000";
    wait for 1 ns;
    w_in <= "0010";
    wait for 1 ns;
    w_in <= "0001";
    wait for 1 ns;
    w_in <= "0010";
    wait for 1 ns;
    w_in <= "0000";
    wait for 1 ns;
  
   
    -- Clear inputs
    w_in <= "0000";

    assert false report "Test done." severity note;
    wait;
  end process;
end priority_encoder4to2_v2_tb;
