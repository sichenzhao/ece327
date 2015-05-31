library ieee;
use ieee.std_logic_1164.all;

package heat_pkg is
  subtype heat_ty is std_logic_vector(1 downto 0);
  constant off  : heat_ty := "00";
  constant low  : heat_ty := "01";
  constant high : heat_ty := "11";
end heat_pkg;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.heat_pkg.all;

entity heatingsys is                           -- finite state machine
  port(i_cur_temp       : in signed(7 downto 0); -- current temp
       i_des_temp       : in signed(7 downto 0); -- desired temp
       i_reset          : in std_logic;          -- reset
       i_clock          : in std_logic;          -- clock
       o_heatmode       : out heat_ty            -- mode
      );
end heatingsys;

architecture main of heatingsys is
  signal state : heat_ty;
  signal current_s, next_s : heat_ty;  
begin

-- Clock to reset and to switch state
process (i_clock, i_reset)
begin
	if (i_reset = '1') then
		current_s <= off;
	elsif (rising_edge(i_clock)) then
		current_s <= next_s;
	end if;
end process;

-- Do the calculation for a state change 
process (current_s, i_clock) begin
	if rising_edge(i_clock) then
		case current_s is
			when off =>
				if ((i_des_temp - i_cur_temp) >=3 and (i_des_temp - i_cur_temp) <5) then
					next_s <= low;
				elsif ((i_des_temp - i_cur_temp) >= 5) then
					next_s <= high;
				end if;
			when low =>
				if ((i_cur_temp - i_des_temp) >3) then
					next_s <= off;
				elsif ((i_des_temp - i_cur_temp) >= 7) then
					next_s <= high;
				end if;
			when high =>
				if ((i_cur_temp - i_des_temp) >= 3) then
					next_s <= low;
				end if;
			when others =>
				next_s <= off;
		end case;
	end if;
end process;

-- Process to change state
process (current_s) begin
		o_heatmode <= current_s;
end process;

end main;

-- question 1
  -- ANDs: 6, NOTs: 10, ORs: 6, MUXs: 1, SUBs: 2

