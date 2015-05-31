------------------------------------------------------------------------
-- fir test bench
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.fir_synth_pkg.all;

entity fir_tb is
end entity;

------------------------------------------------------------------------

architecture low_pass of fir_tb is
	signal i_data, o_data : word;
	signal clock : std_logic;
  
begin

	test : entity work.fir (avg)
	port map (
		i_data => i_data,
		o_data => o_data,
		clk => clock
	);
	
process begin
	clock <= '0';
	wait for 10 ns;
	clock <= '1';
	wait for 10 ns;
end process;

process begin
	wait for 20 ns;
	i_data <= x"0000";
	wait for 20 ns;
	i_data <= x"0001";
	wait for 20 ns;
	i_data <= x"0000";
end process;  

end architecture;
------------------------------------------------------------------------

