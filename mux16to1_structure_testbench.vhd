-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity mux16to1_structure_testbench is
-- empty
end mux16to1_structure_testbench; 

architecture mux16to1_structure_tb of mux16to1_structure_testbench is

-- DUT component
component mux16to1_structure is
port(w  : IN STD_LOGIC_vector(15 downto 0);
        s  : IN STD_LOGIC_vector(3 downto 0);
        f  : OUT STD_LOGIC);
end component;

signal w_in : STD_LOGIC_vector(15 downto 0);
signal s_in: std_logic_vector(3 downto 0);
signal f_out : STD_LOGIC;

begin

  -- Connect DUT
  DUT: mux16to1_structure port map(w_in, s_in, f_out);

  process
  begin
    w_in <= "0000000000000001";
    s_in <= "0000";
    wait for 1 ns;
    assert(f_out='0') report "Fail 0/0" severity error;
  
    w_in <= "0000000000000010";
    s_in <= "0001";
    wait for 1 ns;
    assert(f_out='0') report "Fail 0/0" severity error;
  
    w_in <= "0000000000000100";
    s_in <= "0010";
    wait for 1 ns;
    assert(f_out='0') report "Fail 0/0" severity error;
  
    w_in <= "0000000000001000";
    s_in <= "0011";
    wait for 1 ns;
    assert(f_out='0') report "Fail 0/0" severity error;
  
    w_in <= "0000000000010000";
    s_in <= "0100";
    wait for 1 ns;
    assert(f_out='0') report "Fail 0/0" severity error;
  
    w_in <= "0000000000100000";
    s_in <= "0101";
    wait for 1 ns;
    assert(f_out='0') report "Fail 0/0" severity error;
  
    w_in <= "0000000001000000";
    s_in <= "0110";
    wait for 1 ns;
    assert(f_out='0') report "Fail 0/0" severity error;
  
    w_in <= "0000000010000000";
    s_in <= "0111";
    wait for 1 ns;
    assert(f_out='0') report "Fail 0/0" severity error;
  
    w_in <= "0000000100000000";
    s_in <= "1000";
    wait for 1 ns;
    assert(f_out='0') report "Fail 0/0" severity error;
  
    w_in <= "0000001000000000";
    s_in <= "1001";
    wait for 1 ns;
    assert(f_out='0') report "Fail 0/0" severity error;
  
    w_in <= "0000010000000000";
    s_in <= "1010";
    wait for 1 ns;
    assert(f_out='0') report "Fail 0/0" severity error;
  
    w_in <= "0000100000000000";
    s_in <= "1011";
    wait for 1 ns;
    assert(f_out='0') report "Fail 0/0" severity error;
  
    w_in <= "0001000000000000";
    s_in <= "1100";
    wait for 1 ns;
    assert(f_out='0') report "Fail 0/0" severity error;
  
    w_in <= "0010000000000000";
    s_in <= "1101";
    wait for 1 ns;
    assert(f_out='0') report "Fail 0/0" severity error;
  
    w_in <= "0100000000000000";
    s_in <= "1110";
    wait for 1 ns;
    assert(f_out='0') report "Fail 0/0" severity error;
  
    w_in <= "1000000000000000";
    s_in <= "1111";
    wait for 1 ns;
    assert(f_out='0') report "Fail 0/0" severity error;

    assert false report "Test done." severity note;
    wait;
  end process;
end mux16to1_structure_tb;

