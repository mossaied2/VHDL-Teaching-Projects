-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity decoder4to16_structure_testbench is
-- empty
end decoder4to16_structure_testbench; 

architecture decoder4to16_structure_tb of decoder4to16_structure_testbench is

-- DUT component
component decoder4to16_structure is
  PORT (w  : in std_logic_vector(3 downto 0);
        En : in std_logic;
        y  : out std_logic_vector(15 downto 0));
end component;

signal w_in : STD_LOGIC_vector(3 downto 0);
signal En_in: std_logic;
signal y_out : STD_LOGIC_vector(15 downto 0);

begin

  -- Connect DUT
  DUT: decoder4to16_structure port map(w_in, En_in, y_out);

  process
  begin
    w_in <=  "0000";
    En_in <= '1';
    wait for 1 ns;
    
    w_in <=  "0001";
    En_in <= '1';
    wait for 1 ns;
    
    w_in <=  "0010";
    En_in <= '1';
    wait for 1 ns;
    
    w_in <=  "0011";
    En_in <= '1';
    wait for 1 ns;
    
    w_in <=  "0100";
    En_in <= '1';
    wait for 1 ns;
    
    w_in <=  "0101";
    En_in <= '1';
    wait for 1 ns;
    
    w_in <=  "0110";
    En_in <= '1';
    wait for 1 ns;
    
    w_in <=  "0111";
    En_in <= '1';
    wait for 1 ns;
    
    w_in <=  "1000";
    En_in <= '1';
    wait for 1 ns;
    
    w_in <=  "1001";
    En_in <= '1';
    wait for 1 ns;
     
    w_in <=  "1010";
    En_in <= '1';
    wait for 1 ns;
    
    w_in <=  "1011";
    En_in <= '1';
    wait for 1 ns;
    
    w_in <=  "1100";
    En_in <= '1';
    wait for 1 ns;
     
    w_in <=  "1101";
    En_in <= '1';
    wait for 1 ns;
     
    w_in <=  "1110";
    En_in <= '1';
    wait for 1 ns;
    
    w_in <=  "1111";
    En_in <= '1';
    wait for 1 ns;
     
    w_in <=  "0001";
    En_in <= '0';
    wait for 1 ns;
      
    w_in <=  "0101";
    En_in <= '0';
    wait for 1 ns;
     
    w_in <=  "0101";
    En_in <= '0';
    wait for 1 ns;
      
    w_in <=  "0011";
    En_in <= '0';
    wait for 1 ns;
      
    w_in <=  "1001";
    En_in <= '0';
    wait for 1 ns;
    
    assert false report "Test done." severity note;
    wait;
  end process;
end decoder4to16_structure_tb;

