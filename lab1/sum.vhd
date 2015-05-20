library ieee;
use ieee.std_logic_1164.all;

entity sum is
       port ( i_a, i_b, i_cin : in std_logic;
              o_sum :       out std_logic
       );
end sum;

architecture main of sum is
  signal d : std_logic;
	begin
		d <= i_b xor i_a;
		o_sum <= i_cin xor d;
  
end architecture;

-- question 1
	-- There are two xor gates on the diagram with i_cin going into input one of the first xor and (i_b and i_a) going into the second xor gate. The xor outputs into o_sum.

