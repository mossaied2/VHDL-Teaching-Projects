
-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity bcdto7segmentencoder_testbench is
-- empty
end bcdto7segmentencoder_testbench; 

architecture bcdto7segmentencoder_tb of bcdto7segmentencoder_testbench is

-- DUT component
component bcdto7segmentencoder is
PORT (bcd          : in std_logic_vector(3 downto 0);
      sevenSegment : out std_logic_vector(6 downto 0));
end component;

signal bcd_in: std_logic_vector(3 downto 0);
signal sevenSegment_out: std_logic_vector(6 downto 0);

begin

  -- Connect DUT
  DUT: bcdto7segmentencoder port map(bcd_in, sevenSegment_out);

  process
  begin
    bcd_in <= "0000";
    wait for 1 ns;
    bcd_in <= "0001";
    wait for 1 ns;
    bcd_in <= "0010";
    wait for 1 ns;
    bcd_in <= "0011";
    wait for 1 ns;
    bcd_in <= "0100";
    wait for 1 ns;
    bcd_in <= "0101";
    wait for 1 ns;
    bcd_in <= "0110";
    wait for 1 ns;
    bcd_in <= "0111";
    wait for 1 ns;
    bcd_in <= "1000";
    wait for 1 ns;
    bcd_in <= "1001";
    wait for 1 ns;
  
   
    -- Clear inputs
    bcd_in <= "0000";

    assert false report "Test done." severity note;
    wait;
  end process;
end bcdto7segmentencoder_tb;
