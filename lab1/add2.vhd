library ieee;
use ieee.std_logic_1164.all;

-- insert entity definition here
entity add2 is
	port ( a, b : in std_logic_vector(1 downto 0);
		cin : in std_logic;
		sum : out std_logic_vector (1 downto 0 );
		cout: out std_logic
	);
end add2;

-- insert architecture here
architecture main of add2 is
	signal temp : std_logic;
	begin

		fa0 : entity work.fulladder(main)
			port map (
				i_a => a(0),
				i_b => b(0),
				i_cin => cin,
				o_sum => sum(0),
				o_cout => temp
			);

		fa1 : entity work.fulladder(main)
			port map (
				i_a => a(1),
				i_b => b(1),
				i_cin => temp,
				o_sum => sum(1),
				o_cout => cout
			);
end main;

