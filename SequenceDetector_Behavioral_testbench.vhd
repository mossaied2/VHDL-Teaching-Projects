library IEEE;
use IEEE.std_logic_1164.all;
 
entity SequenceDetector_Behavioral_testbench is
-- empty
end SequenceDetector_Behavioral_testbench; 

architecture SequenceDetector_Behavioral_tb of SequenceDetector_Behavioral_testbench is

-- DUT component
component SequenceDetector_Behavioral is
port ( X, reset, clk: in std_logic;
       Y : out std_logic);
end component;

signal X_in : std_logic;
signal clk_in : std_logic := '0';
signal reset_in : std_logic := '0';
signal Y_out :  std_logic;

begin

  -- Connect DUT
  DUT: SequenceDetector_Behavioral port map(X_in, reset_in, clk_in, Y_out);

  -- Process for generating the clock
  clk_in <= not clk_in after 1 ns;

  process
  begin

--X_in <= '0'; 
    --reset_in <= '1';
    --wait for 2 ns; 
X_in <= '0'; 
    --reset_in <= '0';
    wait for 2 ns;

X_in <= '1'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;
X_in <= '0'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;
X_in <= '0'; 
    wait for 2 ns;
X_in <= '0'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;
X_in <= '0'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;
X_in <= '0'; 
    wait for 2 ns;
X_in <= '0'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;
X_in <= '1'; 
    wait for 2 ns;



    assert false report "Test done." severity note;
    wait;
  end process;
end SequenceDetector_Behavioral_tb;
