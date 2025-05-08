library IEEE;
use IEEE.std_logic_1164.all;
entity RS_Latch_NAND_Enable_testbench is
-- empty
end RS_Latch_NAND_Enable_testbench; 
architecture RS_Latch_NAND_Enable_tb of RS_Latch_NAND_Enable_testbench is
-- DUT component
component RS_Latch_NAND_Enable is
  PORT (S, R, En     : IN STD_LOGIC;
        Q, Q_bar     : INOUT STD_LOGIC);
end component;
signal S_in, R_in, En_in, Q_out, Q_bar_out: std_logic;
begin
  -- Connect DUT
  DUT: RS_Latch_NAND_Enable port map(S_in, R_in, En_in, Q_out, Q_bar_out);
  process
  begin   
    --S_in <= '0';
    --R_in <= '0';
    --wait for 1 ns; 
    S_in <= '1';
    R_in <= '1';
En_in <= '1';
    wait for 1 ns; 
    S_in <= '0';
    R_in <= '1';
En_in <= '1';
    wait for 1 ns;
    S_in <= '0';
    R_in <= '0';
En_in <= '1';
    wait for 1 ns;
    S_in <= '1';
    R_in <= '0';
En_in <= '1';
    wait for 1 ns;
    S_in <= '0';
    R_in <= '0';
En_in <= '1';
    wait for 1 ns;
    S_in <= '1';
    R_in <= '0';
En_in <= '1';
    wait for 1 ns;
     

    S_in <= '1';
    R_in <= '1';
En_in <= '0';
    wait for 1 ns; 
    S_in <= '0';
    R_in <= '1';
En_in <= '0';
    wait for 1 ns;
    S_in <= '0';
    R_in <= '0';
En_in <= '0';
    wait for 1 ns;
    S_in <= '1';
    R_in <= '0';
En_in <= '0';
    wait for 1 ns;
    S_in <= '0';
    R_in <= '0';
En_in <= '0';
    wait for 1 ns;
    S_in <= '1';
    R_in <= '0';
En_in <= '0';
    wait for 1 ns;

    wait;
  end process;
end RS_Latch_NAND_Enable_tb;
