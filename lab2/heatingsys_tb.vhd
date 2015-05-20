------------------------------------------------------------------------
-- heating system testbench
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.heat_pkg.all;

entity heatingsys_tb is
end entity;

architecture main of heatingsys_tb is
	signal cur_temp, des_temp : signed(7 downto 0);
	signal reset, clock : std_logic;
	signal heatmode : heat_ty;
begin

  uut : entity work.heatingsys(main)
  port map (
    i_cur_temp   => cur_temp,
    i_des_temp   => des_temp,
    i_reset => reset,
    i_clock => clock,
    o_heatmode => heatmode
  );

  process
  begin
    -- --------------------
    cur_temp <= "00010000"; des_temp <= "00000000"; clock <= '0'; 
    wait for 10 ns;
    -- --------------------
    cur_temp <= "00010000"; des_temp <= "00000000"; clock <= '0'; reset <= '1';
    wait for 10 ns;
    -- --------------------
    cur_temp <= "00000000"; des_temp <= "00000000"; clock <= '1'; reset <= '0';
    wait for 10 ns;
    -- --------------------
  end process;

end architecture;
