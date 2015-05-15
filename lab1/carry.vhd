library ieee;
use ieee.std_logic_1164.all;

-- insert your code here
entity carry is
	port( i_x, i_y, i_cin : in std_logic;
	      o_cout : 		out std_logic
	);
end carry;

architecture main of carry is
	signal xandy, xandc, yandc : std_logic ;
begin
	xandy <= i_x AND i_y;
	xandc <= i_x AND i_cin;
	yandc <= i_y AND i_cin;
	o_cout <= xandy OR xandc OR yandc;
end architecture;


