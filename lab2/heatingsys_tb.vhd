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
 begin
end architecture;

architecture main of heatingsys_tb is
 signal i_cur_temp, i_des_temp : signed (7 downto 0);
 signal i_reset, i_clock : std_logic;
 signal o_heatmode : heat_ty;
begin


 ut : entity work.heatingsys(main)
 port map (
    i_cur_temp   => i_cur_temp,
    i_des_temp   => i_des_temp,
    i_reset => i_reset,
    i_clock => i_clock,
    o_heatmode =>o_heatmode
 );

 process
 begin
	i_clock <= '0';
	-- test if reset is working
	wait for 8 ns;
	i_reset <= '1';
	i_clock <= '1';
	wait for 8 ns;
	i_reset <= '0';
	i_clock <= '1';
	wait for 8 ns;
  
	-- off to low: 3 =< (des_tmp - cur_tmp) < 5
	i_clock <= '0';
	wait for 8 ns;
	i_cur_temp <= "00000000" ; 
	i_des_temp <= "00000100"; 
	i_clock <= '1';
	wait for 8 ns;

	-- low to high: 7 =< (des_tmp - cur_tmp)
	i_clock <= '0';
	wait for 8 ns;
	i_cur_temp <= "00000100"; 
	i_des_temp <= "00001100"; 
	i_clock <= '1';
	wait for 8 ns;
  
	-- high to low: 3 < (cur_tmp - des_tmp)
	i_clock <= '0';
	wait for 8 ns;
	i_cur_temp <= "00001100" ; 
	i_des_temp <= "00001000"; 
	i_clock <= '1';
	wait for 8 ns;

	-- low to high: 7 =< (des_tmp - cur_tmp)
	i_clock <= '0';
	wait for 8 ns;
	i_cur_temp <= "00000101"; 
	i_des_temp <= "00010000"; 
	i_clock <= '1';
	wait for 8 ns;

	-- off to high: 5 =< (des_tmp - cur_tmp)
	i_clock <= '0';
	wait for 8 ns;
	i_cur_temp <= "00000001"; 
	i_des_temp <= "00001000"; 
	i_clock <= '1';
	wait for 8 ns;

 end process;

end architecture;
