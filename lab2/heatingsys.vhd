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
begin

  -- insert your vhdl code here
  change_state : process
  begin
	wait until rising_edge(i_clock);
  	if( i_reset='1' ) then
		o_heatmode <= off;
		state <= off;
	else
		o_heatmode <= state;
	end if;	
  end process;

  checkcond : process (i_des_temp, i_cur_temp)
  begin
  case state is
  	when off =>
		if(i_des_temp-i_cur_temp<5 
		 AND i_des_temp-i_cur_temp>=3) then
			state <= low;
		elsif(i_des_temp-i_cur_temp>=5) then
			state <= high;
		end if;
	when low =>
		if(i_des_temp-i_cur_temp>=7) then
			state <= high;
		elsif(i_cur_temp-i_des_temp>2) then
			state <= off;
		end if;
	when high =>
		if(i_cur_temp-i_des_temp>3) then
			state <= low;
		end if;
	when others =>
		state <= off;
  end case;
  end process;

end main;

-- question 1
  --insert answer here

