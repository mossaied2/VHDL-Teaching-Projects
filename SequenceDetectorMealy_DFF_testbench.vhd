library IEEE;
use IEEE.std_logic_1164.all;
 
entity SequenceDetectorMealy_DFF_testbench is
-- empty
end SequenceDetectorMealy_DFF_testbench; 

architecture SequenceDetectorMealy_DFF_tb of SequenceDetectorMealy_DFF_testbench is

-- DUT component
component SequenceDetectorMealy_DFF is
port ( X, reset, clk: in std_logic;
       Y : out std_logic);
end component;

signal X_in : std_logic;
signal clk_in : std_logic := '0';
signal reset_in : std_logic := '0';
signal Y_out :  std_logic;

begin

  -- Connect DUT
  DUT: SequenceDetectorMealy_DFF port map(X_in, reset_in, clk_in, Y_out);

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
end SequenceDetectorMealy_DFF_tb;
