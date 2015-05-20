library ieee;
use ieee.std_logic_1164.all;

entity carry is
       port ( i_x, i_y, i_cin : in std_logic;
              o_cout :       out std_logic
       );
end carry;

architecture main of carry is
  signal a, b, c, d : std_logic;
	begin
		a <= i_x and i_y;
		b <= i_x and i_cin;
		c <= i_y and i_cin;
		d <= a or b;
		o_cout <= d or c;
end architecture;



