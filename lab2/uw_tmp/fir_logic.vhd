
-- 
-- Definition of  fir
-- 
--      05/31/15 15:33:08
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_0 ;

architecture IMPLEMENTATION of add_16_0 is 
   signal nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, nx2247z28, 
      nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, nx2247z10, 
      nx2247z7, nx2247z5, nx2247z4, nx_add_16_0_vcc_net: std_logic ;

begin
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z10, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_0_vcc_net, cin=>nx2247z13);
   nx_add_16_0_vcc_net <= '1';
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z13, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_0_vcc_net, cin=>nx2247z16);
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z16, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z19);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z19, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z22);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z22, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z25);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z25, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z28);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z28, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z31);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z31, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z34);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z34, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z37);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z37, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z40);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z40, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z43);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z43, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_0_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_0_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(15), datab=>a(15), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z5);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z5, dataa=>b(15), datab=>a(13), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z7);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z7, dataa=>b(12), datab=>a(12), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z10);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_1 ;

architecture IMPLEMENTATION of add_16_1 is 
   signal nx2247z44, nx2247z41, nx2247z38, nx2247z35, nx2247z32, nx2247z29, 
      nx2247z26, nx2247z23, nx2247z20, nx2247z17, nx2247z14, nx2247z11, 
      nx2247z8, nx2247z6, nx2247z4, nx_add_16_1_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z14, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_1_vcc_net, cin=>nx2247z17);
   nx_add_16_1_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z17, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z20);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z20, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z23);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z23, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z26);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z26, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z29);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z29, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z32);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z32, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z35);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z35, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z38);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z38, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z41);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z41, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z44);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z44, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_1_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_1_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(15), datab=>a(14), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z6);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z6, dataa=>b(15), datab=>a(13), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z8);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z8, dataa=>b(12), datab=>a(12), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z11);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z11, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_1_vcc_net, cin=>nx2247z14);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_15_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (14 DOWNTO 0) ;
      b : IN std_logic_vector (14 DOWNTO 0) ;
      d : OUT std_logic_vector (14 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_15_0 ;

architecture IMPLEMENTATION of add_15_0 is 
   signal nx1250z41, nx1250z38, nx1250z35, nx1250z32, nx1250z29, nx1250z26, 
      nx1250z23, nx1250z20, nx1250z17, nx1250z14, nx1250z11, nx1250z8, 
      nx1250z5, nx1250z4, nx_add_15_0_vcc_net: std_logic ;

begin
   ix1250z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx1250z8, dataa=>b(11), datab=>a(11), 
      datad=>nx_add_15_0_vcc_net, cin=>nx1250z11);
   nx_add_15_0_vcc_net <= '1';
   ix1250z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx1250z11, dataa=>b(10), datab=>
      a(10), datad=>nx_add_15_0_vcc_net, cin=>nx1250z14);
   ix1250z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx1250z14, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_15_0_vcc_net, cin=>nx1250z17);
   ix1250z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx1250z17, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_15_0_vcc_net, cin=>nx1250z20);
   ix1250z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx1250z20, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_15_0_vcc_net, cin=>nx1250z23);
   ix1250z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx1250z23, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_15_0_vcc_net, cin=>nx1250z26);
   ix1250z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx1250z26, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_15_0_vcc_net, cin=>nx1250z29);
   ix1250z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx1250z29, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_15_0_vcc_net, cin=>nx1250z32);
   ix1250z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx1250z32, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_15_0_vcc_net, cin=>nx1250z35);
   ix1250z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx1250z35, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_15_0_vcc_net, cin=>nx1250z38);
   ix1250z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx1250z38, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_15_0_vcc_net, cin=>nx1250z41);
   ix1250z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx1250z41, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_15_0_vcc_net);
   ix1250z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), dataa=>b(14), datab=>a(14), datad=>
      nx_add_15_0_vcc_net, cin=>nx1250z4);
   ix1250z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx1250z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_15_0_vcc_net, cin=>nx1250z5);
   ix1250z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx1250z5, dataa=>b(12), datab=>a(12), 
      datad=>nx_add_15_0_vcc_net, cin=>nx1250z8);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity fir is 
   port (
      clk : IN std_logic ;
      i_data : IN std_logic_vector (15 DOWNTO 0) ;
      o_data : OUT std_logic_vector (15 DOWNTO 0)) ;
end fir ;

architecture avg of fir is 
   component add_16_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_15_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (14 DOWNTO 0) ;
         b : IN std_logic_vector (14 DOWNTO 0) ;
         d : OUT std_logic_vector (14 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal clk_EXMPLR50, i_data_15_EXMPLR51, i_data_14_EXMPLR52, 
      i_data_13_EXMPLR53, i_data_12_EXMPLR54, i_data_11_EXMPLR55, 
      i_data_10_EXMPLR56, i_data_9_EXMPLR57, i_data_8_EXMPLR58, 
      i_data_7_EXMPLR59, i_data_6_EXMPLR60, i_data_5_EXMPLR61, 
      i_data_4_EXMPLR62, i_data_3_EXMPLR63, i_data_2_EXMPLR64: std_logic ;
   
   signal o_data_dup0: std_logic_vector (15 DOWNTO 0) ;
   
   signal tap1_15, tap1_14, tap1_13, tap1_12, tap1_11, tap1_10, tap1_9, 
      tap1_8, tap1_7, tap1_6, tap1_5, tap1_4, tap1_3, tap1_2, tap2_15, 
      tap2_14, tap2_13, tap2_12, tap2_11, tap2_10, tap2_9, tap2_8, tap2_7, 
      tap2_6, tap2_5, tap2_4, tap2_3, tap2_2, tap3_15, tap3_14, tap3_13, 
      tap3_12, tap3_11, tap3_10, tap3_9, tap3_8, tap3_7, tap3_6, tap3_5, 
      tap3_4, tap3_3, tap3_2, tap4_15, tap4_14, tap4_13, tap4_12, tap4_11, 
      tap4_10, tap4_9, tap4_8, tap4_7, tap4_6, tap4_5, tap4_4, tap4_3, 
      tap4_2: std_logic ;
   
   signal sum2: std_logic_vector (14 DOWNTO 0) ;
   
   signal sum3: std_logic_vector (15 DOWNTO 0) ;
   
   signal clk_int: std_logic ;
   
   signal o_data_EXMPLR81: std_logic_vector (15 DOWNTO 0) ;
   
   signal DANGLING : std_logic_vector (12 downto 0 );

begin
   clk_EXMPLR50 <= clk ;
   i_data_15_EXMPLR51 <= i_data(15) ;
   i_data_14_EXMPLR52 <= i_data(14) ;
   i_data_13_EXMPLR53 <= i_data(13) ;
   i_data_12_EXMPLR54 <= i_data(12) ;
   i_data_11_EXMPLR55 <= i_data(11) ;
   i_data_10_EXMPLR56 <= i_data(10) ;
   i_data_9_EXMPLR57 <= i_data(9) ;
   i_data_8_EXMPLR58 <= i_data(8) ;
   i_data_7_EXMPLR59 <= i_data(7) ;
   i_data_6_EXMPLR60 <= i_data(6) ;
   i_data_5_EXMPLR61 <= i_data(5) ;
   i_data_4_EXMPLR62 <= i_data(4) ;
   i_data_3_EXMPLR63 <= i_data(3) ;
   i_data_2_EXMPLR64 <= i_data(2) ;
   o_data(15) <= o_data_EXMPLR81(15) ;
   o_data(14) <= o_data_EXMPLR81(14) ;
   o_data(13) <= o_data_EXMPLR81(13) ;
   o_data(12) <= o_data_EXMPLR81(12) ;
   o_data(11) <= o_data_EXMPLR81(11) ;
   o_data(10) <= o_data_EXMPLR81(10) ;
   o_data(9) <= o_data_EXMPLR81(9) ;
   o_data(8) <= o_data_EXMPLR81(8) ;
   o_data(7) <= o_data_EXMPLR81(7) ;
   o_data(6) <= o_data_EXMPLR81(6) ;
   o_data(5) <= o_data_EXMPLR81(5) ;
   o_data(4) <= o_data_EXMPLR81(4) ;
   o_data(3) <= o_data_EXMPLR81(3) ;
   o_data(2) <= o_data_EXMPLR81(2) ;
   o_data(1) <= o_data_EXMPLR81(1) ;
   o_data(0) <= o_data_EXMPLR81(0) ;
   sum3_add16_0 : add_16_0 port map ( cin=>DANGLING(0), a(15)=>sum2(14), 
      a(14)=>DANGLING(1), a(13)=>sum2(13), a(12)=>sum2(12), a(11)=>sum2(11), 
      a(10)=>sum2(10), a(9)=>sum2(9), a(8)=>sum2(8), a(7)=>sum2(7), a(6)=>
      sum2(6), a(5)=>sum2(5), a(4)=>sum2(4), a(3)=>sum2(3), a(2)=>sum2(2), 
      a(1)=>sum2(1), a(0)=>sum2(0), b(15)=>tap3_15, b(14)=>DANGLING(2), 
      b(13)=>DANGLING(3), b(12)=>tap3_14, b(11)=>tap3_13, b(10)=>tap3_12, 
      b(9)=>tap3_11, b(8)=>tap3_10, b(7)=>tap3_9, b(6)=>tap3_8, b(5)=>tap3_7, 
      b(4)=>tap3_6, b(3)=>tap3_5, b(2)=>tap3_4, b(1)=>tap3_3, b(0)=>tap3_2, 
      d(15)=>sum3(15), d(14)=>sum3(14), d(13)=>sum3(13), d(12)=>sum3(12), 
      d(11)=>sum3(11), d(10)=>sum3(10), d(9)=>sum3(9), d(8)=>sum3(8), d(7)=>
      sum3(7), d(6)=>sum3(6), d(5)=>sum3(5), d(4)=>sum3(4), d(3)=>sum3(3), 
      d(2)=>sum3(2), d(1)=>sum3(1), d(0)=>sum3(0), cout=>DANGLING(4));
   o_data_add16_1 : add_16_1 port map ( cin=>DANGLING(5), a(15)=>sum3(15), 
      a(14)=>sum3(14), a(13)=>sum3(13), a(12)=>sum3(12), a(11)=>sum3(11), 
      a(10)=>sum3(10), a(9)=>sum3(9), a(8)=>sum3(8), a(7)=>sum3(7), a(6)=>
      sum3(6), a(5)=>sum3(5), a(4)=>sum3(4), a(3)=>sum3(3), a(2)=>sum3(2), 
      a(1)=>sum3(1), a(0)=>sum3(0), b(15)=>tap4_15, b(14)=>DANGLING(6), 
      b(13)=>DANGLING(7), b(12)=>tap4_14, b(11)=>tap4_13, b(10)=>tap4_12, 
      b(9)=>tap4_11, b(8)=>tap4_10, b(7)=>tap4_9, b(6)=>tap4_8, b(5)=>tap4_7, 
      b(4)=>tap4_6, b(3)=>tap4_5, b(2)=>tap4_4, b(1)=>tap4_3, b(0)=>tap4_2, 
      d(15)=>o_data_dup0(15), d(14)=>o_data_dup0(14), d(13)=>o_data_dup0(13), 
      d(12)=>o_data_dup0(12), d(11)=>o_data_dup0(11), d(10)=>o_data_dup0(10), 
      d(9)=>o_data_dup0(9), d(8)=>o_data_dup0(8), d(7)=>o_data_dup0(7), d(6)
      =>o_data_dup0(6), d(5)=>o_data_dup0(5), d(4)=>o_data_dup0(4), d(3)=>
      o_data_dup0(3), d(2)=>o_data_dup0(2), d(1)=>o_data_dup0(1), d(0)=>
      o_data_dup0(0), cout=>DANGLING(8));
   sum2_add15_2 : add_15_0 port map ( cin=>DANGLING(9), a(14)=>tap1_15, 
      a(13)=>DANGLING(10), a(12)=>tap1_14, a(11)=>tap1_13, a(10)=>tap1_12, 
      a(9)=>tap1_11, a(8)=>tap1_10, a(7)=>tap1_9, a(6)=>tap1_8, a(5)=>tap1_7, 
      a(4)=>tap1_6, a(3)=>tap1_5, a(2)=>tap1_4, a(1)=>tap1_3, a(0)=>tap1_2, 
      b(14)=>tap2_15, b(13)=>DANGLING(11), b(12)=>tap2_14, b(11)=>tap2_13, 
      b(10)=>tap2_12, b(9)=>tap2_11, b(8)=>tap2_10, b(7)=>tap2_9, b(6)=>
      tap2_8, b(5)=>tap2_7, b(4)=>tap2_6, b(3)=>tap2_5, b(2)=>tap2_4, b(1)=>
      tap2_3, b(0)=>tap2_2, d(14)=>sum2(14), d(13)=>sum2(13), d(12)=>
      sum2(12), d(11)=>sum2(11), d(10)=>sum2(10), d(9)=>sum2(9), d(8)=>
      sum2(8), d(7)=>sum2(7), d(6)=>sum2(6), d(5)=>sum2(5), d(4)=>sum2(4), 
      d(3)=>sum2(3), d(2)=>sum2(2), d(1)=>sum2(1), d(0)=>sum2(0), cout=>
      DANGLING(12));
   reg_tap4_9 : cycloneii_lcell_ff port map ( regout=>tap4_9, datain=>tap3_9, 
      clk=>clk_int);
   reg_tap4_8 : cycloneii_lcell_ff port map ( regout=>tap4_8, datain=>tap3_8, 
      clk=>clk_int);
   reg_tap4_7 : cycloneii_lcell_ff port map ( regout=>tap4_7, datain=>tap3_7, 
      clk=>clk_int);
   reg_tap4_6 : cycloneii_lcell_ff port map ( regout=>tap4_6, datain=>tap3_6, 
      clk=>clk_int);
   reg_tap4_5 : cycloneii_lcell_ff port map ( regout=>tap4_5, datain=>tap3_5, 
      clk=>clk_int);
   reg_tap4_4 : cycloneii_lcell_ff port map ( regout=>tap4_4, datain=>tap3_4, 
      clk=>clk_int);
   reg_tap4_3 : cycloneii_lcell_ff port map ( regout=>tap4_3, datain=>tap3_3, 
      clk=>clk_int);
   reg_tap4_2 : cycloneii_lcell_ff port map ( regout=>tap4_2, datain=>tap3_2, 
      clk=>clk_int);
   reg_tap4_15 : cycloneii_lcell_ff port map ( regout=>tap4_15, datain=>
      tap3_15, clk=>clk_int);
   reg_tap4_14 : cycloneii_lcell_ff port map ( regout=>tap4_14, datain=>
      tap3_14, clk=>clk_int);
   reg_tap4_13 : cycloneii_lcell_ff port map ( regout=>tap4_13, datain=>
      tap3_13, clk=>clk_int);
   reg_tap4_12 : cycloneii_lcell_ff port map ( regout=>tap4_12, datain=>
      tap3_12, clk=>clk_int);
   reg_tap4_11 : cycloneii_lcell_ff port map ( regout=>tap4_11, datain=>
      tap3_11, clk=>clk_int);
   reg_tap4_10 : cycloneii_lcell_ff port map ( regout=>tap4_10, datain=>
      tap3_10, clk=>clk_int);
   reg_tap3_9 : cycloneii_lcell_ff port map ( regout=>tap3_9, datain=>tap2_9, 
      clk=>clk_int);
   reg_tap3_8 : cycloneii_lcell_ff port map ( regout=>tap3_8, datain=>tap2_8, 
      clk=>clk_int);
   reg_tap3_7 : cycloneii_lcell_ff port map ( regout=>tap3_7, datain=>tap2_7, 
      clk=>clk_int);
   reg_tap3_6 : cycloneii_lcell_ff port map ( regout=>tap3_6, datain=>tap2_6, 
      clk=>clk_int);
   reg_tap3_5 : cycloneii_lcell_ff port map ( regout=>tap3_5, datain=>tap2_5, 
      clk=>clk_int);
   reg_tap3_4 : cycloneii_lcell_ff port map ( regout=>tap3_4, datain=>tap2_4, 
      clk=>clk_int);
   reg_tap3_3 : cycloneii_lcell_ff port map ( regout=>tap3_3, datain=>tap2_3, 
      clk=>clk_int);
   reg_tap3_2 : cycloneii_lcell_ff port map ( regout=>tap3_2, datain=>tap2_2, 
      clk=>clk_int);
   reg_tap3_15 : cycloneii_lcell_ff port map ( regout=>tap3_15, datain=>
      tap2_15, clk=>clk_int);
   reg_tap3_14 : cycloneii_lcell_ff port map ( regout=>tap3_14, datain=>
      tap2_14, clk=>clk_int);
   reg_tap3_13 : cycloneii_lcell_ff port map ( regout=>tap3_13, datain=>
      tap2_13, clk=>clk_int);
   reg_tap3_12 : cycloneii_lcell_ff port map ( regout=>tap3_12, datain=>
      tap2_12, clk=>clk_int);
   reg_tap3_11 : cycloneii_lcell_ff port map ( regout=>tap3_11, datain=>
      tap2_11, clk=>clk_int);
   reg_tap3_10 : cycloneii_lcell_ff port map ( regout=>tap3_10, datain=>
      tap2_10, clk=>clk_int);
   reg_tap2_9 : cycloneii_lcell_ff port map ( regout=>tap2_9, datain=>tap1_9, 
      clk=>clk_int);
   reg_tap2_8 : cycloneii_lcell_ff port map ( regout=>tap2_8, datain=>tap1_8, 
      clk=>clk_int);
   reg_tap2_7 : cycloneii_lcell_ff port map ( regout=>tap2_7, datain=>tap1_7, 
      clk=>clk_int);
   reg_tap2_6 : cycloneii_lcell_ff port map ( regout=>tap2_6, datain=>tap1_6, 
      clk=>clk_int);
   reg_tap2_5 : cycloneii_lcell_ff port map ( regout=>tap2_5, datain=>tap1_5, 
      clk=>clk_int);
   reg_tap2_4 : cycloneii_lcell_ff port map ( regout=>tap2_4, datain=>tap1_4, 
      clk=>clk_int);
   reg_tap2_3 : cycloneii_lcell_ff port map ( regout=>tap2_3, datain=>tap1_3, 
      clk=>clk_int);
   reg_tap2_2 : cycloneii_lcell_ff port map ( regout=>tap2_2, datain=>tap1_2, 
      clk=>clk_int);
   reg_tap2_15 : cycloneii_lcell_ff port map ( regout=>tap2_15, datain=>
      tap1_15, clk=>clk_int);
   reg_tap2_14 : cycloneii_lcell_ff port map ( regout=>tap2_14, datain=>
      tap1_14, clk=>clk_int);
   reg_tap2_13 : cycloneii_lcell_ff port map ( regout=>tap2_13, datain=>
      tap1_13, clk=>clk_int);
   reg_tap2_12 : cycloneii_lcell_ff port map ( regout=>tap2_12, datain=>
      tap1_12, clk=>clk_int);
   reg_tap2_11 : cycloneii_lcell_ff port map ( regout=>tap2_11, datain=>
      tap1_11, clk=>clk_int);
   reg_tap2_10 : cycloneii_lcell_ff port map ( regout=>tap2_10, datain=>
      tap1_10, clk=>clk_int);
   o_data_obuf_9 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR81(9), datain=>o_data_dup0(9));
   o_data_obuf_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR81(8), datain=>o_data_dup0(8));
   o_data_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR81(7), datain=>o_data_dup0(7));
   o_data_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR81(6), datain=>o_data_dup0(6));
   o_data_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR81(5), datain=>o_data_dup0(5));
   o_data_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR81(4), datain=>o_data_dup0(4));
   o_data_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR81(3), datain=>o_data_dup0(3));
   o_data_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR81(2), datain=>o_data_dup0(2));
   o_data_obuf_15 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR81(15), datain=>o_data_dup0(15));
   o_data_obuf_14 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR81(14), datain=>o_data_dup0(14));
   o_data_obuf_13 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR81(13), datain=>o_data_dup0(13));
   o_data_obuf_12 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR81(12), datain=>o_data_dup0(12));
   o_data_obuf_11 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR81(11), datain=>o_data_dup0(11));
   o_data_obuf_10 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR81(10), datain=>o_data_dup0(10));
   o_data_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR81(1), datain=>o_data_dup0(1));
   o_data_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR81(0), datain=>o_data_dup0(0));
   i_data_ibuf_9 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_9, padio=>i_data_9_EXMPLR57, inclk=>clk_int);
   i_data_ibuf_8 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_8, padio=>i_data_8_EXMPLR58, inclk=>clk_int);
   i_data_ibuf_7 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_7, padio=>i_data_7_EXMPLR59, inclk=>clk_int);
   i_data_ibuf_6 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_6, padio=>i_data_6_EXMPLR60, inclk=>clk_int);
   i_data_ibuf_5 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_5, padio=>i_data_5_EXMPLR61, inclk=>clk_int);
   i_data_ibuf_4 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_4, padio=>i_data_4_EXMPLR62, inclk=>clk_int);
   i_data_ibuf_3 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_3, padio=>i_data_3_EXMPLR63, inclk=>clk_int);
   i_data_ibuf_2 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_2, padio=>i_data_2_EXMPLR64, inclk=>clk_int);
   i_data_ibuf_15 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_15, padio=>i_data_15_EXMPLR51, inclk=>clk_int
   );
   i_data_ibuf_14 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_14, padio=>i_data_14_EXMPLR52, inclk=>clk_int
   );
   i_data_ibuf_13 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_13, padio=>i_data_13_EXMPLR53, inclk=>clk_int
   );
   i_data_ibuf_12 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_12, padio=>i_data_12_EXMPLR54, inclk=>clk_int
   );
   i_data_ibuf_11 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_11, padio=>i_data_11_EXMPLR55, inclk=>clk_int
   );
   i_data_ibuf_10 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_10, padio=>i_data_10_EXMPLR56, inclk=>clk_int
   );
   clk_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>clk_int, padio=>clk_EXMPLR50);
end avg ;

