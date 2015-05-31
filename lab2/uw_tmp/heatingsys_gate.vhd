
-- 
-- Definition of  heatingsys
-- 
--      Sun May 31 11:51:17 2015
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity heatingsys is 
   port (
      i_cur_temp : IN std_logic_vector (7 DOWNTO 0) ;
      i_des_temp : IN std_logic_vector (7 DOWNTO 0) ;
      i_reset : IN std_logic ;
      i_clock : IN std_logic ;
      o_heatmode : OUT std_logic_vector (1 DOWNTO 0)) ;
end heatingsys ;

architecture main of heatingsys is 
   component select_3_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component sub_8u_8u_8u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component or_6u_6u
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component or_7u_7u
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal o_heatmode_EXMPLR22: std_logic_vector (1 DOWNTO 0) ;
   
   signal next_s: std_logic_vector (1 DOWNTO 0) ;
   
   signal GND, PWR, not_o_heatmode_0, not_rtlc4n711, rtlc4n204, 
      not_rtlc4n204, rtlc4_PS11_n266: std_logic ;
   
   signal rtlc4n332: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc4n390: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc4n434, rtlc4n438, rtlc4n441, not_rtlc4n441, rtlc4n511, 
      not_rtlc4n390_7, rtlc4n513, rtlc4n609, not_rtlc4n609, not_rtlc4n332_2, 
      not_rtlc4n332_1, not_rtlc4n332_0, rtlc4n614, rtlc4n615, rtlc4n616, 
      rtlc4n617, rtlc4n708, not_rtlcn2, rtlc4n711, rtlc4n800, not_rtlcn3, 
      rtlc4n803, rtlc4n894, not_rtlcn4, rtlc4n897, rtlcn2, rtlcn3, rtlcn4, 
      rtlcn33, rtlcn42, not_rtlc4n513, rtlcn46, not_rtlcn53, rtlcn53, 
      not_o_heatmode_1: std_logic ;
   
   signal DANGLING : std_logic_vector (1 downto 0 );

begin
   o_heatmode(1) <= o_heatmode_EXMPLR22(1) ;
   o_heatmode(0) <= o_heatmode_EXMPLR22(0) ;
   GND <= '0' ;
   PWR <= '1' ;
   rtlc4_18_select_0 : select_3_3 port map ( a(2)=>not_o_heatmode_0, a(1)=>
      rtlc4_PS11_n266, a(0)=>o_heatmode_EXMPLR22(1), b(2)=>rtlc4n434, b(1)=>
      rtlc4n438, b(0)=>rtlc4n897, d=>rtlc4n441);
   rtlc4n434 <= rtlc4n617 AND not_rtlc4n204 ;
   rtlc4n438 <= rtlc4n803 AND not_rtlc4n513 ;
   not_rtlc4n441 <= NOT rtlc4n441 ;
   rtlc4_40_sub_1 : sub_8u_8u_8u_0 port map ( cin=>PWR, a(7)=>i_cur_temp(7), 
      a(6)=>i_cur_temp(6), a(5)=>i_cur_temp(5), a(4)=>i_cur_temp(4), a(3)=>
      i_cur_temp(3), a(2)=>i_cur_temp(2), a(1)=>i_cur_temp(1), a(0)=>
      i_cur_temp(0), b(7)=>i_des_temp(7), b(6)=>i_des_temp(6), b(5)=>
      i_des_temp(5), b(4)=>i_des_temp(4), b(3)=>i_des_temp(3), b(2)=>
      i_des_temp(2), b(1)=>i_des_temp(1), b(0)=>i_des_temp(0), d(7)=>
      rtlc4n390(7), d(6)=>rtlc4n390(6), d(5)=>rtlc4n390(5), d(4)=>
      rtlc4n390(4), d(3)=>rtlc4n390(3), d(2)=>rtlc4n390(2), d(1)=>
      rtlc4n390(1), d(0)=>rtlc4n390(0), cout=>DANGLING(0));
   rtlc4_50_sub_2 : sub_8u_8u_8u_0 port map ( cin=>PWR, a(7)=>i_des_temp(7), 
      a(6)=>i_des_temp(6), a(5)=>i_des_temp(5), a(4)=>i_des_temp(4), a(3)=>
      i_des_temp(3), a(2)=>i_des_temp(2), a(1)=>i_des_temp(1), a(0)=>
      i_des_temp(0), b(7)=>i_cur_temp(7), b(6)=>i_cur_temp(6), b(5)=>
      i_cur_temp(5), b(4)=>i_cur_temp(4), b(3)=>i_cur_temp(3), b(2)=>
      i_cur_temp(2), b(1)=>i_cur_temp(1), b(0)=>i_cur_temp(0), d(7)=>
      rtlc4n332(7), d(6)=>rtlc4n332(6), d(5)=>rtlc4n332(5), d(4)=>
      rtlc4n332(4), d(3)=>rtlc4n332(3), d(2)=>rtlc4n332(2), d(1)=>
      rtlc4n332(1), d(0)=>rtlc4n332(0), cout=>DANGLING(1));
   not_rtlc4n711 <= NOT rtlc4n711 ;
   rtlc4n204 <= not_rtlc4n711 AND rtlc4n617 ;
   not_o_heatmode_0 <= NOT o_heatmode_EXMPLR22(0) ;
   rtlc4_158_or_3 : or_6u_6u port map ( a(5)=>rtlc4n390(2), a(4)=>
      rtlc4n390(3), a(3)=>rtlc4n390(4), a(2)=>rtlc4n390(5), a(1)=>
      rtlc4n390(6), a(0)=>rtlc4n390(7), d=>rtlc4n511);
   not_rtlc4n390_7 <= NOT rtlc4n390(7) ;
   rtlc4n513 <= rtlc4n511 AND not_rtlc4n390_7 ;
   rtlc4_168_or_4 : or_5u_5u port map ( a(4)=>rtlc4n332(3), a(3)=>
      rtlc4n332(4), a(2)=>rtlc4n332(5), a(1)=>rtlc4n332(6), a(0)=>
      rtlc4n332(7), d=>rtlc4n609);
   not_rtlc4n609 <= NOT rtlc4n609 ;
   not_rtlc4n332_2 <= NOT rtlc4n332(2) ;
   not_rtlc4n332_1 <= NOT rtlc4n332(1) ;
   not_rtlc4n332_0 <= NOT rtlc4n332(0) ;
   rtlc4n614 <= not_rtlc4n332_1 AND not_rtlc4n332_0 ;
   rtlc4n615 <= not_rtlc4n332_2 OR rtlc4n614 ;
   rtlc4n616 <= not_rtlc4n609 AND rtlc4n615 ;
   rtlc4n617 <= rtlc4n616 OR rtlc4n332(7) ;
   rtlc4n711 <= not_rtlcn2 OR rtlc4n332(7) ;
   rtlc4_189_and_6 : and_3u_3u port map ( a(2)=>rtlc4n332(2), a(1)=>
      rtlc4n332(1), a(0)=>rtlc4n332(0), d=>rtlc4n800);
   rtlc4n803 <= not_rtlcn3 OR rtlc4n332(7) ;
   rtlc4n897 <= not_rtlcn4 OR rtlc4n390(7) ;
   rtlc4n708 <= rtlc4n332(1) AND rtlc4n332(0) ;
   not_rtlcn2 <= NOT rtlcn2 ;
   not_rtlcn3 <= NOT rtlcn3 ;
   rtlc4n894 <= rtlc4n390(1) AND rtlc4n390(0) ;
   not_rtlcn4 <= NOT rtlcn4 ;
   not_rtlc4n204 <= NOT rtlc4n204 ;
   not_rtlc4n513 <= NOT rtlc4n513 ;
   rtlcn46 <= rtlc4_PS11_n266 AND not_rtlc4n513 ;
   rtlcn33 <= rtlcn46 OR not_rtlcn53 ;
   rtlc_57_or_7 : or_3u_3u port map ( a(2)=>o_heatmode_EXMPLR22(1), a(1)=>
      not_o_heatmode_0, a(0)=>not_rtlc4n513, d=>rtlcn42);
   not_rtlcn53 <= NOT rtlcn53 ;
   not_o_heatmode_1 <= NOT o_heatmode_EXMPLR22(1) ;
   rtlcn53 <= rtlc4n204 OR o_heatmode_EXMPLR22(0) ;
   rtlcn3 <= rtlc4n609 OR rtlc4n800 ;
   rtlcn4 <= rtlc4n511 OR rtlc4n894 ;
   rtlc4_PS11_n266 <= not_o_heatmode_1 AND o_heatmode_EXMPLR22(0) ;
   DFFPCE (rtlcn33,GND,GND,not_rtlc4n441,i_clock,next_s(1)) ;
   DFFPCE (rtlcn42,GND,GND,not_rtlc4n441,i_clock,next_s(0)) ;
   DFFPC (next_s(1),GND,i_reset,i_clock,o_heatmode_EXMPLR22(1)) ;
   DFFPC (next_s(0),GND,i_reset,i_clock,o_heatmode_EXMPLR22(0)) ;
   modgen_or_0 : or_7u_7u port map ( a(6)=>rtlc4n332(2), a(5)=>rtlc4n332(3), 
      a(4)=>rtlc4n332(4), a(3)=>rtlc4n332(5), a(2)=>rtlc4n332(6), a(1)=>
      rtlc4n332(7), a(0)=>rtlc4n708, d=>rtlcn2);
end main ;

