-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity UpDownCounter_DFF_testbench is
-- empty
end UpDownCounter_DFF_testbench; 

architecture UpDownCounter_DFF_tb of UpDownCounter_DFF_testbench is

-- DUT component
component UpDownCounter_DFF is
port ( X , reset, clk: in std_logic;
       Y : out std_logic_vector(1 downto 0));
end component;

signal X_in : STD_LOGIC;
signal clk_in : std_logic := '0';
signal reset_in : std_logic := '0';
signal Y_out :  std_logic_vector(1 downto 0);

begin

  -- Connect DUT
  DUT: UpDownCounter_DFF port map(X_in, reset_in, clk_in, Y_out);

  -- Process for generating the clock
  clk_in <= not clk_in after 1 ns;

  process
  begin

    X_in <= '1';reset_in <= '1';
    wait for 2 ns; 
    X_in <= '1';reset_in <= '1';
    wait for 2 ns; 
    X_in <= '1';reset_in <= '1';
    wait for 2 ns; 
    X_in <= '1';reset_in <= '1';
    wait for 2 ns; 
    X_in <= '1';reset_in <= '0';
    wait for 8 ns;
    X_in <= '0';reset_in <= '0';
    wait for 8 ns;

    assert false report "Test done." severity note;
    wait;
  end process;
end UpDownCounter_DFF_tb;

