
-- 
-- Definition of  fir
-- 
--      05/31/15 15:33:06
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity fir is 
   port (
      clk : IN std_logic ;
      i_data : IN std_logic_vector (15 DOWNTO 0) ;
      o_data : OUT std_logic_vector (15 DOWNTO 0)) ;
end fir ;

architecture avg of fir is 
   component add_16u_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_15u_15u_15u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (14 DOWNTO 0) ;
         b : IN std_logic_vector (14 DOWNTO 0) ;
         d : OUT std_logic_vector (14 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
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
   signal tap1_15, tap1_14, tap1_13, tap1_12, tap1_11, tap1_10, tap1_9, 
      tap1_8, tap1_7, tap1_6, tap1_5, tap1_4, tap1_3, tap1_2, GND, tap2_15, 
      tap2_14, tap2_13, tap2_12, tap2_11, tap2_10, tap2_9, tap2_8, tap2_7, 
      tap2_6, tap2_5, tap2_4, tap2_3, tap2_2, tap3_15, tap3_14, tap3_13, 
      tap3_12, tap3_11, tap3_10, tap3_9, tap3_8, tap3_7, tap3_6, tap3_5, 
      tap3_4, tap3_3, tap3_2, tap4_15, tap4_14, tap4_13, tap4_12, tap4_11, 
      tap4_10, tap4_9, tap4_8, tap4_7, tap4_6, tap4_5, tap4_4, tap4_3, 
      tap4_2: std_logic ;
   
   signal sum2: std_logic_vector (14 DOWNTO 0) ;
   
   signal sum3: std_logic_vector (15 DOWNTO 0) ;
   
   signal DANGLING : std_logic_vector (2 downto 0 );

begin
   GND <= '0' ;
   sum3_add16_0 : add_16u_16u_16u_0_0 port map ( cin=>GND, a(15)=>sum2(14), 
      a(14)=>sum2(14), a(13)=>sum2(13), a(12)=>sum2(12), a(11)=>sum2(11), 
      a(10)=>sum2(10), a(9)=>sum2(9), a(8)=>sum2(8), a(7)=>sum2(7), a(6)=>
      sum2(6), a(5)=>sum2(5), a(4)=>sum2(4), a(3)=>sum2(3), a(2)=>sum2(2), 
      a(1)=>sum2(1), a(0)=>sum2(0), b(15)=>tap3_15, b(14)=>tap3_15, b(13)=>
      tap3_15, b(12)=>tap3_14, b(11)=>tap3_13, b(10)=>tap3_12, b(9)=>tap3_11, 
      b(8)=>tap3_10, b(7)=>tap3_9, b(6)=>tap3_8, b(5)=>tap3_7, b(4)=>tap3_6, 
      b(3)=>tap3_5, b(2)=>tap3_4, b(1)=>tap3_3, b(0)=>tap3_2, d(15)=>
      sum3(15), d(14)=>sum3(14), d(13)=>sum3(13), d(12)=>sum3(12), d(11)=>
      sum3(11), d(10)=>sum3(10), d(9)=>sum3(9), d(8)=>sum3(8), d(7)=>sum3(7), 
      d(6)=>sum3(6), d(5)=>sum3(5), d(4)=>sum3(4), d(3)=>sum3(3), d(2)=>
      sum3(2), d(1)=>sum3(1), d(0)=>sum3(0), cout=>DANGLING(0));
   o_data_add16_1 : add_16u_16u_16u_0_0 port map ( cin=>GND, a(15)=>sum3(15), 
      a(14)=>sum3(14), a(13)=>sum3(13), a(12)=>sum3(12), a(11)=>sum3(11), 
      a(10)=>sum3(10), a(9)=>sum3(9), a(8)=>sum3(8), a(7)=>sum3(7), a(6)=>
      sum3(6), a(5)=>sum3(5), a(4)=>sum3(4), a(3)=>sum3(3), a(2)=>sum3(2), 
      a(1)=>sum3(1), a(0)=>sum3(0), b(15)=>tap4_15, b(14)=>tap4_15, b(13)=>
      tap4_15, b(12)=>tap4_14, b(11)=>tap4_13, b(10)=>tap4_12, b(9)=>tap4_11, 
      b(8)=>tap4_10, b(7)=>tap4_9, b(6)=>tap4_8, b(5)=>tap4_7, b(4)=>tap4_6, 
      b(3)=>tap4_5, b(2)=>tap4_4, b(1)=>tap4_3, b(0)=>tap4_2, d(15)=>
      o_data(15), d(14)=>o_data(14), d(13)=>o_data(13), d(12)=>o_data(12), 
      d(11)=>o_data(11), d(10)=>o_data(10), d(9)=>o_data(9), d(8)=>o_data(8), 
      d(7)=>o_data(7), d(6)=>o_data(6), d(5)=>o_data(5), d(4)=>o_data(4), 
      d(3)=>o_data(3), d(2)=>o_data(2), d(1)=>o_data(1), d(0)=>o_data(0), 
      cout=>DANGLING(1));
   sum2_add15_2 : add_15u_15u_15u_0_0 port map ( cin=>GND, a(14)=>tap1_15, 
      a(13)=>tap1_15, a(12)=>tap1_14, a(11)=>tap1_13, a(10)=>tap1_12, a(9)=>
      tap1_11, a(8)=>tap1_10, a(7)=>tap1_9, a(6)=>tap1_8, a(5)=>tap1_7, a(4)
      =>tap1_6, a(3)=>tap1_5, a(2)=>tap1_4, a(1)=>tap1_3, a(0)=>tap1_2, 
      b(14)=>tap2_15, b(13)=>tap2_15, b(12)=>tap2_14, b(11)=>tap2_13, b(10)
      =>tap2_12, b(9)=>tap2_11, b(8)=>tap2_10, b(7)=>tap2_9, b(6)=>tap2_8, 
      b(5)=>tap2_7, b(4)=>tap2_6, b(3)=>tap2_5, b(2)=>tap2_4, b(1)=>tap2_3, 
      b(0)=>tap2_2, d(14)=>sum2(14), d(13)=>sum2(13), d(12)=>sum2(12), d(11)
      =>sum2(11), d(10)=>sum2(10), d(9)=>sum2(9), d(8)=>sum2(8), d(7)=>
      sum2(7), d(6)=>sum2(6), d(5)=>sum2(5), d(4)=>sum2(4), d(3)=>sum2(3), 
      d(2)=>sum2(2), d(1)=>sum2(1), d(0)=>sum2(0), cout=>DANGLING(2));
   DFFPC (tap3_15,GND,GND,clk,tap4_15) ;
   DFFPC (tap3_14,GND,GND,clk,tap4_14) ;
   DFFPC (tap3_13,GND,GND,clk,tap4_13) ;
   DFFPC (tap3_12,GND,GND,clk,tap4_12) ;
   DFFPC (tap3_11,GND,GND,clk,tap4_11) ;
   DFFPC (tap3_10,GND,GND,clk,tap4_10) ;
   DFFPC (tap3_9,GND,GND,clk,tap4_9) ;
   DFFPC (tap3_8,GND,GND,clk,tap4_8) ;
   DFFPC (tap3_7,GND,GND,clk,tap4_7) ;
   DFFPC (tap3_6,GND,GND,clk,tap4_6) ;
   DFFPC (tap3_5,GND,GND,clk,tap4_5) ;
   DFFPC (tap3_4,GND,GND,clk,tap4_4) ;
   DFFPC (tap3_3,GND,GND,clk,tap4_3) ;
   DFFPC (tap3_2,GND,GND,clk,tap4_2) ;
   DFFPC (tap2_15,GND,GND,clk,tap3_15) ;
   DFFPC (tap2_14,GND,GND,clk,tap3_14) ;
   DFFPC (tap2_13,GND,GND,clk,tap3_13) ;
   DFFPC (tap2_12,GND,GND,clk,tap3_12) ;
   DFFPC (tap2_11,GND,GND,clk,tap3_11) ;
   DFFPC (tap2_10,GND,GND,clk,tap3_10) ;
   DFFPC (tap2_9,GND,GND,clk,tap3_9) ;
   DFFPC (tap2_8,GND,GND,clk,tap3_8) ;
   DFFPC (tap2_7,GND,GND,clk,tap3_7) ;
   DFFPC (tap2_6,GND,GND,clk,tap3_6) ;
   DFFPC (tap2_5,GND,GND,clk,tap3_5) ;
   DFFPC (tap2_4,GND,GND,clk,tap3_4) ;
   DFFPC (tap2_3,GND,GND,clk,tap3_3) ;
   DFFPC (tap2_2,GND,GND,clk,tap3_2) ;
   DFFPC (tap1_15,GND,GND,clk,tap2_15) ;
   DFFPC (tap1_14,GND,GND,clk,tap2_14) ;
   DFFPC (tap1_13,GND,GND,clk,tap2_13) ;
   DFFPC (tap1_12,GND,GND,clk,tap2_12) ;
   DFFPC (tap1_11,GND,GND,clk,tap2_11) ;
   DFFPC (tap1_10,GND,GND,clk,tap2_10) ;
   DFFPC (tap1_9,GND,GND,clk,tap2_9) ;
   DFFPC (tap1_8,GND,GND,clk,tap2_8) ;
   DFFPC (tap1_7,GND,GND,clk,tap2_7) ;
   DFFPC (tap1_6,GND,GND,clk,tap2_6) ;
   DFFPC (tap1_5,GND,GND,clk,tap2_5) ;
   DFFPC (tap1_4,GND,GND,clk,tap2_4) ;
   DFFPC (tap1_3,GND,GND,clk,tap2_3) ;
   DFFPC (tap1_2,GND,GND,clk,tap2_2) ;
   DFFPC (i_data(15),GND,GND,clk,tap1_15) ;
   DFFPC (i_data(14),GND,GND,clk,tap1_14) ;
   DFFPC (i_data(13),GND,GND,clk,tap1_13) ;
   DFFPC (i_data(12),GND,GND,clk,tap1_12) ;
   DFFPC (i_data(11),GND,GND,clk,tap1_11) ;
   DFFPC (i_data(10),GND,GND,clk,tap1_10) ;
   DFFPC (i_data(9),GND,GND,clk,tap1_9) ;
   DFFPC (i_data(8),GND,GND,clk,tap1_8) ;
   DFFPC (i_data(7),GND,GND,clk,tap1_7) ;
   DFFPC (i_data(6),GND,GND,clk,tap1_6) ;
   DFFPC (i_data(5),GND,GND,clk,tap1_5) ;
   DFFPC (i_data(4),GND,GND,clk,tap1_4) ;
   DFFPC (i_data(3),GND,GND,clk,tap1_3) ;
   DFFPC (i_data(2),GND,GND,clk,tap1_2) ;
end avg ;

