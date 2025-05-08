library IEEE;
use IEEE.std_logic_1164.all;

entity BCD_Excess3_converter_testbench is
-- empty
end BCD_Excess3_converter_testbench; 

architecture BCD_Excess3_converter_tb of BCD_Excess3_converter_testbench is
-- DUT component
--component BCD_Excess3_converter is
component BCD_Excess3_converter_Garettee is
  PORT (A, B, C, D  : IN STD_LOGIC;
        w, x, y, z  : out STD_LOGIC);
end component;
signal A_in, B_in, C_in, D_in, w_in, x_in, y_in, z_in : std_logic;
begin
  -- Connect DUT
  --DUT: BCD_Excess3_converter port map(A_in, B_in, C_in, D_in, w_in, x_in, y_in, z_in);
  DUT: BCD_Excess3_converter_Garettee port map(A_in, B_in, C_in, D_in, w_in, x_in, y_in, z_in);
  process
  begin    
    A_in <= '0';
    B_in <= '0';
    C_in <= '0';
    D_in <= '0';
    wait for 1 ns; 
    A_in <= '0';
    B_in <= '0';
    C_in <= '0';
    D_in <= '1';
    wait for 1 ns;
    A_in <= '0';
    B_in <= '0';
    C_in <= '1';
    D_in <= '0';
    wait for 1 ns;
    A_in <= '0';
    B_in <= '0';
    C_in <= '1';
    D_in <= '1';
    wait for 1 ns;
-----------------------------------
    A_in <= '0';
    B_in <= '1';
    C_in <= '0';
    D_in <= '0';
    wait for 1 ns; 
    A_in <= '0';
    B_in <= '1';
    C_in <= '0';
    D_in <= '1';
    wait for 1 ns;
    A_in <= '0';
    B_in <= '1';
    C_in <= '1';
    D_in <= '0';
    wait for 1 ns;
    A_in <= '0';
    B_in <= '1';
    C_in <= '1';
    D_in <= '1';
    wait for 1 ns;
-----------------------------------
    A_in <= '1';
    B_in <= '0';
    C_in <= '0';
    D_in <= '0';
    wait for 1 ns; 
    A_in <= '1';
    B_in <= '0';
    C_in <= '0';
    D_in <= '1';
    wait for 1 ns;
    A_in <= '1';
    B_in <= '0';
    C_in <= '1';
    D_in <= '0';
    wait for 1 ns;
    A_in <= '1';
    B_in <= '0';
    C_in <= '1';
    D_in <= '1';
    wait for 1 ns;
-----------------------------------
    A_in <= '1';
    B_in <= '1';
    C_in <= '0';
    D_in <= '0';
    wait for 1 ns; 
    A_in <= '1';
    B_in <= '1';
    C_in <= '0';
    D_in <= '1';
    wait for 1 ns;
    A_in <= '1';
    B_in <= '1';
    C_in <= '1';
    D_in <= '0';
    wait for 1 ns;
    A_in <= '1';
    B_in <= '1';
    C_in <= '1';
    D_in <= '1';
    wait for 1 ns;
     
    wait;
  end process;
end BCD_Excess3_converter_tb;
