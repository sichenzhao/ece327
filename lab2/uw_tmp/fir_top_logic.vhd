
-- 
-- Definition of  fir_top
-- 
--      05/31/15 15:48:34
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_42 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_42 ;

architecture IMPLEMENTATION of mult_32_42 is 
   signal nx5238z2, nx5238z30, nx5238z28, nx5238z26, nx5238z24, nx5238z22, 
      nx5238z20, nx5238z18, nx5238z16, nx5238z14, nx5238z12, nx5238z10, 
      nx5238z8, nx5238z6, nx5238z4, nx_mult_32_42_vcc_net: std_logic ;

begin
   d(20) <= a(31) ;
   d(19) <= a(31) ;
   modgen_add_0_ix5238z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(17), cout=>nx5238z2, dataa=>a(31), datab=>a(14), 
      datad=>nx_mult_32_42_vcc_net, cin=>nx5238z4);
   nx_mult_32_42_vcc_net <= '1';
   modgen_add_0_ix5238z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), cout=>nx5238z4, dataa=>a(31), datab=>a(13), 
      datad=>nx_mult_32_42_vcc_net, cin=>nx5238z6);
   modgen_add_0_ix5238z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx5238z6, dataa=>a(31), datab=>a(12), 
      datad=>nx_mult_32_42_vcc_net, cin=>nx5238z8);
   modgen_add_0_ix5238z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx5238z8, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_42_vcc_net, cin=>nx5238z10);
   modgen_add_0_ix5238z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx5238z10, dataa=>a(13), datab=>
      a(10), datad=>nx_mult_32_42_vcc_net, cin=>nx5238z12);
   modgen_add_0_ix5238z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx5238z12, dataa=>a(12), datab=>a(9), 
      datad=>nx_mult_32_42_vcc_net, cin=>nx5238z14);
   modgen_add_0_ix5238z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx5238z14, dataa=>a(11), datab=>a(8), 
      datad=>nx_mult_32_42_vcc_net, cin=>nx5238z16);
   modgen_add_0_ix5238z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx5238z16, dataa=>a(10), datab=>a(7), 
      datad=>nx_mult_32_42_vcc_net, cin=>nx5238z18);
   modgen_add_0_ix5238z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx5238z18, dataa=>a(9), datab=>a(6), 
      datad=>nx_mult_32_42_vcc_net, cin=>nx5238z20);
   modgen_add_0_ix5238z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx5238z20, dataa=>a(8), datab=>a(5), 
      datad=>nx_mult_32_42_vcc_net, cin=>nx5238z22);
   modgen_add_0_ix5238z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx5238z22, dataa=>a(7), datab=>a(4), 
      datad=>nx_mult_32_42_vcc_net, cin=>nx5238z24);
   modgen_add_0_ix5238z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx5238z24, dataa=>a(6), datab=>a(3), 
      datad=>nx_mult_32_42_vcc_net, cin=>nx5238z26);
   modgen_add_0_ix5238z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx5238z26, dataa=>a(5), datab=>a(2), datad=>
      nx_mult_32_42_vcc_net, cin=>nx5238z28);
   modgen_add_0_ix5238z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx5238z28, dataa=>a(4), datab=>a(1), datad=>
      nx_mult_32_42_vcc_net, cin=>nx5238z30);
   modgen_add_0_ix5238z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx5238z30, dataa=>a(0), datab=>a(3), datad=>
      nx_mult_32_42_vcc_net);
   ix5238z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(18), datad=>nx_mult_32_42_vcc_net, cin=>
      nx5238z2);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_43 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_43 ;

architecture IMPLEMENTATION of mult_32_43 is 
   signal nx3244z2, nx3244z30, nx3244z28, nx3244z26, nx3244z24, nx3244z22, 
      nx3244z20, nx3244z18, nx3244z16, nx3244z14, nx3244z12, nx3244z10, 
      nx3244z8, nx3244z6, nx3244z4, nx_mult_32_43_vcc_net: std_logic ;

begin
   d(18) <= a(31) ;
   d(17) <= a(31) ;
   modgen_add_1_ix3244z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx3244z2, dataa=>a(31), datab=>a(14), 
      datad=>nx_mult_32_43_vcc_net, cin=>nx3244z4);
   nx_mult_32_43_vcc_net <= '1';
   modgen_add_1_ix3244z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx3244z4, dataa=>a(14), datab=>a(13), 
      datad=>nx_mult_32_43_vcc_net, cin=>nx3244z6);
   modgen_add_1_ix3244z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx3244z6, dataa=>a(13), datab=>a(12), 
      datad=>nx_mult_32_43_vcc_net, cin=>nx3244z8);
   modgen_add_1_ix3244z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx3244z8, dataa=>a(12), datab=>a(11), 
      datad=>nx_mult_32_43_vcc_net, cin=>nx3244z10);
   modgen_add_1_ix3244z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx3244z10, dataa=>a(11), datab=>
      a(10), datad=>nx_mult_32_43_vcc_net, cin=>nx3244z12);
   modgen_add_1_ix3244z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx3244z12, dataa=>a(10), datab=>a(9), 
      datad=>nx_mult_32_43_vcc_net, cin=>nx3244z14);
   modgen_add_1_ix3244z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx3244z14, dataa=>a(9), datab=>a(8), 
      datad=>nx_mult_32_43_vcc_net, cin=>nx3244z16);
   modgen_add_1_ix3244z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx3244z16, dataa=>a(8), datab=>a(7), 
      datad=>nx_mult_32_43_vcc_net, cin=>nx3244z18);
   modgen_add_1_ix3244z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx3244z18, dataa=>a(7), datab=>a(6), 
      datad=>nx_mult_32_43_vcc_net, cin=>nx3244z20);
   modgen_add_1_ix3244z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx3244z20, dataa=>a(6), datab=>a(5), 
      datad=>nx_mult_32_43_vcc_net, cin=>nx3244z22);
   modgen_add_1_ix3244z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx3244z22, dataa=>a(5), datab=>a(4), 
      datad=>nx_mult_32_43_vcc_net, cin=>nx3244z24);
   modgen_add_1_ix3244z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx3244z24, dataa=>a(4), datab=>a(3), datad=>
      nx_mult_32_43_vcc_net, cin=>nx3244z26);
   modgen_add_1_ix3244z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx3244z26, dataa=>a(3), datab=>a(2), datad=>
      nx_mult_32_43_vcc_net, cin=>nx3244z28);
   modgen_add_1_ix3244z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx3244z28, dataa=>a(2), datab=>a(1), datad=>
      nx_mult_32_43_vcc_net, cin=>nx3244z30);
   modgen_add_1_ix3244z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx3244z30, dataa=>a(0), datab=>a(1), datad=>
      nx_mult_32_43_vcc_net);
   ix3244z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), datad=>nx_mult_32_43_vcc_net, cin=>
      nx3244z2);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_44 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_44 ;

architecture IMPLEMENTATION of mult_32_44 is 
   signal nx6235z2, nx6235z18, nx6235z17, nx6235z16, nx6235z15, nx6235z14, 
      nx6235z13, nx6235z12, nx6235z11, nx6235z10, nx6235z9, nx6235z8, 
      nx6235z7, nx6235z6, nx6235z5, nx6235z4, nx6235z3, nx6235z1, 
      nx_mult_32_44_vcc_net: std_logic ;

begin
   d(19) <= nx6235z1 ;
   d(18) <= nx6235z1 ;
   modgen_sub_2_ix6235z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"692b",
         sum_lutc_input => "cin") 
       port map ( combout=>d(17), cout=>nx6235z2, dataa=>a(31), datab=>a(14), 
      datad=>nx_mult_32_44_vcc_net, cin=>nx6235z3);
   nx_mult_32_44_vcc_net <= '1';
   modgen_sub_2_ix6235z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), cout=>nx6235z3, dataa=>a(31), datab=>a(13), 
      datad=>nx_mult_32_44_vcc_net, cin=>nx6235z4);
   modgen_sub_2_ix6235z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx6235z4, dataa=>a(31), datab=>a(12), 
      datad=>nx_mult_32_44_vcc_net, cin=>nx6235z5);
   modgen_sub_2_ix6235z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx6235z5, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_44_vcc_net, cin=>nx6235z6);
   modgen_sub_2_ix6235z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx6235z6, dataa=>a(13), datab=>a(10), 
      datad=>nx_mult_32_44_vcc_net, cin=>nx6235z7);
   modgen_sub_2_ix6235z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx6235z7, dataa=>a(12), datab=>a(9), 
      datad=>nx_mult_32_44_vcc_net, cin=>nx6235z8);
   modgen_sub_2_ix6235z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx6235z8, dataa=>a(11), datab=>a(8), 
      datad=>nx_mult_32_44_vcc_net, cin=>nx6235z9);
   modgen_sub_2_ix6235z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx6235z9, dataa=>a(10), datab=>a(7), 
      datad=>nx_mult_32_44_vcc_net, cin=>nx6235z10);
   modgen_sub_2_ix6235z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx6235z10, dataa=>a(9), datab=>a(6), 
      datad=>nx_mult_32_44_vcc_net, cin=>nx6235z11);
   modgen_sub_2_ix6235z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx6235z11, dataa=>a(8), datab=>a(5), 
      datad=>nx_mult_32_44_vcc_net, cin=>nx6235z12);
   modgen_sub_2_ix6235z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx6235z12, dataa=>a(7), datab=>a(4), 
      datad=>nx_mult_32_44_vcc_net, cin=>nx6235z13);
   modgen_sub_2_ix6235z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx6235z13, dataa=>a(6), datab=>a(3), 
      datad=>nx_mult_32_44_vcc_net, cin=>nx6235z14);
   modgen_sub_2_ix6235z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx6235z14, dataa=>a(5), datab=>a(2), datad=>
      nx_mult_32_44_vcc_net, cin=>nx6235z15);
   modgen_sub_2_ix6235z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx6235z15, dataa=>a(4), datab=>a(1), datad=>
      nx_mult_32_44_vcc_net, cin=>nx6235z16);
   modgen_sub_2_ix6235z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx6235z16, dataa=>a(3), datab=>a(0), datad=>
      nx_mult_32_44_vcc_net, cin=>nx6235z17);
   modgen_sub_2_ix6235z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"0050",
         sum_lutc_input => "cin") 
       port map ( cout=>nx6235z17, dataa=>a(2), datad=>nx_mult_32_44_vcc_net, 
      cin=>nx6235z18);
   modgen_sub_2_ix6235z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"0011") 
       port map ( cout=>nx6235z18, dataa=>a(1), datab=>a(0), datad=>
      nx_mult_32_44_vcc_net);
   ix6235z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>nx6235z1, datad=>nx_mult_32_44_vcc_net, cin=>
      nx6235z2);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_45 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_45 ;

architecture IMPLEMENTATION of mult_32_45 is 
   signal nx4241z2, nx4241z30, nx4241z28, nx4241z26, nx4241z24, nx4241z22, 
      nx4241z20, nx4241z18, nx4241z16, nx4241z14, nx4241z12, nx4241z10, 
      nx4241z8, nx4241z6, nx4241z4, nx_mult_32_45_vcc_net: std_logic ;

begin
   d(19) <= a(31) ;
   d(18) <= a(31) ;
   modgen_add_3_ix4241z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), cout=>nx4241z2, dataa=>a(31), datab=>a(14), 
      datad=>nx_mult_32_45_vcc_net, cin=>nx4241z4);
   nx_mult_32_45_vcc_net <= '1';
   modgen_add_3_ix4241z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx4241z4, dataa=>a(31), datab=>a(13), 
      datad=>nx_mult_32_45_vcc_net, cin=>nx4241z6);
   modgen_add_3_ix4241z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx4241z6, dataa=>a(14), datab=>a(12), 
      datad=>nx_mult_32_45_vcc_net, cin=>nx4241z8);
   modgen_add_3_ix4241z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx4241z8, dataa=>a(13), datab=>a(11), 
      datad=>nx_mult_32_45_vcc_net, cin=>nx4241z10);
   modgen_add_3_ix4241z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx4241z10, dataa=>a(12), datab=>
      a(10), datad=>nx_mult_32_45_vcc_net, cin=>nx4241z12);
   modgen_add_3_ix4241z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx4241z12, dataa=>a(11), datab=>a(9), 
      datad=>nx_mult_32_45_vcc_net, cin=>nx4241z14);
   modgen_add_3_ix4241z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx4241z14, dataa=>a(10), datab=>a(8), 
      datad=>nx_mult_32_45_vcc_net, cin=>nx4241z16);
   modgen_add_3_ix4241z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx4241z16, dataa=>a(9), datab=>a(7), 
      datad=>nx_mult_32_45_vcc_net, cin=>nx4241z18);
   modgen_add_3_ix4241z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx4241z18, dataa=>a(8), datab=>a(6), 
      datad=>nx_mult_32_45_vcc_net, cin=>nx4241z20);
   modgen_add_3_ix4241z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx4241z20, dataa=>a(7), datab=>a(5), 
      datad=>nx_mult_32_45_vcc_net, cin=>nx4241z22);
   modgen_add_3_ix4241z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx4241z22, dataa=>a(6), datab=>a(4), 
      datad=>nx_mult_32_45_vcc_net, cin=>nx4241z24);
   modgen_add_3_ix4241z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx4241z24, dataa=>a(5), datab=>a(3), 
      datad=>nx_mult_32_45_vcc_net, cin=>nx4241z26);
   modgen_add_3_ix4241z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx4241z26, dataa=>a(4), datab=>a(2), datad=>
      nx_mult_32_45_vcc_net, cin=>nx4241z28);
   modgen_add_3_ix4241z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx4241z28, dataa=>a(3), datab=>a(1), datad=>
      nx_mult_32_45_vcc_net, cin=>nx4241z30);
   modgen_add_3_ix4241z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx4241z30, dataa=>a(0), datab=>a(2), datad=>
      nx_mult_32_45_vcc_net);
   ix4241z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(17), datad=>nx_mult_32_45_vcc_net, cin=>
      nx4241z2);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_46 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_46 ;

architecture IMPLEMENTATION of mult_32_46 is 
   signal d_11_EXMPLR532, d_10_EXMPLR533, d_9_EXMPLR534, d_8_EXMPLR535, 
      d_7_EXMPLR536, d_6_EXMPLR537, d_5_EXMPLR538, d_4_EXMPLR539, 
      d_3_EXMPLR540, d_2_EXMPLR541, b_10_EXMPLR543, nx3244z2, nx3244z16, 
      nx3244z15, nx3244z14, nx3244z13, nx3244z12, nx3244z11, nx3244z10, 
      nx3244z9, nx3244z8, nx3244z7, nx3244z6, nx3244z26, nx3244z25, 
      nx3244z24, nx3244z23, nx3244z22, nx3244z21, nx3244z20, nx3244z19, 
      nx3244z18, nx3244z17, nx3244z4, nx3244z3, nx3244z5, 
      nx_mult_32_46_vcc_net: std_logic ;

begin
   d(20) <= a(31) ;
   d(19) <= a(31) ;
   d(18) <= a(14) ;
   d(17) <= a(31) ;
   modgen_add_5_ix3244z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx3244z2, dataa=>a(31), datab=>a(14), 
      datad=>nx_mult_32_46_vcc_net, cin=>nx3244z3);
   nx_mult_32_46_vcc_net <= '1';
   modgen_add_5_ix3244z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx3244z3, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_46_vcc_net, cin=>nx3244z4);
   modgen_add_5_ix3244z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx3244z4, dataa=>nx3244z5, datab=>
      a(10), datad=>nx_mult_32_46_vcc_net, cin=>nx3244z17);
   modgen_add_5_ix3244z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx3244z17, dataa=>d_11_EXMPLR532, 
      datab=>a(9), datad=>nx_mult_32_46_vcc_net, cin=>nx3244z18);
   modgen_add_5_ix3244z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx3244z18, dataa=>d_10_EXMPLR533, 
      datab=>a(8), datad=>nx_mult_32_46_vcc_net, cin=>nx3244z19);
   modgen_add_5_ix3244z52943 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx3244z19, dataa=>d_9_EXMPLR534, 
      datab=>a(7), datad=>nx_mult_32_46_vcc_net, cin=>nx3244z20);
   modgen_add_5_ix3244z52944 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx3244z20, dataa=>d_8_EXMPLR535, 
      datab=>a(6), datad=>nx_mult_32_46_vcc_net, cin=>nx3244z21);
   modgen_add_5_ix3244z52945 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx3244z21, dataa=>d_7_EXMPLR536, 
      datab=>a(5), datad=>nx_mult_32_46_vcc_net, cin=>nx3244z22);
   modgen_add_5_ix3244z52946 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx3244z22, dataa=>d_6_EXMPLR537, 
      datab=>a(4), datad=>nx_mult_32_46_vcc_net, cin=>nx3244z23);
   modgen_add_5_ix3244z52947 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx3244z23, dataa=>d_5_EXMPLR538, 
      datab=>a(3), datad=>nx_mult_32_46_vcc_net, cin=>nx3244z24);
   modgen_add_5_ix3244z52948 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx3244z24, dataa=>d_4_EXMPLR539, datab=>a(2), datad
      =>nx_mult_32_46_vcc_net, cin=>nx3244z25);
   modgen_add_5_ix3244z52949 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx3244z25, dataa=>d_3_EXMPLR540, datab=>a(1), datad
      =>nx_mult_32_46_vcc_net, cin=>nx3244z26);
   modgen_add_5_ix3244z52950 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx3244z26, dataa=>a(0), datab=>d_2_EXMPLR541, datad
      =>nx_mult_32_46_vcc_net);
   modgen_add_4_ix3244z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_11_EXMPLR532, cout=>b_10_EXMPLR543, dataa=>
      a(14), datab=>a(11), datad=>nx_mult_32_46_vcc_net, cin=>nx3244z6);
   modgen_add_4_ix3244z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_10_EXMPLR533, cout=>nx3244z6, dataa=>a(11), 
      datab=>a(10), datad=>nx_mult_32_46_vcc_net, cin=>nx3244z7);
   modgen_add_4_ix3244z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_9_EXMPLR534, cout=>nx3244z7, dataa=>a(10), 
      datab=>a(9), datad=>nx_mult_32_46_vcc_net, cin=>nx3244z8);
   modgen_add_4_ix3244z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_8_EXMPLR535, cout=>nx3244z8, dataa=>a(9), datab
      =>a(8), datad=>nx_mult_32_46_vcc_net, cin=>nx3244z9);
   modgen_add_4_ix3244z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_7_EXMPLR536, cout=>nx3244z9, dataa=>a(8), datab
      =>a(7), datad=>nx_mult_32_46_vcc_net, cin=>nx3244z10);
   modgen_add_4_ix3244z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_6_EXMPLR537, cout=>nx3244z10, dataa=>a(7), 
      datab=>a(6), datad=>nx_mult_32_46_vcc_net, cin=>nx3244z11);
   modgen_add_4_ix3244z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_5_EXMPLR538, cout=>nx3244z11, dataa=>a(6), 
      datab=>a(5), datad=>nx_mult_32_46_vcc_net, cin=>nx3244z12);
   modgen_add_4_ix3244z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_4_EXMPLR539, cout=>nx3244z12, dataa=>a(5), 
      datab=>a(4), datad=>nx_mult_32_46_vcc_net, cin=>nx3244z13);
   modgen_add_4_ix3244z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_3_EXMPLR540, cout=>nx3244z13, dataa=>a(4), 
      datab=>a(3), datad=>nx_mult_32_46_vcc_net, cin=>nx3244z14);
   modgen_add_4_ix3244z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_2_EXMPLR541, cout=>nx3244z14, dataa=>a(3), 
      datab=>a(2), datad=>nx_mult_32_46_vcc_net, cin=>nx3244z15);
   modgen_add_4_ix3244z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx3244z15, dataa=>a(2), datab=>a(1), datad=>
      nx_mult_32_46_vcc_net, cin=>nx3244z16);
   modgen_add_4_ix3244z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx3244z16, dataa=>a(0), datab=>a(1), datad=>
      nx_mult_32_46_vcc_net);
   ix3244z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), datad=>nx_mult_32_46_vcc_net, cin=>
      nx3244z2);
   ix3244z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>nx3244z5, datad=>nx_mult_32_46_vcc_net, cin=>
      b_10_EXMPLR543);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_47 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0) ;
      p_modgen_add_6_nx48 : OUT std_logic ;
      p_modgen_add_6_nx40 : OUT std_logic) ;
end mult_32_47 ;

architecture IMPLEMENTATION of mult_32_47 is 
   signal nx41961z2, nx41961z3, nx41961z5, nx41961z4: std_logic ;

begin
   ix41961z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx41961z4, dataa=>a(3), datab=>a(4));
   ix41961z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx41961z5, dataa=>a(3), datab=>a(4));
   ix41961z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx41961z2, dataa=>a(2), datab=>a(3));
   ix44471z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ea88") 
       port map ( combout=>p_modgen_add_6_nx40, dataa=>a(2), datab=>a(3), 
      datac=>a(0), datad=>a(1));
   ix41961z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"ea00") 
       port map ( combout=>nx41961z3, dataa=>a(2), datab=>a(3), datac=>a(0), 
      datad=>a(1));
   ix44479z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6666") 
       port map ( combout=>p_modgen_add_6_nx48, dataa=>a(4), datab=>a(3));
   ix41961z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ee1e") 
       port map ( combout=>d(4), dataa=>nx41961z2, datab=>nx41961z3, datac=>
      nx41961z4, datad=>nx41961z5);
end IMPLEMENTATION ;

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
   signal nx2247z45, nx2247z42, nx2247z39, nx2247z36, nx2247z33, nx2247z30, 
      nx2247z27, nx2247z24, nx2247z21, nx2247z18, nx2247z15, nx2247z12, 
      nx2247z9, nx2247z6, nx2247z4, nx_add_16_0_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z15, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_0_vcc_net, cin=>nx2247z18);
   nx_add_16_0_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z18, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z21);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z21, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z24);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z24, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z27);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z27, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z30);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z30, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z33);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z33, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z36);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z36, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z39);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z39, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z42);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z42, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z45);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z45, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_0_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_0_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(15), datab=>a(14), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z6);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z6, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z9);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z9, dataa=>b(12), datab=>a(12), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z12);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z12, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_0_vcc_net, cin=>nx2247z15);
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
   signal nx2247z41, nx2247z38, nx2247z35, nx2247z32, nx2247z29, nx2247z26, 
      nx2247z23, nx2247z20, nx2247z17, nx2247z14, nx2247z11, nx2247z8, 
      nx2247z6, nx2247z5, nx2247z4, nx_add_16_1_vcc_net: std_logic ;

begin
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z8, dataa=>b(11), datab=>a(11), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z11);
   nx_add_16_1_vcc_net <= '1';
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z11, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_1_vcc_net, cin=>nx2247z14);
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z14, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z17);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z17, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z20);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z20, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z23);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z23, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z26);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z26, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z29);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z29, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z32);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z32, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z35);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z35, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z38);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z38, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z41);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z41, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_1_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_1_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(15), datab=>a(15), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z5);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z5, dataa=>b(15), datab=>a(15), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z6);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z6, dataa=>b(15), datab=>a(12), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z8);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_2 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_2 ;

architecture IMPLEMENTATION of add_16_2 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_2_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_2_vcc_net, cin=>nx2247z19);
   nx_add_16_2_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_2_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_2_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_2_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_2_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_3 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_3 ;

architecture IMPLEMENTATION of add_16_3 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_3_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_3_vcc_net, cin=>nx2247z19);
   nx_add_16_3_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_3_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_3_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_3_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_3_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_4 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_modgen_add_6_nx48 : IN std_logic ;
      p_modgen_add_6_nx40 : IN std_logic) ;
end add_16_4 ;

architecture IMPLEMENTATION of add_16_4 is 
   signal nx2247z32, nx2247z30, nx2247z28, nx2247z26, nx2247z24, nx2247z22, 
      nx2247z20, nx2247z18, nx2247z16, nx2247z14, nx2247z12, nx2247z10, 
      nx2247z8, nx2247z6, nx2247z4, nx2247z35, nx_add_16_4_vcc_net: 
   std_logic ;

begin
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>a(14), datab=>a(14), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z6);
   nx_add_16_4_vcc_net <= '1';
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z6, dataa=>a(13), datab=>a(13), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z8);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z8, dataa=>a(12), datab=>a(12), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z10);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z10, dataa=>a(11), datab=>
      a(11), datad=>nx_add_16_4_vcc_net, cin=>nx2247z12);
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z12, dataa=>a(10), datab=>
      a(10), datad=>nx_add_16_4_vcc_net, cin=>nx2247z14);
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z14, dataa=>a(9), datab=>a(9), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z16);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z16, dataa=>a(8), datab=>a(8), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z18);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z18, dataa=>a(7), datab=>a(7), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z20);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z20, dataa=>a(6), datab=>a(6), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z22);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z22, dataa=>a(5), datab=>a(5), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z24);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z24, dataa=>a(4), datab=>a(4), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z26);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z26, dataa=>a(3), datab=>a(3), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z28);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z28, dataa=>a(2), datab=>a(2), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z30);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z30, dataa=>a(1), datab=>a(1), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z32);
   ix2247z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"00aa") 
       port map ( cout=>nx2247z35, dataa=>a(0), datad=>nx_add_16_4_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_4_vcc_net, cin=>nx2247z4);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"9660",
         sum_lutc_input => "cin") 
       port map ( combout=>d(0), cout=>nx2247z32, dataa=>p_modgen_add_6_nx40, 
      datab=>p_modgen_add_6_nx48, datad=>nx_add_16_4_vcc_net, cin=>nx2247z35
   );
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_5 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_5 ;

architecture IMPLEMENTATION of add_16_5 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_5_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_5_vcc_net, cin=>nx2247z19);
   nx_add_16_5_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_5_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_5_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_5_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_5_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_6 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_6 ;

architecture IMPLEMENTATION of add_16_6 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_6_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_6_vcc_net, cin=>nx2247z19);
   nx_add_16_6_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_6_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_6_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_6_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_6_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_7 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_modgen_add_6_nx48 : IN std_logic ;
      p_modgen_add_6_nx40 : IN std_logic) ;
end add_16_7 ;

architecture IMPLEMENTATION of add_16_7 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx2247z49, nx_add_16_7_vcc_net: 
   std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_7_vcc_net, cin=>nx2247z19);
   nx_add_16_7_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z46);
   ix2247z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"00aa") 
       port map ( cout=>nx2247z49, dataa=>b(0), datad=>nx_add_16_7_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_7_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_7_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_7_vcc_net, cin=>nx2247z16);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"9660",
         sum_lutc_input => "cin") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>p_modgen_add_6_nx40, 
      datab=>p_modgen_add_6_nx48, datad=>nx_add_16_7_vcc_net, cin=>nx2247z49
   );
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_8 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_8 ;

architecture IMPLEMENTATION of add_16_8 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_8_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_8_vcc_net, cin=>nx2247z19);
   nx_add_16_8_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_8_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_8_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_8_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_8_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_9 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_9 ;

architecture IMPLEMENTATION of add_16_9 is 
   signal nx2247z41, nx2247z38, nx2247z35, nx2247z32, nx2247z29, nx2247z26, 
      nx2247z23, nx2247z20, nx2247z17, nx2247z15, nx2247z13, nx2247z10, 
      nx2247z8, nx2247z6, nx2247z4, nx_add_16_9_vcc_net: std_logic ;

begin
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z10, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_9_vcc_net, cin=>nx2247z13);
   nx_add_16_9_vcc_net <= '1';
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z13, dataa=>b(11), datab=>
      a(10), datad=>nx_add_16_9_vcc_net, cin=>nx2247z15);
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z15, dataa=>b(11), datab=>a(9), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z17);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z17, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z20);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z20, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z23);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z23, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z26);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z26, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z29);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z29, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z32);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z32, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z35);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z35, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z38);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z38, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z41);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z41, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_9_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_9_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(15), datab=>a(14), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z6);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z6, dataa=>b(15), datab=>a(13), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z8);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z8, dataa=>b(15), datab=>a(12), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z10);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_10 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_10 ;

architecture IMPLEMENTATION of add_16_10 is 
   signal nx2247z45, nx2247z42, nx2247z39, nx2247z36, nx2247z33, nx2247z30, 
      nx2247z27, nx2247z24, nx2247z21, nx2247z18, nx2247z15, nx2247z12, 
      nx2247z9, nx2247z6, nx2247z4, nx_add_16_10_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z15, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_10_vcc_net, cin=>nx2247z18);
   nx_add_16_10_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z18, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z21);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z21, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z24);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z24, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z27);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z27, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z30);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z30, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z33);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z33, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z36);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z36, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z39);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z39, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z42);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z42, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z45);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z45, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_10_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_10_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(15), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z6);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z6, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z9);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z9, dataa=>b(12), datab=>a(12), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z12);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z12, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_10_vcc_net, cin=>nx2247z15);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_11 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_11 ;

architecture IMPLEMENTATION of add_16_11 is 
   signal nx2247z45, nx2247z42, nx2247z39, nx2247z36, nx2247z33, nx2247z30, 
      nx2247z27, nx2247z24, nx2247z21, nx2247z18, nx2247z15, nx2247z12, 
      nx2247z9, nx2247z6, nx2247z4, nx_add_16_11_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z15, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_11_vcc_net, cin=>nx2247z18);
   nx_add_16_11_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z18, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z21);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z21, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z24);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z24, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z27);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z27, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z30);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z30, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z33);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z33, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z36);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z36, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z39);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z39, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z42);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z42, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z45);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z45, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_11_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_11_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(15), datab=>a(14), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z6);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z6, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z9);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z9, dataa=>b(12), datab=>a(12), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z12);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z12, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_11_vcc_net, cin=>nx2247z15);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_12 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_12 ;

architecture IMPLEMENTATION of add_16_12 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_12_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_12_vcc_net, cin=>nx2247z19);
   nx_add_16_12_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_12_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_12_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_12_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_12_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_13 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_13 ;

architecture IMPLEMENTATION of add_16_13 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_13_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_13_vcc_net, cin=>nx2247z19);
   nx_add_16_13_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_13_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_13_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_13_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_13_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_14 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_14 ;

architecture IMPLEMENTATION of add_16_14 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_14_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_14_vcc_net, cin=>nx2247z19);
   nx_add_16_14_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_14_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_14_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_14_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_14_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity fir is 
   port (
      clk : IN std_logic ;
      i_data : IN std_logic_vector (15 DOWNTO 0) ;
      o_data : OUT std_logic_vector (15 DOWNTO 0)) ;
end fir ;

architecture low_pass_unfold_1889 of fir is 
   component mult_32_42
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component mult_32_43
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component mult_32_44
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component mult_32_45
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component mult_32_46
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component mult_32_47
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0) ;
         p_modgen_add_6_nx48 : OUT std_logic ;
         p_modgen_add_6_nx40 : OUT std_logic) ;
   end component ;
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
   component add_16_2
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_3
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_4
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_modgen_add_6_nx48 : IN std_logic ;
         p_modgen_add_6_nx40 : IN std_logic) ;
   end component ;
   component add_16_5
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_6
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_7
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_modgen_add_6_nx48 : IN std_logic ;
         p_modgen_add_6_nx40 : IN std_logic) ;
   end component ;
   component add_16_8
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_9
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_10
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_11
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_12
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_13
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_14
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal prod_0: std_logic_vector (14 DOWNTO 0) ;
   
   signal prod_1: std_logic_vector (13 DOWNTO 0) ;
   
   signal prod_2: std_logic_vector (13 DOWNTO 0) ;
   
   signal prod_4: std_logic_vector (14 DOWNTO 0) ;
   
   signal prod_5: std_logic_vector (14 DOWNTO 0) ;
   
   signal prod_6_0, nx3_bus_15, nx3_bus_14, nx3_bus_13, nx3_bus_12, 
      nx3_bus_11, nx3_bus_10, nx3_bus_9, nx3_bus_8, nx3_bus_7, nx3_bus_6, 
      nx3_bus_5, nx3_bus_4, nx3_bus_3, nx3_bus_2, nx3_bus_1, nx3_bus_0, 
      nx23_bus_15, nx23_bus_14, nx23_bus_13, nx23_bus_12, nx23_bus_11, 
      nx23_bus_10, nx23_bus_9, nx23_bus_8, nx23_bus_7, nx23_bus_6, 
      nx23_bus_5, nx23_bus_4, nx23_bus_3, nx23_bus_2, nx23_bus_1, nx23_bus_0, 
      nx43_bus_15, nx43_bus_14, nx43_bus_13, nx43_bus_12, nx43_bus_11, 
      nx43_bus_10, nx43_bus_9, nx43_bus_8, nx43_bus_7, nx43_bus_6, 
      nx43_bus_5, nx43_bus_4, nx43_bus_3, nx43_bus_2, nx43_bus_1, nx43_bus_0, 
      nx63_bus_15, nx63_bus_14, nx63_bus_13, nx63_bus_12, nx63_bus_11, 
      nx63_bus_10, nx63_bus_9, nx63_bus_8, nx63_bus_7, nx63_bus_6, 
      nx63_bus_5, nx63_bus_4, nx63_bus_3, nx63_bus_2, nx63_bus_1, nx63_bus_0, 
      nx83_bus_15, nx83_bus_14, nx83_bus_13, nx83_bus_12, nx83_bus_11, 
      nx83_bus_10, nx83_bus_9, nx83_bus_8, nx83_bus_7, nx83_bus_6, 
      nx83_bus_5, nx83_bus_4, nx83_bus_3, nx83_bus_2, nx83_bus_1, nx83_bus_0, 
      nx103_bus_15, nx103_bus_14, nx103_bus_13, nx103_bus_12, nx103_bus_11, 
      nx103_bus_10, nx103_bus_9, nx103_bus_8, nx103_bus_7, nx103_bus_6, 
      nx103_bus_5, nx103_bus_4, nx103_bus_3, nx103_bus_2, nx103_bus_1, 
      nx103_bus_0, nx123_bus_15, nx123_bus_14, nx123_bus_13, nx123_bus_12, 
      nx123_bus_11, nx123_bus_10, nx123_bus_9, nx123_bus_8, nx123_bus_7, 
      nx123_bus_6, nx123_bus_5, nx123_bus_4, nx123_bus_3, nx123_bus_2, 
      nx123_bus_1, nx123_bus_0, nx163_bus_15, nx163_bus_14, nx163_bus_13, 
      nx163_bus_12, nx163_bus_11, nx163_bus_10, nx163_bus_9, nx163_bus_8, 
      nx163_bus_7, nx163_bus_6, nx163_bus_5, nx163_bus_4, nx163_bus_3, 
      nx163_bus_2, nx163_bus_1, nx163_bus_0, nx183_bus_15, nx183_bus_14, 
      nx183_bus_13, nx183_bus_12, nx183_bus_11, nx183_bus_10, nx183_bus_9, 
      nx183_bus_8, nx183_bus_7, nx183_bus_6, nx183_bus_5, nx183_bus_4, 
      nx183_bus_3, nx183_bus_2, nx183_bus_1, nx183_bus_0, nx203_bus_15, 
      nx203_bus_14, nx203_bus_13, nx203_bus_12, nx203_bus_11, nx203_bus_10, 
      nx203_bus_9, nx203_bus_8, nx203_bus_7, nx203_bus_6, nx203_bus_5, 
      nx203_bus_4, nx203_bus_3, nx203_bus_2, nx203_bus_1, nx203_bus_0, 
      nx223_bus_15, nx223_bus_14, nx223_bus_13, nx223_bus_12, nx223_bus_11, 
      nx223_bus_10, nx223_bus_9, nx223_bus_8, nx223_bus_7, nx223_bus_6, 
      nx223_bus_5, nx223_bus_4, nx223_bus_3, nx223_bus_2, nx223_bus_1, 
      nx223_bus_0: std_logic ;
   
   signal nx243_bus: std_logic_vector (16 DOWNTO 1) ;
   
   signal nx262_bus: std_logic_vector (16 DOWNTO 1) ;
   
   signal nx281_bus: std_logic_vector (16 DOWNTO 1) ;
   
   signal nx49523z1, nx49523z2: std_logic ;
   
   signal DANGLING : std_logic_vector (477 downto 0 );

begin
   prod_0_mults21_0 : mult_32_42 port map ( a(31)=>i_data(15), a(30)=>
      DANGLING(0), a(29)=>DANGLING(1), a(28)=>DANGLING(2), a(27)=>DANGLING(3
      ), a(26)=>DANGLING(4), a(25)=>DANGLING(5), a(24)=>DANGLING(6), a(23)=>
      DANGLING(7), a(22)=>DANGLING(8), a(21)=>DANGLING(9), a(20)=>DANGLING(
      10), a(19)=>DANGLING(11), a(18)=>DANGLING(12), a(17)=>DANGLING(13), 
      a(16)=>DANGLING(14), a(15)=>DANGLING(15), a(14)=>i_data(14), a(13)=>
      i_data(14), a(12)=>i_data(14), a(11)=>i_data(11), a(10)=>i_data(10), 
      a(9)=>i_data(9), a(8)=>i_data(8), a(7)=>i_data(7), a(6)=>i_data(6), 
      a(5)=>i_data(5), a(4)=>i_data(4), a(3)=>i_data(3), a(2)=>i_data(2), 
      a(1)=>i_data(1), a(0)=>i_data(0), b(31)=>DANGLING(16), b(30)=>DANGLING
      (17), b(29)=>DANGLING(18), b(28)=>DANGLING(19), b(27)=>DANGLING(20), 
      b(26)=>DANGLING(21), b(25)=>DANGLING(22), b(24)=>DANGLING(23), b(23)=>
      DANGLING(24), b(22)=>DANGLING(25), b(21)=>DANGLING(26), b(20)=>
      DANGLING(27), b(19)=>DANGLING(28), b(18)=>DANGLING(29), b(17)=>
      DANGLING(30), b(16)=>DANGLING(31), b(15)=>DANGLING(32), b(14)=>
      DANGLING(33), b(13)=>DANGLING(34), b(12)=>DANGLING(35), b(11)=>
      DANGLING(36), b(10)=>DANGLING(37), b(9)=>DANGLING(38), b(8)=>DANGLING(
      39), b(7)=>DANGLING(40), b(6)=>DANGLING(41), b(5)=>DANGLING(42), b(4)
      =>DANGLING(43), b(3)=>DANGLING(44), b(2)=>DANGLING(45), b(1)=>DANGLING
      (46), b(0)=>DANGLING(47), d(31)=>DANGLING(48), d(30)=>DANGLING(49), 
      d(29)=>DANGLING(50), d(28)=>DANGLING(51), d(27)=>DANGLING(52), d(26)=>
      DANGLING(53), d(25)=>DANGLING(54), d(24)=>DANGLING(55), d(23)=>
      DANGLING(56), d(22)=>DANGLING(57), d(21)=>DANGLING(58), d(20)=>
      prod_0(14), d(19)=>prod_0(13), d(18)=>prod_0(12), d(17)=>prod_0(11), 
      d(16)=>prod_0(10), d(15)=>prod_0(9), d(14)=>prod_0(8), d(13)=>
      prod_0(7), d(12)=>prod_0(6), d(11)=>prod_0(5), d(10)=>prod_0(4), d(9)
      =>prod_0(3), d(8)=>prod_0(2), d(7)=>prod_0(1), d(6)=>prod_0(0), d(5)=>
      DANGLING(59), d(4)=>DANGLING(60), d(3)=>DANGLING(61), d(2)=>DANGLING(
      62), d(1)=>DANGLING(63), d(0)=>DANGLING(64));
   prod_1_mults19_1 : mult_32_43 port map ( a(31)=>i_data(15), a(30)=>
      DANGLING(65), a(29)=>DANGLING(66), a(28)=>DANGLING(67), a(27)=>
      DANGLING(68), a(26)=>DANGLING(69), a(25)=>DANGLING(70), a(24)=>
      DANGLING(71), a(23)=>DANGLING(72), a(22)=>DANGLING(73), a(21)=>
      DANGLING(74), a(20)=>DANGLING(75), a(19)=>DANGLING(76), a(18)=>
      DANGLING(77), a(17)=>DANGLING(78), a(16)=>DANGLING(79), a(15)=>
      DANGLING(80), a(14)=>i_data(14), a(13)=>i_data(14), a(12)=>i_data(14), 
      a(11)=>i_data(11), a(10)=>i_data(10), a(9)=>i_data(9), a(8)=>i_data(8), 
      a(7)=>i_data(7), a(6)=>i_data(6), a(5)=>i_data(5), a(4)=>i_data(4), 
      a(3)=>i_data(3), a(2)=>i_data(2), a(1)=>i_data(1), a(0)=>i_data(0), 
      b(31)=>DANGLING(81), b(30)=>DANGLING(82), b(29)=>DANGLING(83), b(28)=>
      DANGLING(84), b(27)=>DANGLING(85), b(26)=>DANGLING(86), b(25)=>
      DANGLING(87), b(24)=>DANGLING(88), b(23)=>DANGLING(89), b(22)=>
      DANGLING(90), b(21)=>DANGLING(91), b(20)=>DANGLING(92), b(19)=>
      DANGLING(93), b(18)=>DANGLING(94), b(17)=>DANGLING(95), b(16)=>
      DANGLING(96), b(15)=>DANGLING(97), b(14)=>DANGLING(98), b(13)=>
      DANGLING(99), b(12)=>DANGLING(100), b(11)=>DANGLING(101), b(10)=>
      DANGLING(102), b(9)=>DANGLING(103), b(8)=>DANGLING(104), b(7)=>
      DANGLING(105), b(6)=>DANGLING(106), b(5)=>DANGLING(107), b(4)=>
      DANGLING(108), b(3)=>DANGLING(109), b(2)=>DANGLING(110), b(1)=>
      DANGLING(111), b(0)=>DANGLING(112), d(31)=>DANGLING(113), d(30)=>
      DANGLING(114), d(29)=>DANGLING(115), d(28)=>DANGLING(116), d(27)=>
      DANGLING(117), d(26)=>DANGLING(118), d(25)=>DANGLING(119), d(24)=>
      DANGLING(120), d(23)=>DANGLING(121), d(22)=>DANGLING(122), d(21)=>
      DANGLING(123), d(20)=>DANGLING(124), d(19)=>DANGLING(125), d(18)=>
      prod_1(13), d(17)=>prod_1(12), d(16)=>prod_1(11), d(15)=>prod_1(10), 
      d(14)=>prod_1(9), d(13)=>prod_1(8), d(12)=>prod_1(7), d(11)=>prod_1(6), 
      d(10)=>prod_1(5), d(9)=>prod_1(4), d(8)=>prod_1(3), d(7)=>prod_1(2), 
      d(6)=>prod_1(1), d(5)=>prod_1(0), d(4)=>DANGLING(126), d(3)=>DANGLING(
      127), d(2)=>DANGLING(128), d(1)=>DANGLING(129), d(0)=>DANGLING(130));
   prod_2_mults20_2 : mult_32_44 port map ( a(31)=>i_data(15), a(30)=>
      DANGLING(131), a(29)=>DANGLING(132), a(28)=>DANGLING(133), a(27)=>
      DANGLING(134), a(26)=>DANGLING(135), a(25)=>DANGLING(136), a(24)=>
      DANGLING(137), a(23)=>DANGLING(138), a(22)=>DANGLING(139), a(21)=>
      DANGLING(140), a(20)=>DANGLING(141), a(19)=>DANGLING(142), a(18)=>
      DANGLING(143), a(17)=>DANGLING(144), a(16)=>DANGLING(145), a(15)=>
      DANGLING(146), a(14)=>i_data(14), a(13)=>i_data(14), a(12)=>i_data(14), 
      a(11)=>i_data(11), a(10)=>i_data(10), a(9)=>i_data(9), a(8)=>i_data(8), 
      a(7)=>i_data(7), a(6)=>i_data(6), a(5)=>i_data(5), a(4)=>i_data(4), 
      a(3)=>i_data(3), a(2)=>i_data(2), a(1)=>i_data(1), a(0)=>i_data(0), 
      b(31)=>DANGLING(147), b(30)=>DANGLING(148), b(29)=>DANGLING(149), 
      b(28)=>DANGLING(150), b(27)=>DANGLING(151), b(26)=>DANGLING(152), 
      b(25)=>DANGLING(153), b(24)=>DANGLING(154), b(23)=>DANGLING(155), 
      b(22)=>DANGLING(156), b(21)=>DANGLING(157), b(20)=>DANGLING(158), 
      b(19)=>DANGLING(159), b(18)=>DANGLING(160), b(17)=>DANGLING(161), 
      b(16)=>DANGLING(162), b(15)=>DANGLING(163), b(14)=>DANGLING(164), 
      b(13)=>DANGLING(165), b(12)=>DANGLING(166), b(11)=>DANGLING(167), 
      b(10)=>DANGLING(168), b(9)=>DANGLING(169), b(8)=>DANGLING(170), b(7)=>
      DANGLING(171), b(6)=>DANGLING(172), b(5)=>DANGLING(173), b(4)=>
      DANGLING(174), b(3)=>DANGLING(175), b(2)=>DANGLING(176), b(1)=>
      DANGLING(177), b(0)=>DANGLING(178), d(31)=>DANGLING(179), d(30)=>
      DANGLING(180), d(29)=>DANGLING(181), d(28)=>DANGLING(182), d(27)=>
      DANGLING(183), d(26)=>DANGLING(184), d(25)=>DANGLING(185), d(24)=>
      DANGLING(186), d(23)=>DANGLING(187), d(22)=>DANGLING(188), d(21)=>
      DANGLING(189), d(20)=>DANGLING(190), d(19)=>prod_2(13), d(18)=>
      prod_2(12), d(17)=>prod_2(11), d(16)=>prod_2(10), d(15)=>prod_2(9), 
      d(14)=>prod_2(8), d(13)=>prod_2(7), d(12)=>prod_2(6), d(11)=>prod_2(5), 
      d(10)=>prod_2(4), d(9)=>prod_2(3), d(8)=>prod_2(2), d(7)=>prod_2(1), 
      d(6)=>prod_2(0), d(5)=>DANGLING(191), d(4)=>DANGLING(192), d(3)=>
      DANGLING(193), d(2)=>DANGLING(194), d(1)=>DANGLING(195), d(0)=>
      DANGLING(196));
   prod_4_mults20_3 : mult_32_45 port map ( a(31)=>i_data(15), a(30)=>
      DANGLING(197), a(29)=>DANGLING(198), a(28)=>DANGLING(199), a(27)=>
      DANGLING(200), a(26)=>DANGLING(201), a(25)=>DANGLING(202), a(24)=>
      DANGLING(203), a(23)=>DANGLING(204), a(22)=>DANGLING(205), a(21)=>
      DANGLING(206), a(20)=>DANGLING(207), a(19)=>DANGLING(208), a(18)=>
      DANGLING(209), a(17)=>DANGLING(210), a(16)=>DANGLING(211), a(15)=>
      DANGLING(212), a(14)=>i_data(14), a(13)=>i_data(14), a(12)=>i_data(14), 
      a(11)=>i_data(11), a(10)=>i_data(10), a(9)=>i_data(9), a(8)=>i_data(8), 
      a(7)=>i_data(7), a(6)=>i_data(6), a(5)=>i_data(5), a(4)=>i_data(4), 
      a(3)=>i_data(3), a(2)=>i_data(2), a(1)=>i_data(1), a(0)=>i_data(0), 
      b(31)=>DANGLING(213), b(30)=>DANGLING(214), b(29)=>DANGLING(215), 
      b(28)=>DANGLING(216), b(27)=>DANGLING(217), b(26)=>DANGLING(218), 
      b(25)=>DANGLING(219), b(24)=>DANGLING(220), b(23)=>DANGLING(221), 
      b(22)=>DANGLING(222), b(21)=>DANGLING(223), b(20)=>DANGLING(224), 
      b(19)=>DANGLING(225), b(18)=>DANGLING(226), b(17)=>DANGLING(227), 
      b(16)=>DANGLING(228), b(15)=>DANGLING(229), b(14)=>DANGLING(230), 
      b(13)=>DANGLING(231), b(12)=>DANGLING(232), b(11)=>DANGLING(233), 
      b(10)=>DANGLING(234), b(9)=>DANGLING(235), b(8)=>DANGLING(236), b(7)=>
      DANGLING(237), b(6)=>DANGLING(238), b(5)=>DANGLING(239), b(4)=>
      DANGLING(240), b(3)=>DANGLING(241), b(2)=>DANGLING(242), b(1)=>
      DANGLING(243), b(0)=>DANGLING(244), d(31)=>DANGLING(245), d(30)=>
      DANGLING(246), d(29)=>DANGLING(247), d(28)=>DANGLING(248), d(27)=>
      DANGLING(249), d(26)=>DANGLING(250), d(25)=>DANGLING(251), d(24)=>
      DANGLING(252), d(23)=>DANGLING(253), d(22)=>DANGLING(254), d(21)=>
      DANGLING(255), d(20)=>DANGLING(256), d(19)=>prod_4(14), d(18)=>
      prod_4(13), d(17)=>prod_4(12), d(16)=>prod_4(11), d(15)=>prod_4(10), 
      d(14)=>prod_4(9), d(13)=>prod_4(8), d(12)=>prod_4(7), d(11)=>prod_4(6), 
      d(10)=>prod_4(5), d(9)=>prod_4(4), d(8)=>prod_4(3), d(7)=>prod_4(2), 
      d(6)=>prod_4(1), d(5)=>prod_4(0), d(4)=>DANGLING(257), d(3)=>DANGLING(
      258), d(2)=>DANGLING(259), d(1)=>DANGLING(260), d(0)=>DANGLING(261));
   prod_5_mults21_4 : mult_32_46 port map ( a(31)=>i_data(15), a(30)=>
      DANGLING(262), a(29)=>DANGLING(263), a(28)=>DANGLING(264), a(27)=>
      DANGLING(265), a(26)=>DANGLING(266), a(25)=>DANGLING(267), a(24)=>
      DANGLING(268), a(23)=>DANGLING(269), a(22)=>DANGLING(270), a(21)=>
      DANGLING(271), a(20)=>DANGLING(272), a(19)=>DANGLING(273), a(18)=>
      DANGLING(274), a(17)=>DANGLING(275), a(16)=>DANGLING(276), a(15)=>
      DANGLING(277), a(14)=>i_data(14), a(13)=>DANGLING(278), a(12)=>
      DANGLING(279), a(11)=>i_data(11), a(10)=>i_data(10), a(9)=>i_data(9), 
      a(8)=>i_data(8), a(7)=>i_data(7), a(6)=>i_data(6), a(5)=>i_data(5), 
      a(4)=>i_data(4), a(3)=>i_data(3), a(2)=>i_data(2), a(1)=>i_data(1), 
      a(0)=>i_data(0), b(31)=>DANGLING(280), b(30)=>DANGLING(281), b(29)=>
      DANGLING(282), b(28)=>DANGLING(283), b(27)=>DANGLING(284), b(26)=>
      DANGLING(285), b(25)=>DANGLING(286), b(24)=>DANGLING(287), b(23)=>
      DANGLING(288), b(22)=>DANGLING(289), b(21)=>DANGLING(290), b(20)=>
      DANGLING(291), b(19)=>DANGLING(292), b(18)=>DANGLING(293), b(17)=>
      DANGLING(294), b(16)=>DANGLING(295), b(15)=>DANGLING(296), b(14)=>
      DANGLING(297), b(13)=>DANGLING(298), b(12)=>DANGLING(299), b(11)=>
      DANGLING(300), b(10)=>DANGLING(301), b(9)=>DANGLING(302), b(8)=>
      DANGLING(303), b(7)=>DANGLING(304), b(6)=>DANGLING(305), b(5)=>
      DANGLING(306), b(4)=>DANGLING(307), b(3)=>DANGLING(308), b(2)=>
      DANGLING(309), b(1)=>DANGLING(310), b(0)=>DANGLING(311), d(31)=>
      DANGLING(312), d(30)=>DANGLING(313), d(29)=>DANGLING(314), d(28)=>
      DANGLING(315), d(27)=>DANGLING(316), d(26)=>DANGLING(317), d(25)=>
      DANGLING(318), d(24)=>DANGLING(319), d(23)=>DANGLING(320), d(22)=>
      DANGLING(321), d(21)=>DANGLING(322), d(20)=>prod_5(14), d(19)=>
      prod_5(13), d(18)=>prod_5(12), d(17)=>prod_5(11), d(16)=>prod_5(10), 
      d(15)=>prod_5(9), d(14)=>prod_5(8), d(13)=>prod_5(7), d(12)=>prod_5(6), 
      d(11)=>prod_5(5), d(10)=>prod_5(4), d(9)=>prod_5(3), d(8)=>prod_5(2), 
      d(7)=>prod_5(1), d(6)=>prod_5(0), d(5)=>DANGLING(323), d(4)=>DANGLING(
      324), d(3)=>DANGLING(325), d(2)=>DANGLING(326), d(1)=>DANGLING(327), 
      d(0)=>DANGLING(328));
   prod_6_mults19_5 : mult_32_47 port map ( a(31)=>DANGLING(329), a(30)=>
      DANGLING(330), a(29)=>DANGLING(331), a(28)=>DANGLING(332), a(27)=>
      DANGLING(333), a(26)=>DANGLING(334), a(25)=>DANGLING(335), a(24)=>
      DANGLING(336), a(23)=>DANGLING(337), a(22)=>DANGLING(338), a(21)=>
      DANGLING(339), a(20)=>DANGLING(340), a(19)=>DANGLING(341), a(18)=>
      DANGLING(342), a(17)=>DANGLING(343), a(16)=>DANGLING(344), a(15)=>
      DANGLING(345), a(14)=>DANGLING(346), a(13)=>DANGLING(347), a(12)=>
      DANGLING(348), a(11)=>DANGLING(349), a(10)=>DANGLING(350), a(9)=>
      DANGLING(351), a(8)=>DANGLING(352), a(7)=>DANGLING(353), a(6)=>
      DANGLING(354), a(5)=>DANGLING(355), a(4)=>i_data(4), a(3)=>i_data(3), 
      a(2)=>i_data(2), a(1)=>i_data(1), a(0)=>i_data(0), b(31)=>DANGLING(356
      ), b(30)=>DANGLING(357), b(29)=>DANGLING(358), b(28)=>DANGLING(359), 
      b(27)=>DANGLING(360), b(26)=>DANGLING(361), b(25)=>DANGLING(362), 
      b(24)=>DANGLING(363), b(23)=>DANGLING(364), b(22)=>DANGLING(365), 
      b(21)=>DANGLING(366), b(20)=>DANGLING(367), b(19)=>DANGLING(368), 
      b(18)=>DANGLING(369), b(17)=>DANGLING(370), b(16)=>DANGLING(371), 
      b(15)=>DANGLING(372), b(14)=>DANGLING(373), b(13)=>DANGLING(374), 
      b(12)=>DANGLING(375), b(11)=>DANGLING(376), b(10)=>DANGLING(377), b(9)
      =>DANGLING(378), b(8)=>DANGLING(379), b(7)=>DANGLING(380), b(6)=>
      DANGLING(381), b(5)=>DANGLING(382), b(4)=>DANGLING(383), b(3)=>
      DANGLING(384), b(2)=>DANGLING(385), b(1)=>DANGLING(386), b(0)=>
      DANGLING(387), d(31)=>DANGLING(388), d(30)=>DANGLING(389), d(29)=>
      DANGLING(390), d(28)=>DANGLING(391), d(27)=>DANGLING(392), d(26)=>
      DANGLING(393), d(25)=>DANGLING(394), d(24)=>DANGLING(395), d(23)=>
      DANGLING(396), d(22)=>DANGLING(397), d(21)=>DANGLING(398), d(20)=>
      DANGLING(399), d(19)=>DANGLING(400), d(18)=>DANGLING(401), d(17)=>
      DANGLING(402), d(16)=>DANGLING(403), d(15)=>DANGLING(404), d(14)=>
      DANGLING(405), d(13)=>DANGLING(406), d(12)=>DANGLING(407), d(11)=>
      DANGLING(408), d(10)=>DANGLING(409), d(9)=>DANGLING(410), d(8)=>
      DANGLING(411), d(7)=>DANGLING(412), d(6)=>DANGLING(413), d(5)=>
      DANGLING(414), d(4)=>prod_6_0, d(3)=>DANGLING(415), d(2)=>DANGLING(416
      ), d(1)=>DANGLING(417), d(0)=>DANGLING(418), p_modgen_add_6_nx48=>
      nx49523z1, p_modgen_add_6_nx40=>nx49523z2);
   modgen_add_0 : add_16_0 port map ( cin=>DANGLING(419), a(15)=>prod_0(14), 
      a(14)=>prod_0(14), a(13)=>prod_0(13), a(12)=>prod_0(12), a(11)=>
      prod_0(11), a(10)=>prod_0(10), a(9)=>prod_0(9), a(8)=>prod_0(8), a(7)
      =>prod_0(7), a(6)=>prod_0(6), a(5)=>prod_0(5), a(4)=>prod_0(4), a(3)=>
      prod_0(3), a(2)=>prod_0(2), a(1)=>prod_0(1), a(0)=>prod_0(0), b(15)=>
      prod_1(13), b(14)=>DANGLING(420), b(13)=>prod_1(13), b(12)=>prod_1(12), 
      b(11)=>prod_1(11), b(10)=>prod_1(10), b(9)=>prod_1(9), b(8)=>prod_1(8), 
      b(7)=>prod_1(7), b(6)=>prod_1(6), b(5)=>prod_1(5), b(4)=>prod_1(4), 
      b(3)=>prod_1(3), b(2)=>prod_1(2), b(1)=>prod_1(1), b(0)=>prod_1(0), 
      d(15)=>nx3_bus_15, d(14)=>nx3_bus_14, d(13)=>nx3_bus_13, d(12)=>
      nx3_bus_12, d(11)=>nx3_bus_11, d(10)=>nx3_bus_10, d(9)=>nx3_bus_9, 
      d(8)=>nx3_bus_8, d(7)=>nx3_bus_7, d(6)=>nx3_bus_6, d(5)=>nx3_bus_5, 
      d(4)=>nx3_bus_4, d(3)=>nx3_bus_3, d(2)=>nx3_bus_2, d(1)=>nx3_bus_1, 
      d(0)=>nx3_bus_0, cout=>DANGLING(421));
   modgen_add_1 : add_16_1 port map ( cin=>DANGLING(422), a(15)=>prod_2(13), 
      a(14)=>DANGLING(423), a(13)=>DANGLING(424), a(12)=>prod_2(12), a(11)=>
      prod_2(11), a(10)=>prod_2(10), a(9)=>prod_2(9), a(8)=>prod_2(8), a(7)
      =>prod_2(7), a(6)=>prod_2(6), a(5)=>prod_2(5), a(4)=>prod_2(4), a(3)=>
      prod_2(3), a(2)=>prod_2(2), a(1)=>prod_2(1), a(0)=>prod_2(0), b(15)=>
      i_data(15), b(14)=>DANGLING(425), b(13)=>DANGLING(426), b(12)=>
      DANGLING(427), b(11)=>i_data(14), b(10)=>i_data(14), b(9)=>i_data(14), 
      b(8)=>i_data(11), b(7)=>i_data(10), b(6)=>i_data(9), b(5)=>i_data(8), 
      b(4)=>i_data(7), b(3)=>i_data(6), b(2)=>i_data(5), b(1)=>i_data(4), 
      b(0)=>i_data(3), d(15)=>nx23_bus_15, d(14)=>nx23_bus_14, d(13)=>
      nx23_bus_13, d(12)=>nx23_bus_12, d(11)=>nx23_bus_11, d(10)=>
      nx23_bus_10, d(9)=>nx23_bus_9, d(8)=>nx23_bus_8, d(7)=>nx23_bus_7, 
      d(6)=>nx23_bus_6, d(5)=>nx23_bus_5, d(4)=>nx23_bus_4, d(3)=>nx23_bus_3, 
      d(2)=>nx23_bus_2, d(1)=>nx23_bus_1, d(0)=>nx23_bus_0, cout=>DANGLING(
      428));
   modgen_add_2 : add_16_2 port map ( cin=>DANGLING(429), a(15)=>nx23_bus_15, 
      a(14)=>nx23_bus_14, a(13)=>nx23_bus_13, a(12)=>nx23_bus_12, a(11)=>
      nx23_bus_11, a(10)=>nx23_bus_10, a(9)=>nx23_bus_9, a(8)=>nx23_bus_8, 
      a(7)=>nx23_bus_7, a(6)=>nx23_bus_6, a(5)=>nx23_bus_5, a(4)=>nx23_bus_4, 
      a(3)=>nx23_bus_3, a(2)=>nx23_bus_2, a(1)=>nx23_bus_1, a(0)=>nx23_bus_0, 
      b(15)=>nx3_bus_15, b(14)=>nx3_bus_14, b(13)=>nx3_bus_13, b(12)=>
      nx3_bus_12, b(11)=>nx3_bus_11, b(10)=>nx3_bus_10, b(9)=>nx3_bus_9, 
      b(8)=>nx3_bus_8, b(7)=>nx3_bus_7, b(6)=>nx3_bus_6, b(5)=>nx3_bus_5, 
      b(4)=>nx3_bus_4, b(3)=>nx3_bus_3, b(2)=>nx3_bus_2, b(1)=>nx3_bus_1, 
      b(0)=>nx3_bus_0, d(15)=>nx43_bus_15, d(14)=>nx43_bus_14, d(13)=>
      nx43_bus_13, d(12)=>nx43_bus_12, d(11)=>nx43_bus_11, d(10)=>
      nx43_bus_10, d(9)=>nx43_bus_9, d(8)=>nx43_bus_8, d(7)=>nx43_bus_7, 
      d(6)=>nx43_bus_6, d(5)=>nx43_bus_5, d(4)=>nx43_bus_4, d(3)=>nx43_bus_3, 
      d(2)=>nx43_bus_2, d(1)=>nx43_bus_1, d(0)=>nx43_bus_0, cout=>DANGLING(
      430));
   modgen_add_3 : add_16_3 port map ( cin=>DANGLING(431), a(15)=>prod_4(14), 
      a(14)=>prod_4(14), a(13)=>prod_4(13), a(12)=>prod_4(12), a(11)=>
      prod_4(11), a(10)=>prod_4(10), a(9)=>prod_4(9), a(8)=>prod_4(8), a(7)
      =>prod_4(7), a(6)=>prod_4(6), a(5)=>prod_4(5), a(4)=>prod_4(4), a(3)=>
      prod_4(3), a(2)=>prod_4(2), a(1)=>prod_4(1), a(0)=>prod_4(0), b(15)=>
      prod_5(14), b(14)=>prod_5(14), b(13)=>prod_5(13), b(12)=>prod_5(12), 
      b(11)=>prod_5(11), b(10)=>prod_5(10), b(9)=>prod_5(9), b(8)=>prod_5(8), 
      b(7)=>prod_5(7), b(6)=>prod_5(6), b(5)=>prod_5(5), b(4)=>prod_5(4), 
      b(3)=>prod_5(3), b(2)=>prod_5(2), b(1)=>prod_5(1), b(0)=>prod_5(0), 
      d(15)=>nx63_bus_15, d(14)=>nx63_bus_14, d(13)=>nx63_bus_13, d(12)=>
      nx63_bus_12, d(11)=>nx63_bus_11, d(10)=>nx63_bus_10, d(9)=>nx63_bus_9, 
      d(8)=>nx63_bus_8, d(7)=>nx63_bus_7, d(6)=>nx63_bus_6, d(5)=>nx63_bus_5, 
      d(4)=>nx63_bus_4, d(3)=>nx63_bus_3, d(2)=>nx63_bus_2, d(1)=>nx63_bus_1, 
      d(0)=>nx63_bus_0, cout=>DANGLING(432));
   modgen_add_4 : add_16_4 port map ( cin=>DANGLING(433), a(15)=>prod_1(13), 
      a(14)=>prod_1(13), a(13)=>prod_1(12), a(12)=>prod_1(11), a(11)=>
      prod_1(10), a(10)=>prod_1(9), a(9)=>prod_1(8), a(8)=>prod_1(7), a(7)=>
      prod_1(6), a(6)=>prod_1(5), a(5)=>prod_1(4), a(4)=>prod_1(3), a(3)=>
      prod_1(2), a(2)=>prod_1(1), a(1)=>prod_1(0), a(0)=>prod_6_0, b(15)=>
      prod_1(13), b(14)=>DANGLING(434), b(13)=>DANGLING(435), b(12)=>
      DANGLING(436), b(11)=>DANGLING(437), b(10)=>DANGLING(438), b(9)=>
      DANGLING(439), b(8)=>DANGLING(440), b(7)=>DANGLING(441), b(6)=>
      DANGLING(442), b(5)=>DANGLING(443), b(4)=>DANGLING(444), b(3)=>
      DANGLING(445), b(2)=>DANGLING(446), b(1)=>DANGLING(447), b(0)=>
      DANGLING(448), d(15)=>nx83_bus_15, d(14)=>nx83_bus_14, d(13)=>
      nx83_bus_13, d(12)=>nx83_bus_12, d(11)=>nx83_bus_11, d(10)=>
      nx83_bus_10, d(9)=>nx83_bus_9, d(8)=>nx83_bus_8, d(7)=>nx83_bus_7, 
      d(6)=>nx83_bus_6, d(5)=>nx83_bus_5, d(4)=>nx83_bus_4, d(3)=>nx83_bus_3, 
      d(2)=>nx83_bus_2, d(1)=>nx83_bus_1, d(0)=>nx83_bus_0, cout=>DANGLING(
      449), p_modgen_add_6_nx48=>nx49523z1, p_modgen_add_6_nx40=>nx49523z2);
   modgen_add_5 : add_16_5 port map ( cin=>DANGLING(450), a(15)=>nx83_bus_15, 
      a(14)=>nx83_bus_14, a(13)=>nx83_bus_13, a(12)=>nx83_bus_12, a(11)=>
      nx83_bus_11, a(10)=>nx83_bus_10, a(9)=>nx83_bus_9, a(8)=>nx83_bus_8, 
      a(7)=>nx83_bus_7, a(6)=>nx83_bus_6, a(5)=>nx83_bus_5, a(4)=>nx83_bus_4, 
      a(3)=>nx83_bus_3, a(2)=>nx83_bus_2, a(1)=>nx83_bus_1, a(0)=>nx83_bus_0, 
      b(15)=>nx63_bus_15, b(14)=>nx63_bus_14, b(13)=>nx63_bus_13, b(12)=>
      nx63_bus_12, b(11)=>nx63_bus_11, b(10)=>nx63_bus_10, b(9)=>nx63_bus_9, 
      b(8)=>nx63_bus_8, b(7)=>nx63_bus_7, b(6)=>nx63_bus_6, b(5)=>nx63_bus_5, 
      b(4)=>nx63_bus_4, b(3)=>nx63_bus_3, b(2)=>nx63_bus_2, b(1)=>nx63_bus_1, 
      b(0)=>nx63_bus_0, d(15)=>nx103_bus_15, d(14)=>nx103_bus_14, d(13)=>
      nx103_bus_13, d(12)=>nx103_bus_12, d(11)=>nx103_bus_11, d(10)=>
      nx103_bus_10, d(9)=>nx103_bus_9, d(8)=>nx103_bus_8, d(7)=>nx103_bus_7, 
      d(6)=>nx103_bus_6, d(5)=>nx103_bus_5, d(4)=>nx103_bus_4, d(3)=>
      nx103_bus_3, d(2)=>nx103_bus_2, d(1)=>nx103_bus_1, d(0)=>nx103_bus_0, 
      cout=>DANGLING(451));
   modgen_add_6 : add_16_6 port map ( cin=>DANGLING(452), a(15)=>nx43_bus_15, 
      a(14)=>nx43_bus_14, a(13)=>nx43_bus_13, a(12)=>nx43_bus_12, a(11)=>
      nx43_bus_11, a(10)=>nx43_bus_10, a(9)=>nx43_bus_9, a(8)=>nx43_bus_8, 
      a(7)=>nx43_bus_7, a(6)=>nx43_bus_6, a(5)=>nx43_bus_5, a(4)=>nx43_bus_4, 
      a(3)=>nx43_bus_3, a(2)=>nx43_bus_2, a(1)=>nx43_bus_1, a(0)=>nx43_bus_0, 
      b(15)=>nx103_bus_15, b(14)=>nx103_bus_14, b(13)=>nx103_bus_13, b(12)=>
      nx103_bus_12, b(11)=>nx103_bus_11, b(10)=>nx103_bus_10, b(9)=>
      nx103_bus_9, b(8)=>nx103_bus_8, b(7)=>nx103_bus_7, b(6)=>nx103_bus_6, 
      b(5)=>nx103_bus_5, b(4)=>nx103_bus_4, b(3)=>nx103_bus_3, b(2)=>
      nx103_bus_2, b(1)=>nx103_bus_1, b(0)=>nx103_bus_0, d(15)=>nx123_bus_15, 
      d(14)=>nx123_bus_14, d(13)=>nx123_bus_13, d(12)=>nx123_bus_12, d(11)=>
      nx123_bus_11, d(10)=>nx123_bus_10, d(9)=>nx123_bus_9, d(8)=>
      nx123_bus_8, d(7)=>nx123_bus_7, d(6)=>nx123_bus_6, d(5)=>nx123_bus_5, 
      d(4)=>nx123_bus_4, d(3)=>nx123_bus_3, d(2)=>nx123_bus_2, d(1)=>
      nx123_bus_1, d(0)=>nx123_bus_0, cout=>DANGLING(453));
   modgen_add_8 : add_16_7 port map ( cin=>DANGLING(454), a(15)=>prod_1(13), 
      a(14)=>prod_1(13), a(13)=>prod_1(12), a(12)=>prod_1(11), a(11)=>
      prod_1(10), a(10)=>prod_1(9), a(9)=>prod_1(8), a(8)=>prod_1(7), a(7)=>
      prod_1(6), a(6)=>prod_1(5), a(5)=>prod_1(4), a(4)=>prod_1(3), a(3)=>
      prod_1(2), a(2)=>prod_1(1), a(1)=>prod_1(0), a(0)=>DANGLING(455), 
      b(15)=>prod_5(14), b(14)=>prod_5(14), b(13)=>prod_5(13), b(12)=>
      prod_5(12), b(11)=>prod_5(11), b(10)=>prod_5(10), b(9)=>prod_5(9), 
      b(8)=>prod_5(8), b(7)=>prod_5(7), b(6)=>prod_5(6), b(5)=>prod_5(5), 
      b(4)=>prod_5(4), b(3)=>prod_5(3), b(2)=>prod_5(2), b(1)=>prod_5(1), 
      b(0)=>prod_5(0), d(15)=>nx163_bus_15, d(14)=>nx163_bus_14, d(13)=>
      nx163_bus_13, d(12)=>nx163_bus_12, d(11)=>nx163_bus_11, d(10)=>
      nx163_bus_10, d(9)=>nx163_bus_9, d(8)=>nx163_bus_8, d(7)=>nx163_bus_7, 
      d(6)=>nx163_bus_6, d(5)=>nx163_bus_5, d(4)=>nx163_bus_4, d(3)=>
      nx163_bus_3, d(2)=>nx163_bus_2, d(1)=>nx163_bus_1, d(0)=>nx163_bus_0, 
      cout=>DANGLING(456), p_modgen_add_6_nx48=>nx49523z1, 
      p_modgen_add_6_nx40=>nx49523z2);
   modgen_add_9 : add_16_8 port map ( cin=>DANGLING(457), a(15)=>
      nx163_bus_15, a(14)=>nx163_bus_14, a(13)=>nx163_bus_13, a(12)=>
      nx163_bus_12, a(11)=>nx163_bus_11, a(10)=>nx163_bus_10, a(9)=>
      nx163_bus_9, a(8)=>nx163_bus_8, a(7)=>nx163_bus_7, a(6)=>nx163_bus_6, 
      a(5)=>nx163_bus_5, a(4)=>nx163_bus_4, a(3)=>nx163_bus_3, a(2)=>
      nx163_bus_2, a(1)=>nx163_bus_1, a(0)=>nx163_bus_0, b(15)=>nx83_bus_15, 
      b(14)=>nx83_bus_14, b(13)=>nx83_bus_13, b(12)=>nx83_bus_12, b(11)=>
      nx83_bus_11, b(10)=>nx83_bus_10, b(9)=>nx83_bus_9, b(8)=>nx83_bus_8, 
      b(7)=>nx83_bus_7, b(6)=>nx83_bus_6, b(5)=>nx83_bus_5, b(4)=>nx83_bus_4, 
      b(3)=>nx83_bus_3, b(2)=>nx83_bus_2, b(1)=>nx83_bus_1, b(0)=>nx83_bus_0, 
      d(15)=>nx183_bus_15, d(14)=>nx183_bus_14, d(13)=>nx183_bus_13, d(12)=>
      nx183_bus_12, d(11)=>nx183_bus_11, d(10)=>nx183_bus_10, d(9)=>
      nx183_bus_9, d(8)=>nx183_bus_8, d(7)=>nx183_bus_7, d(6)=>nx183_bus_6, 
      d(5)=>nx183_bus_5, d(4)=>nx183_bus_4, d(3)=>nx183_bus_3, d(2)=>
      nx183_bus_2, d(1)=>nx183_bus_1, d(0)=>nx183_bus_0, cout=>DANGLING(458)
   );
   modgen_add_10 : add_16_9 port map ( cin=>DANGLING(459), a(15)=>prod_4(14), 
      a(14)=>prod_4(14), a(13)=>prod_4(13), a(12)=>prod_4(12), a(11)=>
      prod_4(11), a(10)=>prod_4(10), a(9)=>prod_4(9), a(8)=>prod_4(8), a(7)
      =>prod_4(7), a(6)=>prod_4(6), a(5)=>prod_4(5), a(4)=>prod_4(4), a(3)=>
      prod_4(3), a(2)=>prod_4(2), a(1)=>prod_4(1), a(0)=>prod_4(0), b(15)=>
      i_data(15), b(14)=>DANGLING(460), b(13)=>DANGLING(461), b(12)=>
      DANGLING(462), b(11)=>i_data(14), b(10)=>DANGLING(463), b(9)=>DANGLING
      (464), b(8)=>i_data(11), b(7)=>i_data(10), b(6)=>i_data(9), b(5)=>
      i_data(8), b(4)=>i_data(7), b(3)=>i_data(6), b(2)=>i_data(5), b(1)=>
      i_data(4), b(0)=>i_data(3), d(15)=>nx203_bus_15, d(14)=>nx203_bus_14, 
      d(13)=>nx203_bus_13, d(12)=>nx203_bus_12, d(11)=>nx203_bus_11, d(10)=>
      nx203_bus_10, d(9)=>nx203_bus_9, d(8)=>nx203_bus_8, d(7)=>nx203_bus_7, 
      d(6)=>nx203_bus_6, d(5)=>nx203_bus_5, d(4)=>nx203_bus_4, d(3)=>
      nx203_bus_3, d(2)=>nx203_bus_2, d(1)=>nx203_bus_1, d(0)=>nx203_bus_0, 
      cout=>DANGLING(465));
   modgen_add_11 : add_16_10 port map ( cin=>DANGLING(466), a(15)=>
      prod_1(13), a(14)=>DANGLING(467), a(13)=>prod_1(13), a(12)=>prod_1(12), 
      a(11)=>prod_1(11), a(10)=>prod_1(10), a(9)=>prod_1(9), a(8)=>prod_1(8), 
      a(7)=>prod_1(7), a(6)=>prod_1(6), a(5)=>prod_1(5), a(4)=>prod_1(4), 
      a(3)=>prod_1(3), a(2)=>prod_1(2), a(1)=>prod_1(1), a(0)=>prod_1(0), 
      b(15)=>prod_0(14), b(14)=>prod_0(14), b(13)=>prod_0(13), b(12)=>
      prod_0(12), b(11)=>prod_0(11), b(10)=>prod_0(10), b(9)=>prod_0(9), 
      b(8)=>prod_0(8), b(7)=>prod_0(7), b(6)=>prod_0(6), b(5)=>prod_0(5), 
      b(4)=>prod_0(4), b(3)=>prod_0(3), b(2)=>prod_0(2), b(1)=>prod_0(1), 
      b(0)=>prod_0(0), d(15)=>nx223_bus_15, d(14)=>nx223_bus_14, d(13)=>
      nx223_bus_13, d(12)=>nx223_bus_12, d(11)=>nx223_bus_11, d(10)=>
      nx223_bus_10, d(9)=>nx223_bus_9, d(8)=>nx223_bus_8, d(7)=>nx223_bus_7, 
      d(6)=>nx223_bus_6, d(5)=>nx223_bus_5, d(4)=>nx223_bus_4, d(3)=>
      nx223_bus_3, d(2)=>nx223_bus_2, d(1)=>nx223_bus_1, d(0)=>nx223_bus_0, 
      cout=>DANGLING(468));
   modgen_add_12 : add_16_11 port map ( cin=>DANGLING(469), a(15)=>
      nx223_bus_15, a(14)=>nx223_bus_14, a(13)=>nx223_bus_13, a(12)=>
      nx223_bus_12, a(11)=>nx223_bus_11, a(10)=>nx223_bus_10, a(9)=>
      nx223_bus_9, a(8)=>nx223_bus_8, a(7)=>nx223_bus_7, a(6)=>nx223_bus_6, 
      a(5)=>nx223_bus_5, a(4)=>nx223_bus_4, a(3)=>nx223_bus_3, a(2)=>
      nx223_bus_2, a(1)=>nx223_bus_1, a(0)=>nx223_bus_0, b(15)=>prod_2(13), 
      b(14)=>DANGLING(470), b(13)=>prod_2(13), b(12)=>prod_2(12), b(11)=>
      prod_2(11), b(10)=>prod_2(10), b(9)=>prod_2(9), b(8)=>prod_2(8), b(7)
      =>prod_2(7), b(6)=>prod_2(6), b(5)=>prod_2(5), b(4)=>prod_2(4), b(3)=>
      prod_2(3), b(2)=>prod_2(2), b(1)=>prod_2(1), b(0)=>prod_2(0), d(15)=>
      nx243_bus(16), d(14)=>nx243_bus(15), d(13)=>nx243_bus(14), d(12)=>
      nx243_bus(13), d(11)=>nx243_bus(12), d(10)=>nx243_bus(11), d(9)=>
      nx243_bus(10), d(8)=>nx243_bus(9), d(7)=>nx243_bus(8), d(6)=>
      nx243_bus(7), d(5)=>nx243_bus(6), d(4)=>nx243_bus(5), d(3)=>
      nx243_bus(4), d(2)=>nx243_bus(3), d(1)=>nx243_bus(2), d(0)=>
      nx243_bus(1), cout=>DANGLING(471));
   modgen_add_13 : add_16_12 port map ( cin=>DANGLING(472), a(15)=>
      nx243_bus(16), a(14)=>nx243_bus(15), a(13)=>nx243_bus(14), a(12)=>
      nx243_bus(13), a(11)=>nx243_bus(12), a(10)=>nx243_bus(11), a(9)=>
      nx243_bus(10), a(8)=>nx243_bus(9), a(7)=>nx243_bus(8), a(6)=>
      nx243_bus(7), a(5)=>nx243_bus(6), a(4)=>nx243_bus(5), a(3)=>
      nx243_bus(4), a(2)=>nx243_bus(3), a(1)=>nx243_bus(2), a(0)=>
      nx243_bus(1), b(15)=>nx203_bus_15, b(14)=>nx203_bus_14, b(13)=>
      nx203_bus_13, b(12)=>nx203_bus_12, b(11)=>nx203_bus_11, b(10)=>
      nx203_bus_10, b(9)=>nx203_bus_9, b(8)=>nx203_bus_8, b(7)=>nx203_bus_7, 
      b(6)=>nx203_bus_6, b(5)=>nx203_bus_5, b(4)=>nx203_bus_4, b(3)=>
      nx203_bus_3, b(2)=>nx203_bus_2, b(1)=>nx203_bus_1, b(0)=>nx203_bus_0, 
      d(15)=>nx262_bus(16), d(14)=>nx262_bus(15), d(13)=>nx262_bus(14), 
      d(12)=>nx262_bus(13), d(11)=>nx262_bus(12), d(10)=>nx262_bus(11), d(9)
      =>nx262_bus(10), d(8)=>nx262_bus(9), d(7)=>nx262_bus(8), d(6)=>
      nx262_bus(7), d(5)=>nx262_bus(6), d(4)=>nx262_bus(5), d(3)=>
      nx262_bus(4), d(2)=>nx262_bus(3), d(1)=>nx262_bus(2), d(0)=>
      nx262_bus(1), cout=>DANGLING(473));
   modgen_add_14 : add_16_13 port map ( cin=>DANGLING(474), a(15)=>
      nx183_bus_15, a(14)=>nx183_bus_14, a(13)=>nx183_bus_13, a(12)=>
      nx183_bus_12, a(11)=>nx183_bus_11, a(10)=>nx183_bus_10, a(9)=>
      nx183_bus_9, a(8)=>nx183_bus_8, a(7)=>nx183_bus_7, a(6)=>nx183_bus_6, 
      a(5)=>nx183_bus_5, a(4)=>nx183_bus_4, a(3)=>nx183_bus_3, a(2)=>
      nx183_bus_2, a(1)=>nx183_bus_1, a(0)=>nx183_bus_0, b(15)=>
      nx262_bus(16), b(14)=>nx262_bus(15), b(13)=>nx262_bus(14), b(12)=>
      nx262_bus(13), b(11)=>nx262_bus(12), b(10)=>nx262_bus(11), b(9)=>
      nx262_bus(10), b(8)=>nx262_bus(9), b(7)=>nx262_bus(8), b(6)=>
      nx262_bus(7), b(5)=>nx262_bus(6), b(4)=>nx262_bus(5), b(3)=>
      nx262_bus(4), b(2)=>nx262_bus(3), b(1)=>nx262_bus(2), b(0)=>
      nx262_bus(1), d(15)=>nx281_bus(16), d(14)=>nx281_bus(15), d(13)=>
      nx281_bus(14), d(12)=>nx281_bus(13), d(11)=>nx281_bus(12), d(10)=>
      nx281_bus(11), d(9)=>nx281_bus(10), d(8)=>nx281_bus(9), d(7)=>
      nx281_bus(8), d(6)=>nx281_bus(7), d(5)=>nx281_bus(6), d(4)=>
      nx281_bus(5), d(3)=>nx281_bus(4), d(2)=>nx281_bus(3), d(1)=>
      nx281_bus(2), d(0)=>nx281_bus(1), cout=>DANGLING(475));
   modgen_add_15 : add_16_14 port map ( cin=>DANGLING(476), a(15)=>
      nx123_bus_15, a(14)=>nx123_bus_14, a(13)=>nx123_bus_13, a(12)=>
      nx123_bus_12, a(11)=>nx123_bus_11, a(10)=>nx123_bus_10, a(9)=>
      nx123_bus_9, a(8)=>nx123_bus_8, a(7)=>nx123_bus_7, a(6)=>nx123_bus_6, 
      a(5)=>nx123_bus_5, a(4)=>nx123_bus_4, a(3)=>nx123_bus_3, a(2)=>
      nx123_bus_2, a(1)=>nx123_bus_1, a(0)=>nx123_bus_0, b(15)=>
      nx281_bus(16), b(14)=>nx281_bus(15), b(13)=>nx281_bus(14), b(12)=>
      nx281_bus(13), b(11)=>nx281_bus(12), b(10)=>nx281_bus(11), b(9)=>
      nx281_bus(10), b(8)=>nx281_bus(9), b(7)=>nx281_bus(8), b(6)=>
      nx281_bus(7), b(5)=>nx281_bus(6), b(4)=>nx281_bus(5), b(3)=>
      nx281_bus(4), b(2)=>nx281_bus(3), b(1)=>nx281_bus(2), b(0)=>
      nx281_bus(1), d(15)=>o_data(15), d(14)=>o_data(14), d(13)=>o_data(13), 
      d(12)=>o_data(12), d(11)=>o_data(11), d(10)=>o_data(10), d(9)=>
      o_data(9), d(8)=>o_data(8), d(7)=>o_data(7), d(6)=>o_data(6), d(5)=>
      o_data(5), d(4)=>o_data(4), d(3)=>o_data(3), d(2)=>o_data(2), d(1)=>
      o_data(1), d(0)=>o_data(0), cout=>DANGLING(477));
end low_pass_unfold_1889 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_16_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (15 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (15 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_16_0 ;

architecture IMPLEMENTATION of modgen_counter_16_0 is 
   signal q_15_EXMPLR582, q_14_EXMPLR583, q_13_EXMPLR584, q_12_EXMPLR585, 
      q_11_EXMPLR586, q_10_EXMPLR587, q_9_EXMPLR588, q_8_EXMPLR589, 
      q_7_EXMPLR590, q_6_EXMPLR591, q_5_EXMPLR592, q_4_EXMPLR593, 
      q_3_EXMPLR594, q_2_EXMPLR595, q_1_EXMPLR596, q_0_EXMPLR597, nx51271z1, 
      nx22081z16, nx52268z1, nx22081z15, nx53265z1, nx22081z14, nx54262z1, 
      nx22081z13, nx55259z1, nx22081z12, nx56256z1, nx22081z11, nx57253z1, 
      nx22081z10, nx58250z1, nx22081z9, nx59247z1, nx22081z8, nx60244z1, 
      nx22081z7, nx17096z1, nx22081z6, nx18093z1, nx22081z5, nx19090z1, 
      nx22081z4, nx20087z1, nx22081z3, nx21084z1, nx22081z2, nx22081z1, 
      nx_modgen_counter_16_0_vcc_net: std_logic ;

begin
   q(15) <= q_15_EXMPLR582 ;
   q(14) <= q_14_EXMPLR583 ;
   q(13) <= q_13_EXMPLR584 ;
   q(12) <= q_12_EXMPLR585 ;
   q(11) <= q_11_EXMPLR586 ;
   q(10) <= q_10_EXMPLR587 ;
   q(9) <= q_9_EXMPLR588 ;
   q(8) <= q_8_EXMPLR589 ;
   q(7) <= q_7_EXMPLR590 ;
   q(6) <= q_6_EXMPLR591 ;
   q(5) <= q_5_EXMPLR592 ;
   q(4) <= q_4_EXMPLR593 ;
   q(3) <= q_3_EXMPLR594 ;
   q(2) <= q_2_EXMPLR595 ;
   q(1) <= q_1_EXMPLR596 ;
   q(0) <= q_0_EXMPLR597 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>q_9_EXMPLR588, datain=>
      nx60244z1, clk=>clock, ena=>cnt_en);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>q_8_EXMPLR589, datain=>
      nx59247z1, clk=>clock, ena=>cnt_en);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>q_7_EXMPLR590, datain=>
      nx58250z1, clk=>clock, ena=>cnt_en);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>q_6_EXMPLR591, datain=>
      nx57253z1, clk=>clock, ena=>cnt_en);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>q_5_EXMPLR592, datain=>
      nx56256z1, clk=>clock, ena=>cnt_en);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>q_4_EXMPLR593, datain=>
      nx55259z1, clk=>clock, ena=>cnt_en);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>q_3_EXMPLR594, datain=>
      nx54262z1, clk=>clock, ena=>cnt_en);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>q_2_EXMPLR595, datain=>
      nx53265z1, clk=>clock, ena=>cnt_en);
   reg_q_15 : cycloneii_lcell_ff port map ( regout=>q_15_EXMPLR582, datain=>
      nx22081z1, clk=>clock, ena=>cnt_en);
   reg_q_14 : cycloneii_lcell_ff port map ( regout=>q_14_EXMPLR583, datain=>
      nx21084z1, clk=>clock, ena=>cnt_en);
   reg_q_13 : cycloneii_lcell_ff port map ( regout=>q_13_EXMPLR584, datain=>
      nx20087z1, clk=>clock, ena=>cnt_en);
   reg_q_12 : cycloneii_lcell_ff port map ( regout=>q_12_EXMPLR585, datain=>
      nx19090z1, clk=>clock, ena=>cnt_en);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>q_11_EXMPLR586, datain=>
      nx18093z1, clk=>clock, ena=>cnt_en);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>q_10_EXMPLR587, datain=>
      nx17096z1, clk=>clock, ena=>cnt_en);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>q_1_EXMPLR596, datain=>
      nx52268z1, clk=>clock, ena=>cnt_en);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>q_0_EXMPLR597, datain=>
      nx51271z1, clk=>clock, ena=>cnt_en);
   ix22081z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx22081z14, dataa=>q_2_EXMPLR595, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z15);
   nx_modgen_counter_16_0_vcc_net <= '1';
   ix22081z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx22081z1, dataa=>q_15_EXMPLR582, datad=>
      nx_modgen_counter_16_0_vcc_net, cin=>nx22081z2);
   ix22081z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx21084z1, cout=>nx22081z2, dataa=>q_14_EXMPLR583, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z3);
   ix22081z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx20087z1, cout=>nx22081z3, dataa=>q_13_EXMPLR584, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z4);
   ix22081z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx19090z1, cout=>nx22081z4, dataa=>q_12_EXMPLR585, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z5);
   ix22081z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx18093z1, cout=>nx22081z5, dataa=>q_11_EXMPLR586, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z6);
   ix22081z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, cout=>nx22081z6, dataa=>q_10_EXMPLR587, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z7);
   ix22081z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx22081z7, dataa=>q_9_EXMPLR588, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z8);
   ix22081z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx22081z15, dataa=>q_1_EXMPLR596, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z16);
   ix22081z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx22081z8, dataa=>q_8_EXMPLR589, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z9);
   ix22081z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx22081z9, dataa=>q_7_EXMPLR590, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z10);
   ix22081z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx22081z10, dataa=>q_6_EXMPLR591, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z11);
   ix22081z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx22081z11, dataa=>q_5_EXMPLR592, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z12);
   ix22081z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx22081z12, dataa=>q_4_EXMPLR593, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z13);
   ix22081z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx22081z13, dataa=>q_3_EXMPLR594, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z14);
   ix22081z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx22081z16, dataa=>q_0_EXMPLR597, 
      datad=>nx_modgen_counter_16_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_16_1 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (15 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (15 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_16_1 ;

architecture IMPLEMENTATION of modgen_counter_16_1 is 
   signal nx1963z1, nx19090z3, nx19090z5, nx19090z7, nx19090z9, nx19090z11, 
      nx19090z13, nx19090z15, nx19090z17, nx19090z19, nx19090z21, nx19090z23, 
      nx19090z25, nx51271z1, nx19090z24, nx52268z1, nx19090z22, nx53265z1, 
      nx19090z20, nx54262z1, nx19090z18, nx55259z1, nx19090z16, nx56256z1, 
      nx19090z14, nx57253z1, nx19090z12, nx58250z1, nx19090z10, nx59247z1, 
      nx19090z8, nx60244z1, nx19090z6, nx17096z1, nx19090z4, nx18093z1, 
      nx19090z2, nx19090z1, nx_modgen_counter_16_1_vcc_net: std_logic ;

begin
   q(12) <= nx1963z1 ;
   q(11) <= nx19090z3 ;
   q(10) <= nx19090z5 ;
   q(9) <= nx19090z7 ;
   q(8) <= nx19090z9 ;
   q(7) <= nx19090z11 ;
   q(6) <= nx19090z13 ;
   q(5) <= nx19090z15 ;
   q(4) <= nx19090z17 ;
   q(3) <= nx19090z19 ;
   q(2) <= nx19090z21 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>nx19090z7, datain=>
      nx60244z1, clk=>clock, sclr=>sclear);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx19090z9, datain=>
      nx59247z1, clk=>clock, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx19090z11, datain=>
      nx58250z1, clk=>clock, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx19090z13, datain=>
      nx57253z1, clk=>clock, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx19090z15, datain=>
      nx56256z1, clk=>clock, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx19090z17, datain=>
      nx55259z1, clk=>clock, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx19090z19, datain=>
      nx54262z1, clk=>clock, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx19090z21, datain=>
      nx53265z1, clk=>clock, sclr=>sclear);
   reg_q_12 : cycloneii_lcell_ff port map ( regout=>nx1963z1, datain=>
      nx19090z1, clk=>clock, sclr=>sclear);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>nx19090z3, datain=>
      nx18093z1, clk=>clock, sclr=>sclear);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>nx19090z5, datain=>
      nx17096z1, clk=>clock, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx19090z23, datain=>
      nx52268z1, clk=>clock, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx19090z25, datain=>
      nx51271z1, clk=>clock, sclr=>sclear);
   ix19090z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>nx19090z1, dataa=>nx1963z1, datad=>
      nx_modgen_counter_16_1_vcc_net, cin=>nx19090z2);
   nx_modgen_counter_16_1_vcc_net <= '1';
   ix19090z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx18093z1, cout=>nx19090z2, dataa=>nx19090z3, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z4);
   ix19090z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, cout=>nx19090z4, dataa=>nx19090z5, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z6);
   ix19090z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx19090z6, dataa=>nx19090z7, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z8);
   ix19090z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx19090z22, dataa=>nx19090z23, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z24);
   ix19090z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx19090z8, dataa=>nx19090z9, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z10);
   ix19090z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx19090z10, dataa=>nx19090z11, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z12);
   ix19090z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx19090z12, dataa=>nx19090z13, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z14);
   ix19090z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx19090z14, dataa=>nx19090z15, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z16);
   ix19090z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx19090z24, dataa=>nx19090z25, 
      datad=>nx_modgen_counter_16_1_vcc_net);
   ix19090z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx19090z16, dataa=>nx19090z17, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z18);
   ix19090z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx19090z18, dataa=>nx19090z19, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z20);
   ix19090z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx19090z20, dataa=>nx19090z21, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z22);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_5_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (4 DOWNTO 0) ;
      b : IN std_logic_vector (4 DOWNTO 0) ;
      d : OUT std_logic_vector (4 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_5_0 ;

architecture IMPLEMENTATION of sub_5_0 is 
   signal nx41961z11, nx41961z8, nx41961z5, nx41961z3, nx_sub_5_0_vcc_net: 
   std_logic ;

begin
   ix41961z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), dataa=>b(4), datad=>nx_sub_5_0_vcc_net, cin
      =>nx41961z3);
   nx_sub_5_0_vcc_net <= '1';
   ix41961z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5af5",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx41961z3, dataa=>b(3), datad=>
      nx_sub_5_0_vcc_net, cin=>nx41961z5);
   ix41961z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx41961z5, dataa=>b(2), datab=>a(2), 
      datad=>nx_sub_5_0_vcc_net, cin=>nx41961z8);
   ix41961z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx41961z8, dataa=>b(1), datab=>a(1), 
      datad=>nx_sub_5_0_vcc_net, cin=>nx41961z11);
   ix41961z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"66bb") 
       port map ( combout=>d(0), cout=>nx41961z11, dataa=>a(0), datab=>b(0), 
      datad=>nx_sub_5_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_6_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (5 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (5 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic ;
      p_p_reset : IN std_logic ;
      p_p_clk : IN std_logic ;
      p_m_i2c_ctrl_clk_dup_364 : IN std_logic ;
      px755 : IN std_logic ;
      p_p_clock : IN std_logic) ;
end modgen_counter_6_0 ;

architecture IMPLEMENTATION of modgen_counter_6_0 is 
   signal nx55259z3, nx64583z1, nx56256z3, nx56256z5, nx56256z7, nx56256z9, 
      nx56256z11, nx51271z1, nx56256z10, nx52268z1, nx56256z8, nx53265z1, 
      nx56256z6, nx54262z1, nx56256z4, nx55259z1, nx56256z2, nx56256z1, 
      nx56256z12, nx55259z2, nx54262z2, nx53265z2, nx52268z2, nx51271z2, 
      nx_modgen_counter_6_0_vcc_net: std_logic ;

begin
   q(5) <= nx64583z1 ;
   q(4) <= nx56256z3 ;
   q(3) <= nx56256z5 ;
   q(2) <= nx56256z7 ;
   q(1) <= nx56256z9 ;
   q(0) <= nx56256z11 ;
   nx56256z12 <= '1';
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx64583z1, datain=>
      nx56256z1, sdata=>nx56256z12, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   nx55259z2 <= '1';
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx56256z3, datain=>
      nx55259z1, sdata=>nx55259z2, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   nx54262z2 <= '1';
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx56256z5, datain=>
      nx54262z1, sdata=>nx54262z2, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   nx53265z2 <= '1';
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx56256z7, datain=>
      nx53265z1, sdata=>nx53265z2, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   nx52268z2 <= '1';
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx56256z9, datain=>
      nx52268z1, sdata=>nx52268z2, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   nx51271z2 <= '1';
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx56256z11, datain=>
      nx51271z1, sdata=>nx51271z2, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   ix56256z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx56256z6, dataa=>nx56256z7, 
      datad=>nx_modgen_counter_6_0_vcc_net, cin=>nx56256z8);
   nx_modgen_counter_6_0_vcc_net <= '1';
   ix56256z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx56256z8, dataa=>nx56256z9, 
      datad=>nx_modgen_counter_6_0_vcc_net, cin=>nx56256z10);
   ix56256z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, dataa=>nx64583z1, datad=>
      nx_modgen_counter_6_0_vcc_net, cin=>nx56256z2);
   ix56256z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx56256z2, dataa=>nx56256z3, 
      datad=>nx_modgen_counter_6_0_vcc_net, cin=>nx56256z4);
   ix56256z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx56256z4, dataa=>nx56256z5, 
      datad=>nx_modgen_counter_6_0_vcc_net, cin=>nx56256z6);
   ix56256z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx56256z10, dataa=>nx56256z11, 
      datad=>nx_modgen_counter_6_0_vcc_net);
   ix55259z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0d00") 
       port map ( combout=>nx55259z3, dataa=>p_p_reset, datab=>cnt_en, datac
      =>p_p_clock, datad=>px755);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity i2c_ctrl_notri is 
   port (
      p_i2c_sdat : IN std_logic ;
      p_finish_xfr : OUT std_logic ;
      p_i2c_data_4 : IN std_logic_vector (2 DOWNTO 0) ;
      p_i2c_data_3 : IN std_logic_vector (4 DOWNTO 4) ;
      p_i2c_data_2 : IN std_logic_vector (7 DOWNTO 6) ;
      p_i2c_data_1 : IN std_logic_vector (12 DOWNTO 9) ;
      p_i2c_data_5 : IN std_logic_vector (22 DOWNTO 21) ;
      p_i2c_sclk : OUT std_logic ;
      p_start_xfr : IN std_logic ;
      p_reset_rtlc_164_and_66 : IN std_logic_vector (2 DOWNTO 2) ;
      p_ack : OUT std_logic ;
      p_not_sdo : OUT std_logic ;
      p_clock : IN std_logic ;
      p_sdo : OUT std_logic ;
      p_p_clk : IN std_logic ;
      p_m_i2c_ctrl_clk_dup_364 : IN std_logic ;
      p_not_reset_n : IN std_logic ;
      px362 : IN std_logic) ;
end i2c_ctrl_notri ;

architecture main_unfold_1393 of i2c_ctrl_notri is 
   component sub_5_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (4 DOWNTO 0) ;
         b : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic_vector (4 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component modgen_counter_6_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (5 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (5 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic ;
         p_p_reset : IN std_logic ;
         p_p_clk : IN std_logic ;
         p_m_i2c_ctrl_clk_dup_364 : IN std_logic ;
         px755 : IN std_logic ;
         p_p_clock : IN std_logic) ;
   end component ;
   signal sd_counter_4, sd_counter_3, sd_counter_2, sd_counter_1, 
      sd_counter_0: std_logic ;
   
   signal sdo_5n5s2: std_logic_vector (4 DOWNTO 0) ;
   
   signal sd_counter_5, nx41315z14, nx41315z16, nx41315z21, nx41315z12, 
      nx41315z13, nx41315z17, sdo_5n5s2f1_0, sdo_5n5s2f1_1, nx41315z4, 
      nx7286z1, nx41315z19, nx44942z2, nx22137z1, nx44942z7, nx41315z2, 
      nx44942z4, nx44942z5, nx22137z2, nx44942z8, nx41315z15, nx41315z8, 
      nx41315z7, nx44942z6, nx41315z5, nx41315z10, nx41315z3, nx41315z22, 
      nx43379z2, nx43379z3, nx41315z9, nx41315z11, nx41315z18, nx41315z6, 
      nx7286z2, nx43379z4, nx51857z1, nx41315z1, nx43379z1, nx44942z1, 
      nx44942z3, nx41315z20: std_logic ;
   
   signal DANGLING : std_logic_vector (15 downto 0 );

begin
   sdo_sub5_5i2 : sub_5_0 port map ( cin=>DANGLING(0), a(4)=>DANGLING(1), 
      a(3)=>DANGLING(2), a(2)=>nx22137z1, a(1)=>sdo_5n5s2f1_1, a(0)=>
      sdo_5n5s2f1_0, b(4)=>sd_counter_4, b(3)=>sd_counter_3, b(2)=>
      sd_counter_2, b(1)=>sd_counter_1, b(0)=>sd_counter_0, d(4)=>
      sdo_5n5s2(4), d(3)=>sdo_5n5s2(3), d(2)=>sdo_5n5s2(2), d(1)=>
      sdo_5n5s2(1), d(0)=>sdo_5n5s2(0), cout=>DANGLING(3));
   modgen_counter_sd_counter : modgen_counter_6_0 port map ( clock=>p_clock, 
      q(5)=>sd_counter_5, q(4)=>sd_counter_4, q(3)=>sd_counter_3, q(2)=>
      sd_counter_2, q(1)=>sd_counter_1, q(0)=>sd_counter_0, clk_en=>DANGLING
      (4), aclear=>DANGLING(5), sload=>p_not_reset_n, data(5)=>DANGLING(6), 
      data(4)=>DANGLING(7), data(3)=>DANGLING(8), data(2)=>DANGLING(9), 
      data(1)=>DANGLING(10), data(0)=>DANGLING(11), aset=>DANGLING(12), 
      sclear=>DANGLING(13), updn=>DANGLING(14), cnt_en=>nx7286z1, p_p_reset
      =>p_reset_rtlc_164_and_66(2), p_p_clk=>p_p_clk, 
      p_m_i2c_ctrl_clk_dup_364=>DANGLING(15), px755=>px362, p_p_clock=>
      p_clock);
   p_sdo <= NOT nx51857z1;
   reg_sdo : cycloneii_lcell_ff port map ( regout=>nx51857z1, datain=>
      nx41315z1, clk=>p_p_clk, ena=>nx41315z19, sclr=>p_not_reset_n);
   reg_sclk : cycloneii_lcell_ff port map ( regout=>nx43379z1, datain=>
      nx44942z1, clk=>p_p_clk, ena=>nx44942z2, sclr=>p_not_reset_n);
   ix41315z52943 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx41315z21, dataa=>sd_counter_1, datab=>
      sd_counter_0, datac=>nx44942z4, datad=>nx44942z5);
   ix41315z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"0101") 
       port map ( combout=>nx41315z16, dataa=>sd_counter_3, datab=>
      sd_counter_2, datac=>sd_counter_1);
   ix41315z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0808") 
       port map ( combout=>nx41315z14, dataa=>sd_counter_4, datab=>
      sd_counter_2, datac=>sd_counter_5);
   ix43379z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8080") 
       port map ( combout=>nx43379z4, dataa=>sd_counter_3, datab=>
      sd_counter_1, datac=>sd_counter_0);
   ix7286z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"7fff") 
       port map ( combout=>nx7286z2, dataa=>sd_counter_4, datab=>
      sd_counter_3, datac=>sd_counter_2, datad=>sd_counter_1);
   ix41315z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0504") 
       port map ( combout=>nx41315z6, dataa=>sd_counter_4, datab=>
      sd_counter_1, datac=>sd_counter_5, datad=>nx44942z5);
   ix41315z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx41315z18, dataa=>sdo_5n5s2(1), datab=>
      sdo_5n5s2(2), datac=>sdo_5n5s2(4), datad=>sdo_5n5s2(0));
   ix41315z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx41315z11, dataa=>nx41315z12, datab=>nx41315z13, 
      datac=>nx41315z15);
   ix43379z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"040c") 
       port map ( combout=>nx43379z3, dataa=>sd_counter_4, datab=>
      sd_counter_2, datac=>sd_counter_5, datad=>nx43379z4);
   ix43379z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"000e") 
       port map ( combout=>nx43379z2, dataa=>sd_counter_4, datab=>
      sd_counter_3, datac=>sd_counter_2, datad=>sd_counter_5);
   ix41315z52944 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff02") 
       port map ( combout=>nx41315z22, dataa=>nx41315z14, datab=>
      sd_counter_0, datac=>nx44942z7, datad=>nx41315z15);
   ix41315z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff74") 
       port map ( combout=>nx41315z3, dataa=>nx41315z4, datab=>nx22137z1, 
      datac=>nx41315z5, datad=>nx41315z6);
   ix41315z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>nx41315z5, dataa=>sd_counter_3, datab=>
      sd_counter_2, datac=>nx44942z4, datad=>nx43379z4);
   ix44942z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5557") 
       port map ( combout=>nx44942z6, dataa=>p_reset_rtlc_164_and_66(2), 
      datab=>sd_counter_5, datac=>nx44942z7, datad=>nx44942z8);
   ix41315z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f0") 
       port map ( combout=>nx41315z7, dataa=>sdo_5n5s2(1), datab=>nx41315z2, 
      datac=>nx41315z8, datad=>nx41315z10);
   ix41315z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>nx41315z8, dataa=>sdo_5n5s2(3), datab=>nx41315z3, 
      datac=>nx41315z9);
   ix41315z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"ccce") 
       port map ( combout=>nx41315z15, dataa=>nx41315z16, datab=>nx41315z17, 
      datac=>sd_counter_4, datad=>sd_counter_0);
   ix44942z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>nx44942z8, dataa=>sd_counter_4, datab=>
      sd_counter_2);
   ix22137z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"a888") 
       port map ( combout=>nx22137z2, dataa=>sd_counter_3, datab=>
      sd_counter_2, datac=>sd_counter_1, datad=>sd_counter_0);
   ix44942z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx44942z5, dataa=>sd_counter_3, datab=>
      sd_counter_2);
   ix44942z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx44942z4, dataa=>sd_counter_4, datab=>
      sd_counter_5);
   ix41315z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx41315z2, dataa=>sdo_5n5s2(3), datab=>nx41315z3
   );
   ix44942z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>nx44942z7, dataa=>sd_counter_3, datab=>
      sd_counter_1);
   ix22137z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ffa8") 
       port map ( combout=>nx22137z1, dataa=>sd_counter_4, datab=>
      sd_counter_3, datac=>sd_counter_2, datad=>sd_counter_5);
   ix44942z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff01") 
       port map ( combout=>nx44942z3, dataa=>sd_counter_0, datab=>nx44942z4, 
      datac=>nx44942z5, datad=>nx44942z6);
   ix41315z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"5f1f") 
       port map ( combout=>nx41315z20, dataa=>nx41315z21, datab=>nx41315z4, 
      datac=>p_reset_rtlc_164_and_66(2), datad=>nx41315z22);
   ix7286z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f7f7") 
       port map ( combout=>nx7286z1, dataa=>sd_counter_0, datab=>
      sd_counter_5, datac=>nx7286z2);
   ix41315z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>nx41315z4, dataa=>sd_counter_5, datab=>nx7286z2);
   ix22137z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"1302") 
       port map ( combout=>sdo_5n5s2f1_0, dataa=>sd_counter_4, datab=>
      sd_counter_5, datac=>nx44942z5, datad=>nx22137z2);
   ix41315z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0103") 
       port map ( combout=>nx41315z1, dataa=>nx41315z2, datab=>nx41315z7, 
      datac=>nx41315z11, datad=>nx41315z18);
   ix44942z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx44942z1, dataa=>sd_counter_1, datab=>
      sd_counter_0);
   ix41315z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"0800") 
       port map ( combout=>nx41315z17, dataa=>nx41315z14, datab=>
      sd_counter_3, datac=>sd_counter_1, datad=>sd_counter_0);
   ix41315z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx41315z13, dataa=>nx41315z14, datab=>
      sd_counter_3, datac=>sd_counter_1, datad=>sd_counter_0);
   ix41315z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"0004") 
       port map ( combout=>nx41315z12, dataa=>sd_counter_2, datab=>
      sd_counter_0, datac=>nx44942z7, datad=>nx44942z4);
   ix43379z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"7773") 
       port map ( combout=>p_i2c_sclk, dataa=>p_clock, datab=>nx43379z1, 
      datac=>nx43379z2, datad=>nx43379z3);
   ix22137z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0057") 
       port map ( combout=>sdo_5n5s2f1_1, dataa=>sd_counter_4, datab=>
      sd_counter_3, datac=>sd_counter_2, datad=>sd_counter_5);
   ix41315z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"1212") 
       port map ( combout=>nx41315z10, dataa=>sdo_5n5s2(4), datab=>
      sdo_5n5s2(2), datac=>sdo_5n5s2(0));
   ix41315z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"2022") 
       port map ( combout=>nx41315z9, dataa=>sdo_5n5s2(2), datab=>
      sdo_5n5s2(1), datac=>sdo_5n5s2(4), datad=>sdo_5n5s2(0));
   ix41315z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"2020") 
       port map ( combout=>nx41315z19, dataa=>nx41315z20, datab=>p_clock, 
      datac=>px362);
   ix44942z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2020") 
       port map ( combout=>nx44942z2, dataa=>nx44942z3, datab=>p_clock, 
      datac=>px362);
end main_unfold_1393 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity i2c_av_config_notri is 
   port (
      p_u0_not_sdo : OUT std_logic ;
      p_i2c_sclk : OUT std_logic ;
      p_i2c_sdat : IN std_logic ;
      p_clk : IN std_logic ;
      p_sdo : OUT std_logic) ;
end i2c_av_config_notri ;

architecture main_unfold_1971 of i2c_av_config_notri is 
   component modgen_counter_16_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (15 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (15 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component modgen_counter_16_1
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (15 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (15 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component i2c_ctrl_notri
      port (
         p_i2c_sdat : IN std_logic ;
         p_finish_xfr : OUT std_logic ;
         p_i2c_data_4 : IN std_logic_vector (2 DOWNTO 0) ;
         p_i2c_data_3 : IN std_logic_vector (4 DOWNTO 4) ;
         p_i2c_data_2 : IN std_logic_vector (7 DOWNTO 6) ;
         p_i2c_data_1 : IN std_logic_vector (12 DOWNTO 9) ;
         p_i2c_data_5 : IN std_logic_vector (22 DOWNTO 21) ;
         p_i2c_sclk : OUT std_logic ;
         p_start_xfr : IN std_logic ;
         p_reset_rtlc_164_and_66 : IN std_logic_vector (2 DOWNTO 2) ;
         p_ack : OUT std_logic ;
         p_not_sdo : OUT std_logic ;
         p_clock : IN std_logic ;
         p_sdo : OUT std_logic ;
         p_p_clk : IN std_logic ;
         p_m_i2c_ctrl_clk_dup_364 : IN std_logic ;
         p_not_reset_n : IN std_logic ;
         px362 : IN std_logic) ;
   end component ;
   signal cont: std_logic_vector (15 DOWNTO 0) ;
   
   signal m_i2c_clk_div_5, m_i2c_clk_div_4, m_i2c_clk_div_3, m_i2c_clk_div_2, 
      reset_n, m_i2c_clk_div_12, m_i2c_clk_div_11, m_i2c_clk_div_10, 
      m_i2c_clk_div_9, m_i2c_clk_div_6, m_i2c_clk_div_7, m_i2c_clk_div_8, 
      m_i2c_ctrl_clk, nx23875z1, nx2692z2, not_reset_n, nx35560z1, nx2692z1, 
      nx17807z2, nx35560z2, nx35560z3, nx35560z4, nx2692z3, nx2692z4, 
      nx17807z1, nx2692z5, nx51161z1: std_logic ;
   
   signal DANGLING : std_logic_vector (66 downto 0 );

begin
   modgen_counter_cont : modgen_counter_16_0 port map ( clock=>p_clk, q(15)
      =>cont(15), q(14)=>cont(14), q(13)=>cont(13), q(12)=>cont(12), q(11)=>
      cont(11), q(10)=>cont(10), q(9)=>cont(9), q(8)=>cont(8), q(7)=>cont(7), 
      q(6)=>cont(6), q(5)=>cont(5), q(4)=>cont(4), q(3)=>cont(3), q(2)=>
      cont(2), q(1)=>cont(1), q(0)=>cont(0), clk_en=>DANGLING(0), aclear=>
      DANGLING(1), sload=>DANGLING(2), data(15)=>DANGLING(3), data(14)=>
      DANGLING(4), data(13)=>DANGLING(5), data(12)=>DANGLING(6), data(11)=>
      DANGLING(7), data(10)=>DANGLING(8), data(9)=>DANGLING(9), data(8)=>
      DANGLING(10), data(7)=>DANGLING(11), data(6)=>DANGLING(12), data(5)=>
      DANGLING(13), data(4)=>DANGLING(14), data(3)=>DANGLING(15), data(2)=>
      DANGLING(16), data(1)=>DANGLING(17), data(0)=>DANGLING(18), aset=>
      DANGLING(19), sclear=>DANGLING(20), updn=>DANGLING(21), cnt_en=>
      nx35560z1);
   modgen_counter_m_i2c_clk_div : modgen_counter_16_1 port map ( clock=>
      p_clk, q(15)=>DANGLING(22), q(14)=>DANGLING(23), q(13)=>DANGLING(24), 
      q(12)=>m_i2c_clk_div_12, q(11)=>m_i2c_clk_div_11, q(10)=>
      m_i2c_clk_div_10, q(9)=>m_i2c_clk_div_9, q(8)=>m_i2c_clk_div_8, q(7)=>
      m_i2c_clk_div_7, q(6)=>m_i2c_clk_div_6, q(5)=>m_i2c_clk_div_5, q(4)=>
      m_i2c_clk_div_4, q(3)=>m_i2c_clk_div_3, q(2)=>m_i2c_clk_div_2, q(1)=>
      DANGLING(25), q(0)=>DANGLING(26), clk_en=>DANGLING(27), aclear=>
      DANGLING(28), sload=>DANGLING(29), data(15)=>DANGLING(30), data(14)=>
      DANGLING(31), data(13)=>DANGLING(32), data(12)=>DANGLING(33), data(11)
      =>DANGLING(34), data(10)=>DANGLING(35), data(9)=>DANGLING(36), data(8)
      =>DANGLING(37), data(7)=>DANGLING(38), data(6)=>DANGLING(39), data(5)
      =>DANGLING(40), data(4)=>DANGLING(41), data(3)=>DANGLING(42), data(2)
      =>DANGLING(43), data(1)=>DANGLING(44), data(0)=>DANGLING(45), aset=>
      DANGLING(46), sclear=>nx23875z1, updn=>DANGLING(47), cnt_en=>DANGLING(
      48));
   u0 : i2c_ctrl_notri port map ( p_i2c_sdat=>DANGLING(49), p_finish_xfr=>
      DANGLING(50), p_i2c_data_4(2)=>DANGLING(51), p_i2c_data_4(1)=>DANGLING
      (52), p_i2c_data_4(0)=>DANGLING(53), p_i2c_data_3(4)=>DANGLING(54), 
      p_i2c_data_2(7)=>DANGLING(55), p_i2c_data_2(6)=>DANGLING(56), 
      p_i2c_data_1(12)=>DANGLING(57), p_i2c_data_1(11)=>DANGLING(58), 
      p_i2c_data_1(10)=>DANGLING(59), p_i2c_data_1(9)=>DANGLING(60), 
      p_i2c_data_5(22)=>DANGLING(61), p_i2c_data_5(21)=>DANGLING(62), 
      p_i2c_sclk=>p_i2c_sclk, p_start_xfr=>DANGLING(63), 
      p_reset_rtlc_164_and_66(2)=>reset_n, p_ack=>DANGLING(64), p_not_sdo=>
      DANGLING(65), p_clock=>m_i2c_ctrl_clk, p_sdo=>p_sdo, p_p_clk=>p_clk, 
      p_m_i2c_ctrl_clk_dup_364=>DANGLING(66), p_not_reset_n=>not_reset_n, 
      px362=>nx51161z1);
   not_reset_n <= NOT reset_n;
   reg_reset_n : cycloneii_lcell_ff port map ( regout=>reset_n, datain=>
      nx17807z1, clk=>p_clk);
   reg_m_i2c_ctrl_clk : cycloneii_lcell_ff port map ( regout=>m_i2c_ctrl_clk, 
      datain=>nx2692z1, clk=>p_clk, sclr=>not_reset_n);
   ix2692z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"a8a8") 
       port map ( combout=>nx2692z5, dataa=>m_i2c_clk_div_11, datab=>
      m_i2c_clk_div_10, datac=>m_i2c_clk_div_9);
   ix17807z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx17807z1, dataa=>nx17807z2, datab=>nx35560z2, 
      datac=>nx35560z3, datad=>nx35560z4);
   ix2692z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx2692z4, dataa=>m_i2c_clk_div_11, datab=>
      m_i2c_clk_div_6, datac=>m_i2c_clk_div_7, datad=>m_i2c_clk_div_8);
   ix2692z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx2692z3, dataa=>m_i2c_clk_div_5, datab=>
      m_i2c_clk_div_4, datac=>m_i2c_clk_div_3, datad=>m_i2c_clk_div_2);
   ix35560z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx35560z4, dataa=>cont(12), datab=>cont(13), 
      datac=>cont(14), datad=>cont(15));
   ix35560z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx35560z3, dataa=>cont(8), datab=>cont(9), datac
      =>cont(10), datad=>cont(11));
   ix35560z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx35560z2, dataa=>cont(4), datab=>cont(5), datac
      =>cont(6), datad=>cont(7));
   ix17807z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx17807z2, dataa=>cont(0), datab=>cont(1), datac
      =>cont(2), datad=>cont(3));
   ix2692z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6666") 
       port map ( combout=>nx2692z1, dataa=>nx2692z2, datab=>m_i2c_ctrl_clk
   );
   ix2692z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"ffec") 
       port map ( combout=>nx2692z2, dataa=>nx2692z3, datab=>
      m_i2c_clk_div_12, datac=>nx2692z4, datad=>nx2692z5);
   ix23875z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"dddd") 
       port map ( combout=>nx23875z1, dataa=>reset_n, datab=>nx2692z2);
   ix35560z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"7fff") 
       port map ( combout=>nx35560z1, dataa=>nx17807z2, datab=>nx35560z2, 
      datac=>nx35560z3, datad=>nx35560z4);
   ix51161z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2828") 
       port map ( combout=>nx51161z1, dataa=>reset_n, datab=>m_i2c_ctrl_clk, 
      datac=>nx2692z2);
end main_unfold_1971 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_9_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9_0 ;

architecture IMPLEMENTATION of add_9_0 is 
   signal nx45949z23, nx45949z20, nx45949z17, nx45949z14, nx45949z11, 
      nx45949z8, nx45949z5, nx45949z3, nx_add_9_0_vcc_net: std_logic ;

begin
   ix45949z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), dataa=>a(8), datad=>nx_add_9_0_vcc_net, cin
      =>nx45949z3);
   nx_add_9_0_vcc_net <= '1';
   ix45949z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx45949z3, dataa=>a(7), datad=>
      nx_add_9_0_vcc_net, cin=>nx45949z5);
   ix45949z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx45949z5, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z8);
   ix45949z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx45949z8, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z11);
   ix45949z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx45949z11, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z14);
   ix45949z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx45949z14, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z17);
   ix45949z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx45949z17, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z20);
   ix45949z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx45949z20, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z23);
   ix45949z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"99ee") 
       port map ( combout=>d(0), cout=>nx45949z23, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_9_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_10_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (9 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (9 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_10_0 ;

architecture IMPLEMENTATION of modgen_counter_10_0 is 
   signal q_9_EXMPLR606, q_8_EXMPLR607, q_7_EXMPLR608, q_6_EXMPLR609, 
      q_5_EXMPLR610, q_4_EXMPLR611, q_3_EXMPLR612, q_2_EXMPLR613, 
      q_1_EXMPLR614, q_0_EXMPLR615, nx51271z1, nx60244z10, nx52268z1, 
      nx60244z9, nx53265z1, nx60244z8, nx54262z1, nx60244z7, nx55259z1, 
      nx60244z6, nx56256z1, nx60244z5, nx57253z1, nx60244z4, nx58250z1, 
      nx60244z3, nx59247z1, nx60244z2, nx60244z1, 
      nx_modgen_counter_10_0_vcc_net: std_logic ;

begin
   q(9) <= q_9_EXMPLR606 ;
   q(8) <= q_8_EXMPLR607 ;
   q(7) <= q_7_EXMPLR608 ;
   q(6) <= q_6_EXMPLR609 ;
   q(5) <= q_5_EXMPLR610 ;
   q(4) <= q_4_EXMPLR611 ;
   q(3) <= q_3_EXMPLR612 ;
   q(2) <= q_2_EXMPLR613 ;
   q(1) <= q_1_EXMPLR614 ;
   q(0) <= q_0_EXMPLR615 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>q_9_EXMPLR606, datain=>
      nx60244z1, clk=>clock);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>q_8_EXMPLR607, datain=>
      nx59247z1, clk=>clock);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>q_7_EXMPLR608, datain=>
      nx58250z1, clk=>clock);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>q_6_EXMPLR609, datain=>
      nx57253z1, clk=>clock);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>q_5_EXMPLR610, datain=>
      nx56256z1, clk=>clock);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>q_4_EXMPLR611, datain=>
      nx55259z1, clk=>clock);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>q_3_EXMPLR612, datain=>
      nx54262z1, clk=>clock);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>q_2_EXMPLR613, datain=>
      nx53265z1, clk=>clock);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>q_1_EXMPLR614, datain=>
      nx52268z1, clk=>clock);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>q_0_EXMPLR615, datain=>
      nx51271z1, clk=>clock);
   ix60244z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx60244z8, dataa=>q_2_EXMPLR613, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z9);
   nx_modgen_counter_10_0_vcc_net <= '1';
   ix60244z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, dataa=>q_9_EXMPLR606, datad=>
      nx_modgen_counter_10_0_vcc_net, cin=>nx60244z2);
   ix60244z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx60244z2, dataa=>q_8_EXMPLR607, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z3);
   ix60244z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx60244z9, dataa=>q_1_EXMPLR614, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z10);
   ix60244z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx60244z3, dataa=>q_7_EXMPLR608, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z4);
   ix60244z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx60244z4, dataa=>q_6_EXMPLR609, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z5);
   ix60244z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx60244z5, dataa=>q_5_EXMPLR610, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z6);
   ix60244z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx60244z6, dataa=>q_4_EXMPLR611, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z7);
   ix60244z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx60244z7, dataa=>q_3_EXMPLR612, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z8);
   ix60244z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx60244z10, dataa=>q_0_EXMPLR615, 
      datad=>nx_modgen_counter_10_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_9_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (8 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (8 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_9_0 ;

architecture IMPLEMENTATION of modgen_counter_9_0 is 
   signal nx2038z1, nx59247z3, nx59247z5, nx59247z7, nx59247z9, nx59247z11, 
      nx59247z13, nx59247z15, nx59247z17, nx51271z1, nx59247z16, nx52268z1, 
      nx59247z14, nx53265z1, nx59247z12, nx54262z1, nx59247z10, nx55259z1, 
      nx59247z8, nx56256z1, nx59247z6, nx57253z1, nx59247z4, nx58250z1, 
      nx59247z2, nx59247z1, nx_modgen_counter_9_0_vcc_net: std_logic ;

begin
   q(8) <= nx2038z1 ;
   q(7) <= nx59247z3 ;
   q(6) <= nx59247z5 ;
   q(5) <= nx59247z7 ;
   q(4) <= nx59247z9 ;
   q(3) <= nx59247z11 ;
   q(2) <= nx59247z13 ;
   q(1) <= nx59247z15 ;
   q(0) <= nx59247z17 ;
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx2038z1, datain=>
      nx59247z1, clk=>clock, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx59247z3, datain=>
      nx58250z1, clk=>clock, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx59247z5, datain=>
      nx57253z1, clk=>clock, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx59247z7, datain=>
      nx56256z1, clk=>clock, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx59247z9, datain=>
      nx55259z1, clk=>clock, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx59247z11, datain=>
      nx54262z1, clk=>clock, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx59247z13, datain=>
      nx53265z1, clk=>clock, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx59247z15, datain=>
      nx52268z1, clk=>clock, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx59247z17, datain=>
      nx51271z1, clk=>clock, sclr=>sclear);
   ix59247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx59247z12, dataa=>nx59247z13, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z14);
   nx_modgen_counter_9_0_vcc_net <= '1';
   ix59247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, dataa=>nx2038z1, datad=>
      nx_modgen_counter_9_0_vcc_net, cin=>nx59247z2);
   ix59247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx59247z2, dataa=>nx59247z3, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z4);
   ix59247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx59247z4, dataa=>nx59247z5, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z6);
   ix59247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx59247z14, dataa=>nx59247z15, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z16);
   ix59247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx59247z6, dataa=>nx59247z7, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z8);
   ix59247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx59247z8, dataa=>nx59247z9, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z10);
   ix59247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx59247z10, dataa=>nx59247z11, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z12);
   ix59247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx59247z16, dataa=>nx59247z17, 
      datad=>nx_modgen_counter_9_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity fir_top is 
   port (
      clock_50 : IN std_logic ;
      clock_27 : IN std_logic ;
      key : IN std_logic_vector (3 DOWNTO 0) ;
      sw : IN std_logic_vector (17 DOWNTO 0) ;
      ledg : OUT std_logic_vector (8 DOWNTO 0) ;
      ledr : OUT std_logic_vector (17 DOWNTO 0) ;
      hex0 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex1 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex2 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex3 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex4 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex5 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex6 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex7 : OUT std_logic_vector (6 DOWNTO 0) ;
      aud_xck : OUT std_logic ;
      aud_bclk : INOUT std_logic ;
      aud_dacdat : OUT std_logic ;
      aud_daclrck : OUT std_logic ;
      aud_adclrck : OUT std_logic ;
      i2c_sdat : INOUT std_logic ;
      i2c_sclk : OUT std_logic) ;
end fir_top ;

architecture main of fir_top is 
   component fir
      port (
         clk : IN std_logic ;
         i_data : IN std_logic_vector (15 DOWNTO 0) ;
         o_data : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   component i2c_av_config_notri
      port (
         p_u0_not_sdo : OUT std_logic ;
         p_i2c_sclk : OUT std_logic ;
         p_i2c_sdat : IN std_logic ;
         p_clk : IN std_logic ;
         p_sdo : OUT std_logic) ;
   end component ;
   component add_9_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component modgen_counter_10_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (9 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (9 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component modgen_counter_9_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (8 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (8 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   signal clock_27_EXMPLR621, key_0_EXMPLR622, sw_17_EXMPLR623, 
      sw_16_EXMPLR624, sw_6_EXMPLR625, sw_5_EXMPLR626, sw_4_EXMPLR627, 
      sw_3_EXMPLR628, sw_2_EXMPLR629, sw_1_EXMPLR630, sw_0_EXMPLR631: 
   std_logic ;
   
   signal ledg_EXMPLR722: std_logic_vector (8 DOWNTO 0) ;
   
   signal ledr_EXMPLR723: std_logic_vector (17 DOWNTO 0) ;
   
   signal hex0_EXMPLR724: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex1_EXMPLR725: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex2_EXMPLR726: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex3_EXMPLR727: std_logic_vector (6 DOWNTO 0) ;
   
   signal aud_xck_dup0, aud_bclk_dup0, aud_dacdat_dup0, aud_adclrck_dup0, 
      i2c_sclk_dup0, sine_data_11, sine_data_10, sine_data_9, sine_data_8, 
      sine_data_7, sine_data_6, sine_data_5, sine_data_4, sine_data_3, 
      sine_data_2, sine_data_1, sine_data_0, noise_data_15, noise_data_10, 
      noise_data_9, noise_data_8, noise_data_7, noise_data_6, noise_data_5, 
      noise_data_4: std_logic ;
   
   signal audio_out: std_logic_vector (15 DOWNTO 0) ;
   
   signal low_pass_out: std_logic_vector (15 DOWNTO 0) ;
   
   signal low_pass_in_15, low_pass_in_10, low_pass_in_9, low_pass_in_8, 
      low_pass_in_7, low_pass_in_6, low_pass_in_5, low_pass_in_4, 
      low_pass_in_3, low_pass_in_2, low_pass_in_1, low_pass_in_0: std_logic
    ;
   
   signal bit_position: std_logic_vector (3 DOWNTO 0) ;
   
   signal nx49625z1, nx49625z2, nx49625z3, nx49625z4: std_logic ;
   
   signal u_sine_address: std_logic_vector (8 DOWNTO 0) ;
   
   signal u_sine_address_0n0r2: std_logic_vector (8 DOWNTO 0) ;
   
   signal u_noise_address: std_logic_vector (9 DOWNTO 0) ;
   
   signal u_audio_dac_bck_div_2, u_audio_dac_bck_div_1, 
      u_audio_dac_bck_div_0: std_logic ;
   
   signal u_audio_dac_lrck_1x_div: std_logic_vector (8 DOWNTO 0) ;
   
   signal nx24999z5, nx24999z4, nx24999z3, nx24999z2, nx24999z7, nx24999z6, 
      nx24999z9, nx24999z8, nx24999z1, nx38664z9, nx38664z6, nx38664z7, 
      nx38664z5, nx38664z3, nx38664z1, nx38664z2, nx4119z14, nx4119z15, 
      nx4119z12, nx4119z10, nx4119z11, nx4119z8, nx4119z5, nx4119z7, 
      nx4119z3, nx4119z1, nx17637z2, clock_27_int, key_int_0, sw_int_17, 
      sw_int_16, sw_int_6, sw_int_5, sw_int_4, sw_int_3, sw_int_2, sw_int_1, 
      sw_int_0: std_logic ;
   
   signal hex4_EXMPLR728: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex5_EXMPLR729: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex6_EXMPLR730: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex7_EXMPLR731: std_logic_vector (6 DOWNTO 0) ;
   
   signal aud_xck_EXMPLR717, aud_dacdat_EXMPLR718, aud_daclrck_EXMPLR719, 
      aud_adclrck_EXMPLR720, i2c_sclk_EXMPLR721: std_logic ;
   
   signal hex4_dup0: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex5_dup0: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex6_dup0: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex7_dup0: std_logic_vector (6 DOWNTO 4) ;
   
   signal display_freq: std_logic_vector (11 DOWNTO 0) ;
   
   signal audio_out_1n1ss1_11, audio_out_1n1ss1_10, audio_out_1n1ss1_9, 
      audio_out_1n1ss1_8, audio_out_1n1ss1_7, audio_out_1n1ss1_6, 
      audio_out_1n1ss1_5, audio_out_1n1ss1_4, audio_out_1n1ss1_3, 
      audio_out_1n1ss1_2, audio_out_1n1ss1_1, audio_out_1n1ss1_0, nx55607z1, 
      NOT_bit_position_0, u_audio_dac_not_reset_n, nx48238z1, nx50205z2, 
      nx15494z1, nx48820z1, nx49817z1, nx50814z1, nx32096z1, nx30102z1, 
      nx30102z2, nx31099z1, nx31099z2, nx50205z3, nx50205z4, nx38664z4, 
      nx38664z8, nx4119z2, nx4119z9, nx4119z13, nx10101z1, nx17637z1, 
      nx10101z2, nx4119z6, nx4119z4, nx55607z2, sdo_dup_282, nx50205z1: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (49 downto 0 );

begin
   clock_27_EXMPLR621 <= clock_27 ;
   key_0_EXMPLR622 <= key(0) ;
   sw_17_EXMPLR623 <= sw(17) ;
   sw_16_EXMPLR624 <= sw(16) ;
   sw_6_EXMPLR625 <= sw(6) ;
   sw_5_EXMPLR626 <= sw(5) ;
   sw_4_EXMPLR627 <= sw(4) ;
   sw_3_EXMPLR628 <= sw(3) ;
   sw_2_EXMPLR629 <= sw(2) ;
   sw_1_EXMPLR630 <= sw(1) ;
   sw_0_EXMPLR631 <= sw(0) ;
   ledg(8) <= ledg_EXMPLR722(8) ;
   ledg(7) <= ledg_EXMPLR722(7) ;
   ledg(6) <= ledg_EXMPLR722(6) ;
   ledg(5) <= ledg_EXMPLR722(5) ;
   ledg(4) <= ledg_EXMPLR722(4) ;
   ledg(3) <= ledg_EXMPLR722(3) ;
   ledg(2) <= ledg_EXMPLR722(2) ;
   ledg(1) <= ledg_EXMPLR722(1) ;
   ledg(0) <= ledg_EXMPLR722(0) ;
   ledr(17) <= ledr_EXMPLR723(17) ;
   ledr(16) <= ledr_EXMPLR723(16) ;
   ledr(15) <= ledr_EXMPLR723(15) ;
   ledr(14) <= ledr_EXMPLR723(14) ;
   ledr(13) <= ledr_EXMPLR723(13) ;
   ledr(12) <= ledr_EXMPLR723(12) ;
   ledr(11) <= ledr_EXMPLR723(11) ;
   ledr(10) <= ledr_EXMPLR723(10) ;
   ledr(9) <= ledr_EXMPLR723(9) ;
   ledr(8) <= ledr_EXMPLR723(8) ;
   ledr(7) <= ledr_EXMPLR723(7) ;
   ledr(6) <= ledr_EXMPLR723(6) ;
   ledr(5) <= ledr_EXMPLR723(5) ;
   ledr(4) <= ledr_EXMPLR723(4) ;
   ledr(3) <= ledr_EXMPLR723(3) ;
   ledr(2) <= ledr_EXMPLR723(2) ;
   ledr(1) <= ledr_EXMPLR723(1) ;
   ledr(0) <= ledr_EXMPLR723(0) ;
   hex0(6) <= hex0_EXMPLR724(6) ;
   hex0(5) <= hex0_EXMPLR724(5) ;
   hex0(4) <= hex0_EXMPLR724(4) ;
   hex0(3) <= hex0_EXMPLR724(3) ;
   hex0(2) <= hex0_EXMPLR724(2) ;
   hex0(1) <= hex0_EXMPLR724(1) ;
   hex0(0) <= hex0_EXMPLR724(0) ;
   hex1(6) <= hex1_EXMPLR725(6) ;
   hex1(5) <= hex1_EXMPLR725(5) ;
   hex1(4) <= hex1_EXMPLR725(4) ;
   hex1(3) <= hex1_EXMPLR725(3) ;
   hex1(2) <= hex1_EXMPLR725(2) ;
   hex1(1) <= hex1_EXMPLR725(1) ;
   hex1(0) <= hex1_EXMPLR725(0) ;
   hex2(6) <= hex2_EXMPLR726(6) ;
   hex2(5) <= hex2_EXMPLR726(5) ;
   hex2(4) <= hex2_EXMPLR726(4) ;
   hex2(3) <= hex2_EXMPLR726(3) ;
   hex2(2) <= hex2_EXMPLR726(2) ;
   hex2(1) <= hex2_EXMPLR726(1) ;
   hex2(0) <= hex2_EXMPLR726(0) ;
   hex3(6) <= hex3_EXMPLR727(6) ;
   hex3(5) <= hex3_EXMPLR727(5) ;
   hex3(4) <= hex3_EXMPLR727(4) ;
   hex3(3) <= hex3_EXMPLR727(3) ;
   hex3(2) <= hex3_EXMPLR727(2) ;
   hex3(1) <= hex3_EXMPLR727(1) ;
   hex3(0) <= hex3_EXMPLR727(0) ;
   hex4(6) <= hex4_EXMPLR728(6) ;
   hex4(5) <= hex4_EXMPLR728(5) ;
   hex4(4) <= hex4_EXMPLR728(4) ;
   hex4(3) <= hex4_EXMPLR728(3) ;
   hex4(2) <= hex4_EXMPLR728(2) ;
   hex4(1) <= hex4_EXMPLR728(1) ;
   hex4(0) <= hex4_EXMPLR728(0) ;
   hex5(6) <= hex5_EXMPLR729(6) ;
   hex5(5) <= hex5_EXMPLR729(5) ;
   hex5(4) <= hex5_EXMPLR729(4) ;
   hex5(3) <= hex5_EXMPLR729(3) ;
   hex5(2) <= hex5_EXMPLR729(2) ;
   hex5(1) <= hex5_EXMPLR729(1) ;
   hex5(0) <= hex5_EXMPLR729(0) ;
   hex6(6) <= hex6_EXMPLR730(6) ;
   hex6(5) <= hex6_EXMPLR730(5) ;
   hex6(4) <= hex6_EXMPLR730(4) ;
   hex6(3) <= hex6_EXMPLR730(3) ;
   hex6(2) <= hex6_EXMPLR730(2) ;
   hex6(1) <= hex6_EXMPLR730(1) ;
   hex6(0) <= hex6_EXMPLR730(0) ;
   hex7(6) <= hex7_EXMPLR731(6) ;
   hex7(5) <= hex7_EXMPLR731(5) ;
   hex7(4) <= hex7_EXMPLR731(4) ;
   hex7(3) <= hex7_EXMPLR731(3) ;
   hex7(2) <= hex7_EXMPLR731(2) ;
   hex7(1) <= hex7_EXMPLR731(1) ;
   hex7(0) <= hex7_EXMPLR731(0) ;
   aud_xck <= aud_xck_EXMPLR717 ;
   aud_dacdat <= aud_dacdat_EXMPLR718 ;
   aud_daclrck <= aud_daclrck_EXMPLR719 ;
   aud_adclrck <= aud_adclrck_EXMPLR720 ;
   i2c_sclk <= i2c_sclk_EXMPLR721 ;
   low_pass : fir port map ( clk=>DANGLING(0), i_data(15)=>low_pass_in_15, 
      i_data(14)=>low_pass_in_15, i_data(13)=>DANGLING(1), i_data(12)=>
      DANGLING(2), i_data(11)=>low_pass_in_15, i_data(10)=>low_pass_in_10, 
      i_data(9)=>low_pass_in_9, i_data(8)=>low_pass_in_8, i_data(7)=>
      low_pass_in_7, i_data(6)=>low_pass_in_6, i_data(5)=>low_pass_in_5, 
      i_data(4)=>low_pass_in_4, i_data(3)=>low_pass_in_3, i_data(2)=>
      low_pass_in_2, i_data(1)=>low_pass_in_1, i_data(0)=>low_pass_in_0, 
      o_data(15)=>low_pass_out(15), o_data(14)=>low_pass_out(14), o_data(13)
      =>low_pass_out(13), o_data(12)=>low_pass_out(12), o_data(11)=>
      low_pass_out(11), o_data(10)=>low_pass_out(10), o_data(9)=>
      low_pass_out(9), o_data(8)=>low_pass_out(8), o_data(7)=>
      low_pass_out(7), o_data(6)=>low_pass_out(6), o_data(5)=>
      low_pass_out(5), o_data(4)=>low_pass_out(4), o_data(3)=>
      low_pass_out(3), o_data(2)=>low_pass_out(2), o_data(1)=>
      low_pass_out(1), o_data(0)=>low_pass_out(0));
   u_i2c_av_config : i2c_av_config_notri port map ( p_u0_not_sdo=>DANGLING(3
      ), p_i2c_sclk=>i2c_sclk_dup0, p_i2c_sdat=>DANGLING(4), p_clk=>
      clock_27_int, p_sdo=>sdo_dup_282);
   u_sine_address_add9_0i1 : add_9_0 port map ( cin=>DANGLING(5), a(8)=>
      u_sine_address(8), a(7)=>u_sine_address(7), a(6)=>u_sine_address(6), 
      a(5)=>u_sine_address(5), a(4)=>u_sine_address(4), a(3)=>
      u_sine_address(3), a(2)=>u_sine_address(2), a(1)=>u_sine_address(1), 
      a(0)=>u_sine_address(0), b(8)=>DANGLING(6), b(7)=>DANGLING(7), b(6)=>
      sw_int_6, b(5)=>sw_int_5, b(4)=>sw_int_4, b(3)=>sw_int_3, b(2)=>
      sw_int_2, b(1)=>sw_int_1, b(0)=>sw_int_0, d(8)=>
      u_sine_address_0n0r2(8), d(7)=>u_sine_address_0n0r2(7), d(6)=>
      u_sine_address_0n0r2(6), d(5)=>u_sine_address_0n0r2(5), d(4)=>
      u_sine_address_0n0r2(4), d(3)=>u_sine_address_0n0r2(3), d(2)=>
      u_sine_address_0n0r2(2), d(1)=>u_sine_address_0n0r2(1), d(0)=>
      u_sine_address_0n0r2(0), cout=>DANGLING(8));
   u_noise_modgen_counter_address : modgen_counter_10_0 port map ( clock=>
      aud_adclrck_dup0, q(9)=>u_noise_address(9), q(8)=>u_noise_address(8), 
      q(7)=>u_noise_address(7), q(6)=>u_noise_address(6), q(5)=>
      u_noise_address(5), q(4)=>u_noise_address(4), q(3)=>u_noise_address(3), 
      q(2)=>u_noise_address(2), q(1)=>u_noise_address(1), q(0)=>
      u_noise_address(0), clk_en=>DANGLING(9), aclear=>DANGLING(10), sload=>
      DANGLING(11), data(9)=>DANGLING(12), data(8)=>DANGLING(13), data(7)=>
      DANGLING(14), data(6)=>DANGLING(15), data(5)=>DANGLING(16), data(4)=>
      DANGLING(17), data(3)=>DANGLING(18), data(2)=>DANGLING(19), data(1)=>
      DANGLING(20), data(0)=>DANGLING(21), aset=>DANGLING(22), sclear=>
      DANGLING(23), updn=>DANGLING(24), cnt_en=>DANGLING(25));
   u_audio_dac_modgen_counter_lrck_1x_div : modgen_counter_9_0 port map ( 
      clock=>aud_xck_dup0, q(8)=>u_audio_dac_lrck_1x_div(8), q(7)=>
      u_audio_dac_lrck_1x_div(7), q(6)=>u_audio_dac_lrck_1x_div(6), q(5)=>
      u_audio_dac_lrck_1x_div(5), q(4)=>u_audio_dac_lrck_1x_div(4), q(3)=>
      u_audio_dac_lrck_1x_div(3), q(2)=>u_audio_dac_lrck_1x_div(2), q(1)=>
      u_audio_dac_lrck_1x_div(1), q(0)=>u_audio_dac_lrck_1x_div(0), clk_en=>
      DANGLING(26), aclear=>DANGLING(27), sload=>DANGLING(28), data(8)=>
      DANGLING(29), data(7)=>DANGLING(30), data(6)=>DANGLING(31), data(5)=>
      DANGLING(32), data(4)=>DANGLING(33), data(3)=>DANGLING(34), data(2)=>
      DANGLING(35), data(1)=>DANGLING(36), data(0)=>DANGLING(37), aset=>
      DANGLING(38), sclear=>nx48238z1, updn=>DANGLING(39), cnt_en=>DANGLING(
      40));
   u_audio_dac_p1_altpll : altpll
      generic map (CLK0_DIVIDE_BY => 15,
         CLK0_DUTY_CYCLE => 50,
         CLK0_MULTIPLY_BY => 14,
         CLK0_PHASE_SHIFT => "0",
         CLK1_DIVIDE_BY => 3,
         CLK1_DUTY_CYCLE => 50,
         CLK1_MULTIPLY_BY => 2,
         CLK1_PHASE_SHIFT => "0",
         COMPENSATE_CLOCK => "CLK0",
         INCLK0_INPUT_FREQUENCY => 37037
         ,
         INTENDED_DEVICE_FAMILY => "Cyclone II",
         LPM_TYPE => "altpll",
         OPERATION_MODE => "NORMAL",
         PLL_TYPE => "FAST") 
       port map ( clk(9)=>DANGLING(41), clk(8)=>DANGLING(42), clk(7)=>
      DANGLING(43), clk(6)=>DANGLING(44), clk(5)=>DANGLING(45), clk(4)=>
      DANGLING(46), clk(3)=>DANGLING(47), clk(2)=>DANGLING(48), clk(1)=>
      aud_xck_dup0, clk(0)=>DANGLING(49), inclk(1)=>hex7_dup0(4), inclk(0)=>
      clock_27_int);
   u_sine_modgen_rom_ix21_ix62120z58996 : altsyncram
      generic map (lpm_type => "altsyncram",
         lpm_hint => "UNUSED",
         intended_device_family => "Stratix",
         maximum_depth => 0,
         init_file_layout => "UNUSED"
         ,
         init_file => "u_sine_modgen_rom_ix21__altsyncram_12_6_64_2_0.hex"
         ,
         ram_block_type => "AUTO"
         ,
         read_during_write_mode_mixed_ports => "DONT_CARE",
         byte_size => 8,
         operation_mode => "ROM",
         address_aclr_b => "NONE",
         width_byteena_b => 1,
         byteena_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         indata_aclr_b => "NONE",
         byteena_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         indata_reg_b => "CLOCK1",
         rdcontrol_aclr_b => "NONE",
         outdata_aclr_b => "NONE",
         outdata_reg_b => "UNREGISTERED",
         address_reg_b => "CLOCK1",
         rdcontrol_reg_b => "CLOCK1",
         numwords_b => 64,
         widthad_b => 6,
         width_b => 12,
         width_byteena_a => 1,
         byteena_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         address_aclr_a => "NONE",
         outdata_reg_a => "UNREGISTERED",
         numwords_a => 64,
         widthad_a => 6,
         width_a => 12) 
       port map ( address_a(5)=>u_sine_address_0n0r2(8), address_a(4)=>
      u_sine_address_0n0r2(7), address_a(3)=>u_sine_address_0n0r2(6), 
      address_a(2)=>u_sine_address_0n0r2(5), address_a(1)=>
      u_sine_address_0n0r2(4), address_a(0)=>u_sine_address_0n0r2(3), wren_a
      =>hex7_dup0(4), clock0=>aud_adclrck_dup0, clocken0=>hex7_dup0(6), 
      q_a(11)=>sine_data_11, q_a(10)=>sine_data_10, q_a(9)=>sine_data_9, 
      q_a(8)=>sine_data_8, q_a(7)=>sine_data_7, q_a(6)=>sine_data_6, q_a(5)
      =>sine_data_5, q_a(4)=>sine_data_4, q_a(3)=>sine_data_3, q_a(2)=>
      sine_data_2, q_a(1)=>sine_data_1, q_a(0)=>sine_data_0);
   u_noise_modgen_rom_ix24_ix62120z34212 : altsyncram
      generic map (lpm_type => "altsyncram",
         lpm_hint => "UNUSED",
         intended_device_family => "Stratix",
         maximum_depth => 0,
         init_file_layout => "UNUSED"
         ,
         init_file => "u_noise_modgen_rom_ix24__altsyncram_8_10_1024_2_0.hex"
         ,
         ram_block_type => "AUTO"
         ,
         read_during_write_mode_mixed_ports => "DONT_CARE",
         byte_size => 8,
         operation_mode => "ROM",
         address_aclr_b => "NONE",
         width_byteena_b => 1,
         byteena_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         indata_aclr_b => "NONE",
         byteena_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         indata_reg_b => "CLOCK1",
         rdcontrol_aclr_b => "NONE",
         outdata_aclr_b => "NONE",
         outdata_reg_b => "UNREGISTERED",
         address_reg_b => "CLOCK1",
         rdcontrol_reg_b => "CLOCK1",
         numwords_b => 1024,
         widthad_b => 10,
         width_b => 8,
         width_byteena_a => 1,
         byteena_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         address_aclr_a => "NONE",
         outdata_reg_a => "UNREGISTERED",
         numwords_a => 1024,
         widthad_a => 10,
         width_a => 8) 
       port map ( address_a(9)=>u_noise_address(9), address_a(8)=>
      u_noise_address(8), address_a(7)=>u_noise_address(7), address_a(6)=>
      u_noise_address(6), address_a(5)=>u_noise_address(5), address_a(4)=>
      u_noise_address(4), address_a(3)=>u_noise_address(3), address_a(2)=>
      u_noise_address(2), address_a(1)=>u_noise_address(1), address_a(0)=>
      u_noise_address(0), wren_a=>hex7_dup0(4), clock0=>aud_adclrck_dup0, 
      clocken0=>hex7_dup0(6), q_a(7)=>noise_data_15, q_a(6)=>noise_data_10, 
      q_a(5)=>noise_data_9, q_a(4)=>noise_data_8, q_a(3)=>noise_data_7, 
      q_a(2)=>noise_data_6, q_a(1)=>noise_data_5, q_a(0)=>noise_data_4);
   ix12601z20184 : TRI port map ( a_OUT=>aud_bclk, a_IN=>aud_bclk_dup0, OE=>
      hex7_dup0(6));
   hex7_dup0(4) <= '0';
   hex7_dup0(6) <= '1';
   u_audio_dac_not_reset_n <= NOT key_int_0;
   u_sine_reg_address_8 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(8), datain=>u_sine_address_0n0r2(8), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_7 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(7), datain=>u_sine_address_0n0r2(7), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_6 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(6), datain=>u_sine_address_0n0r2(6), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_5 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(5), datain=>u_sine_address_0n0r2(5), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_4 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(4), datain=>u_sine_address_0n0r2(4), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_3 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(3), datain=>u_sine_address_0n0r2(3), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_2 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(2), datain=>u_sine_address_0n0r2(2), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_1 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(1), datain=>u_sine_address_0n0r2(1), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_0 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(0), datain=>u_sine_address_0n0r2(0), clk=>
      aud_adclrck_dup0);
   u_i2c_av_config_u0_ix31977z43919 : cycloneii_io
      generic map (operation_mode => "bidir",
         open_drain_output => "true",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>i2c_sdat, datain=>sdo_dup_282, oe=>hex7_dup0(6));
   u_audio_dac_reg_lrck_1x : cycloneii_lcell_ff port map ( regout=>
      aud_adclrck_dup0, datain=>nx50205z1, clk=>aud_xck_dup0, sclr=>
      u_audio_dac_not_reset_n);
   u_audio_dac_reg_aud_bck : cycloneii_lcell_ff port map ( regout=>
      aud_bclk_dup0, datain=>nx15494z1, clk=>aud_xck_dup0, sclr=>
      u_audio_dac_not_reset_n);
   u_audio_dac_modgen_counter_bck_div_reg_q_2 : cycloneii_lcell_ff
       port map ( regout=>u_audio_dac_bck_div_2, datain=>nx30102z1, clk=>
      aud_xck_dup0, ena=>nx30102z2);
   u_audio_dac_modgen_counter_bck_div_reg_q_1 : cycloneii_lcell_ff
       port map ( regout=>u_audio_dac_bck_div_1, datain=>nx31099z1, clk=>
      aud_xck_dup0, ena=>nx31099z2);
   u_audio_dac_modgen_counter_bck_div_reg_q_0 : cycloneii_lcell_ff
       port map ( regout=>u_audio_dac_bck_div_0, datain=>nx32096z1, clk=>
      aud_xck_dup0);
   sw_ibuf_6 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_6, padio=>sw_6_EXMPLR625);
   sw_ibuf_5 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_5, padio=>sw_5_EXMPLR626);
   sw_ibuf_4 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_4, padio=>sw_4_EXMPLR627);
   sw_ibuf_3 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_3, padio=>sw_3_EXMPLR628);
   sw_ibuf_2 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_2, padio=>sw_2_EXMPLR629);
   sw_ibuf_17 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_17, padio=>sw_17_EXMPLR623);
   sw_ibuf_16 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_16, padio=>sw_16_EXMPLR624);
   sw_ibuf_1 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_1, padio=>sw_1_EXMPLR630);
   sw_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_0, padio=>sw_0_EXMPLR631);
   reg_low_pass_in_9 : cycloneii_lcell_ff port map ( regout=>low_pass_in_9, 
      datain=>sine_data_9, sdata=>noise_data_9, clk=>aud_adclrck_dup0, ena=>
      sw_int_16, sload=>sw_int_17);
   reg_low_pass_in_8 : cycloneii_lcell_ff port map ( regout=>low_pass_in_8, 
      datain=>sine_data_8, sdata=>noise_data_8, clk=>aud_adclrck_dup0, ena=>
      sw_int_16, sload=>sw_int_17);
   reg_low_pass_in_7 : cycloneii_lcell_ff port map ( regout=>low_pass_in_7, 
      datain=>sine_data_7, sdata=>noise_data_7, clk=>aud_adclrck_dup0, ena=>
      sw_int_16, sload=>sw_int_17);
   reg_low_pass_in_6 : cycloneii_lcell_ff port map ( regout=>low_pass_in_6, 
      datain=>sine_data_6, sdata=>noise_data_6, clk=>aud_adclrck_dup0, ena=>
      sw_int_16, sload=>sw_int_17);
   reg_low_pass_in_5 : cycloneii_lcell_ff port map ( regout=>low_pass_in_5, 
      datain=>sine_data_5, sdata=>noise_data_5, clk=>aud_adclrck_dup0, ena=>
      sw_int_16, sload=>sw_int_17);
   reg_low_pass_in_4 : cycloneii_lcell_ff port map ( regout=>low_pass_in_4, 
      datain=>sine_data_4, sdata=>noise_data_4, clk=>aud_adclrck_dup0, ena=>
      sw_int_16, sload=>sw_int_17);
   reg_low_pass_in_3 : cycloneii_lcell_ff port map ( regout=>low_pass_in_3, 
      datain=>audio_out_1n1ss1_3, clk=>aud_adclrck_dup0, ena=>sw_int_16);
   reg_low_pass_in_2 : cycloneii_lcell_ff port map ( regout=>low_pass_in_2, 
      datain=>audio_out_1n1ss1_2, clk=>aud_adclrck_dup0, ena=>sw_int_16);
   reg_low_pass_in_15 : cycloneii_lcell_ff port map ( regout=>low_pass_in_15, 
      datain=>sine_data_11, sdata=>noise_data_15, clk=>aud_adclrck_dup0, ena
      =>sw_int_16, sload=>sw_int_17);
   reg_low_pass_in_10 : cycloneii_lcell_ff port map ( regout=>low_pass_in_10, 
      datain=>sine_data_10, sdata=>noise_data_10, clk=>aud_adclrck_dup0, ena
      =>sw_int_16, sload=>sw_int_17);
   reg_low_pass_in_1 : cycloneii_lcell_ff port map ( regout=>low_pass_in_1, 
      datain=>audio_out_1n1ss1_1, clk=>aud_adclrck_dup0, ena=>sw_int_16);
   reg_low_pass_in_0 : cycloneii_lcell_ff port map ( regout=>low_pass_in_0, 
      datain=>audio_out_1n1ss1_0, clk=>aud_adclrck_dup0, ena=>sw_int_16);
   reg_audio_out_9 : cycloneii_lcell_ff port map ( regout=>audio_out(9), 
      datain=>audio_out_1n1ss1_9, sdata=>low_pass_out(9), clk=>
      aud_adclrck_dup0, ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_8 : cycloneii_lcell_ff port map ( regout=>audio_out(8), 
      datain=>audio_out_1n1ss1_8, sdata=>low_pass_out(8), clk=>
      aud_adclrck_dup0, ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_7 : cycloneii_lcell_ff port map ( regout=>audio_out(7), 
      datain=>audio_out_1n1ss1_7, sdata=>low_pass_out(7), clk=>
      aud_adclrck_dup0, ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_6 : cycloneii_lcell_ff port map ( regout=>audio_out(6), 
      datain=>audio_out_1n1ss1_6, sdata=>low_pass_out(6), clk=>
      aud_adclrck_dup0, ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_5 : cycloneii_lcell_ff port map ( regout=>audio_out(5), 
      datain=>audio_out_1n1ss1_5, sdata=>low_pass_out(5), clk=>
      aud_adclrck_dup0, ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_4 : cycloneii_lcell_ff port map ( regout=>audio_out(4), 
      datain=>audio_out_1n1ss1_4, sdata=>low_pass_out(4), clk=>
      aud_adclrck_dup0, ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_3 : cycloneii_lcell_ff port map ( regout=>audio_out(3), 
      datain=>audio_out_1n1ss1_3, sdata=>low_pass_out(3), clk=>
      aud_adclrck_dup0, ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_2 : cycloneii_lcell_ff port map ( regout=>audio_out(2), 
      datain=>audio_out_1n1ss1_2, sdata=>low_pass_out(2), clk=>
      aud_adclrck_dup0, ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_15 : cycloneii_lcell_ff port map ( regout=>audio_out(15), 
      datain=>audio_out_1n1ss1_11, sdata=>low_pass_out(15), clk=>
      aud_adclrck_dup0, ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_14 : cycloneii_lcell_ff port map ( regout=>audio_out(14), 
      datain=>audio_out_1n1ss1_11, sdata=>low_pass_out(14), clk=>
      aud_adclrck_dup0, ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_13 : cycloneii_lcell_ff port map ( regout=>audio_out(13), 
      datain=>audio_out_1n1ss1_11, sdata=>low_pass_out(13), clk=>
      aud_adclrck_dup0, ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_12 : cycloneii_lcell_ff port map ( regout=>audio_out(12), 
      datain=>audio_out_1n1ss1_11, sdata=>low_pass_out(12), clk=>
      aud_adclrck_dup0, ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_11 : cycloneii_lcell_ff port map ( regout=>audio_out(11), 
      datain=>audio_out_1n1ss1_11, sdata=>low_pass_out(11), clk=>
      aud_adclrck_dup0, ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_10 : cycloneii_lcell_ff port map ( regout=>audio_out(10), 
      datain=>audio_out_1n1ss1_10, sdata=>low_pass_out(10), clk=>
      aud_adclrck_dup0, ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_1 : cycloneii_lcell_ff port map ( regout=>audio_out(1), 
      datain=>audio_out_1n1ss1_1, sdata=>low_pass_out(1), clk=>
      aud_adclrck_dup0, ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_0 : cycloneii_lcell_ff port map ( regout=>audio_out(0), 
      datain=>audio_out_1n1ss1_0, sdata=>low_pass_out(0), clk=>
      aud_adclrck_dup0, ena=>hex7_dup0(6), sload=>sw_int_16);
   ix17637z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"aaa8") 
       port map ( combout=>nx17637z2, dataa=>sw_int_5, datab=>sw_int_2, 
      datac=>sw_int_0, datad=>sw_int_1);
   ix49625z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"9c69") 
       port map ( combout=>nx49625z4, dataa=>sw_int_2, datab=>sw_int_3, 
      datac=>sw_int_1, datad=>sw_int_0);
   ix4119z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"33c0") 
       port map ( combout=>nx4119z1, datab=>sw_int_4, datac=>sw_int_2, datad
      =>sw_int_5);
   ix4119z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx4119z3, dataa=>sw_int_1, datab=>sw_int_2, datac
      =>sw_int_0, datad=>sw_int_5);
   ix4119z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe00") 
       port map ( combout=>nx4119z7, dataa=>sw_int_1, datab=>sw_int_0, datac
      =>sw_int_2, datad=>sw_int_3);
   ix4119z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"1115") 
       port map ( combout=>nx4119z5, dataa=>sw_int_5, datab=>sw_int_4, datac
      =>sw_int_2, datad=>sw_int_3);
   ix4119z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"666a") 
       port map ( combout=>nx4119z8, dataa=>sw_int_6, datab=>sw_int_4, datac
      =>sw_int_3, datad=>sw_int_2);
   ix4119z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"0313") 
       port map ( combout=>nx4119z11, dataa=>sw_int_0, datab=>sw_int_4, 
      datac=>sw_int_3, datad=>sw_int_2);
   ix4119z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"c101") 
       port map ( combout=>nx4119z10, dataa=>sw_int_6, datab=>sw_int_4, 
      datac=>sw_int_3, datad=>sw_int_2);
   ix4119z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"f30c") 
       port map ( combout=>nx4119z12, datab=>sw_int_4, datac=>sw_int_2, 
      datad=>sw_int_5);
   ix4119z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"cd32") 
       port map ( combout=>nx4119z15, dataa=>sw_int_0, datab=>sw_int_4, 
      datac=>sw_int_2, datad=>sw_int_5);
   ix4119z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"0cf3") 
       port map ( combout=>nx4119z14, datab=>sw_int_4, datac=>sw_int_2, 
      datad=>sw_int_5);
   ix38664z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"2004") 
       port map ( combout=>nx38664z2, dataa=>sw_int_2, datab=>sw_int_3, 
      datac=>sw_int_1, datad=>sw_int_0);
   ix38664z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"03c0") 
       port map ( combout=>nx38664z1, datab=>sw_int_2, datac=>sw_int_3, 
      datad=>sw_int_1);
   ix38664z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"d2b0") 
       port map ( combout=>nx38664z3, dataa=>sw_int_1, datab=>sw_int_3, 
      datac=>sw_int_2, datad=>sw_int_0);
   ix38664z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5515") 
       port map ( combout=>nx38664z5, dataa=>sw_int_2, datab=>sw_int_6, 
      datac=>sw_int_0, datad=>sw_int_5);
   ix38664z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"4338") 
       port map ( combout=>nx38664z7, dataa=>sw_int_2, datab=>sw_int_3, 
      datac=>sw_int_1, datad=>sw_int_0);
   ix38664z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"3c03") 
       port map ( combout=>nx38664z6, datab=>sw_int_2, datac=>sw_int_3, 
      datad=>sw_int_1);
   ix38664z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"3c34") 
       port map ( combout=>nx38664z9, dataa=>sw_int_6, datab=>sw_int_4, 
      datac=>sw_int_2, datad=>sw_int_5);
   ix49625z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8111") 
       port map ( combout=>nx49625z1, dataa=>sw_int_2, datab=>sw_int_3, 
      datac=>sw_int_1, datad=>sw_int_0);
   ix49625z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"3226") 
       port map ( combout=>nx49625z2, dataa=>sw_int_2, datab=>sw_int_3, 
      datac=>sw_int_1, datad=>sw_int_0);
   ix49625z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5642") 
       port map ( combout=>nx49625z3, dataa=>sw_int_2, datab=>sw_int_3, 
      datac=>sw_int_1, datad=>sw_int_0);
   modgen_counter_bit_position_reg_q_3 : cycloneii_lcell_ff port map ( 
      regout=>bit_position(3), datain=>nx48820z1, clk=>aud_bclk);
   modgen_counter_bit_position_reg_q_2 : cycloneii_lcell_ff port map ( 
      regout=>bit_position(2), datain=>nx49817z1, clk=>aud_bclk);
   modgen_counter_bit_position_reg_q_1 : cycloneii_lcell_ff port map ( 
      regout=>bit_position(1), datain=>nx50814z1, clk=>aud_bclk);
   modgen_counter_bit_position_reg_q_0 : cycloneii_lcell_ff port map ( 
      regout=>bit_position(0), datain=>NOT_bit_position_0, clk=>aud_bclk);
   ledr_triBus2_9 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR723(9), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR723(8), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR723(7), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR723(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR723(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR723(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR723(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR723(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_17 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR723(17), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_16 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR723(16), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_15 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR723(15), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_14 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR723(14), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_13 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR723(13), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_12 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR723(12), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_11 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR723(11), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_10 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR723(10), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR723(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR723(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR722(8), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR722(7), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR722(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR722(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR722(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR722(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR722(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR722(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR722(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   key_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>key_int_0, padio=>key_0_EXMPLR622);
   i2c_sclk_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>i2c_sclk_EXMPLR721, datain=>i2c_sclk_dup0);
   hex7_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR731(6), datain=>hex7_dup0(6));
   hex7_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR731(5), datain=>hex7_dup0(5));
   hex7_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR731(4), datain=>hex7_dup0(5));
   hex7_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR731(3), datain=>hex7_dup0(5));
   hex7_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR731(2), datain=>hex7_dup0(4));
   hex7_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR731(1), datain=>hex7_dup0(4));
   hex7_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR731(0), datain=>hex7_dup0(5));
   hex6_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR730(6), datain=>hex6_dup0(6));
   hex6_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR730(5), datain=>hex6_dup0(5));
   hex6_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR730(4), datain=>hex6_dup0(4));
   hex6_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR730(3), datain=>hex6_dup0(3));
   hex6_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR730(2), datain=>hex6_dup0(2));
   hex6_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR730(1), datain=>hex6_dup0(1));
   hex6_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR730(0), datain=>hex6_dup0(0));
   hex5_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR729(6), datain=>hex5_dup0(6));
   hex5_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR729(5), datain=>hex5_dup0(5));
   hex5_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR729(4), datain=>hex5_dup0(4));
   hex5_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR729(3), datain=>hex5_dup0(3));
   hex5_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR729(2), datain=>hex5_dup0(2));
   hex5_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR729(1), datain=>hex5_dup0(1));
   hex5_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR729(0), datain=>hex5_dup0(0));
   hex4_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR728(6), datain=>hex4_dup0(6));
   hex4_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR728(5), datain=>hex4_dup0(5));
   hex4_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR728(4), datain=>hex4_dup0(4));
   hex4_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR728(3), datain=>hex4_dup0(3));
   hex4_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR728(2), datain=>hex4_dup0(2));
   hex4_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR728(1), datain=>hex4_dup0(1));
   hex4_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR728(0), datain=>hex4_dup0(0));
   hex3_triBus6_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR727(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR727(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR727(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR727(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR727(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR727(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR727(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR726(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR726(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR726(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR726(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR726(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR726(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR726(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR725(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR725(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR725(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR725(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR725(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR725(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR725(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR724(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR724(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR724(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR724(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR724(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR724(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR724(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   clock_27_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>clock_27_int, padio=>clock_27_EXMPLR621);
   aud_xck_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>aud_xck_EXMPLR717, datain=>aud_xck_dup0);
   aud_daclrck_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>aud_daclrck_EXMPLR719, datain=>aud_adclrck_dup0);
   aud_dacdat_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>aud_dacdat_EXMPLR718, datain=>aud_dacdat_dup0);
   aud_adclrck_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>aud_adclrck_EXMPLR720, datain=>aud_adclrck_dup0);
   ix51811z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5555") 
       port map ( combout=>NOT_bit_position_0, dataa=>bit_position(0));
   ix24999z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0dd") 
       port map ( combout=>nx24999z9, dataa=>bit_position(1), datab=>
      audio_out(13), datac=>audio_out(12), datad=>bit_position(0));
   ix24999z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0dd") 
       port map ( combout=>nx24999z7, dataa=>bit_position(1), datab=>
      audio_out(9), datac=>audio_out(8), datad=>bit_position(0));
   ix24999z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0dd") 
       port map ( combout=>nx24999z3, dataa=>bit_position(1), datab=>
      audio_out(5), datac=>audio_out(4), datad=>bit_position(0));
   ix24999z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0dd") 
       port map ( combout=>nx24999z5, dataa=>bit_position(1), datab=>
      audio_out(1), datac=>audio_out(0), datad=>bit_position(0));
   ix24999z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0dd") 
       port map ( combout=>nx24999z1, dataa=>bit_position(3), datab=>
      nx24999z2, datac=>nx24999z4, datad=>bit_position(2));
   ix24999z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"aae4") 
       port map ( combout=>nx24999z8, dataa=>nx24999z9, datab=>audio_out(14), 
      datac=>audio_out(15), datad=>bit_position(1));
   ix24999z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"aae4") 
       port map ( combout=>nx24999z6, dataa=>nx24999z7, datab=>audio_out(10), 
      datac=>audio_out(11), datad=>bit_position(1));
   ix24999z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"aae4") 
       port map ( combout=>nx24999z2, dataa=>nx24999z3, datab=>audio_out(6), 
      datac=>audio_out(7), datad=>bit_position(1));
   ix24999z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"aae4") 
       port map ( combout=>nx24999z4, dataa=>nx24999z5, datab=>audio_out(2), 
      datac=>audio_out(3), datad=>bit_position(1));
   ix24999z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"aae4") 
       port map ( combout=>aud_dacdat_dup0, dataa=>nx24999z1, datab=>
      nx24999z6, datac=>nx24999z8, datad=>bit_position(3));
   ix55607z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"2900") 
       port map ( combout=>nx55607z2, dataa=>display_freq(3), datab=>
      display_freq(2), datac=>display_freq(1), datad=>display_freq(0));
   ix4119z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx4119z4, dataa=>sw_int_17, datab=>sw_int_6);
   ix4119z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"3020") 
       port map ( combout=>nx4119z6, dataa=>nx4119z7, datab=>sw_int_6, datac
      =>sw_int_5, datad=>sw_int_4);
   ix10101z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"2004") 
       port map ( combout=>nx10101z2, dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix17637z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"cac0") 
       port map ( combout=>nx17637z1, dataa=>nx17637z2, datab=>sw_int_5, 
      datac=>sw_int_4, datad=>sw_int_3);
   ix10101z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0900") 
       port map ( combout=>nx10101z1, dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix4119z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0c0") 
       port map ( combout=>nx4119z13, dataa=>nx4119z14, datab=>nx4119z15, 
      datac=>sw_int_3, datad=>sw_int_1);
   ix4119z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"aa0c") 
       port map ( combout=>nx4119z9, dataa=>nx4119z10, datab=>nx4119z11, 
      datac=>sw_int_6, datad=>sw_int_1);
   ix4119z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"3a3a") 
       port map ( combout=>nx4119z2, dataa=>nx4119z3, datab=>sw_int_5, datac
      =>sw_int_4);
   ix38664z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"accc") 
       port map ( combout=>nx38664z8, dataa=>nx38664z9, datab=>sw_int_4, 
      datac=>sw_int_3, datad=>sw_int_1);
   ix38664z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"880f") 
       port map ( combout=>nx38664z4, dataa=>nx38664z5, datab=>sw_int_3, 
      datac=>sw_int_2, datad=>sw_int_1);
   ix50205z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"7fff") 
       port map ( combout=>nx50205z4, dataa=>u_audio_dac_lrck_1x_div(5), 
      datab=>u_audio_dac_lrck_1x_div(4), datac=>u_audio_dac_lrck_1x_div(3), 
      datad=>u_audio_dac_lrck_1x_div(2));
   ix50205z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"f7f7") 
       port map ( combout=>nx50205z3, dataa=>u_audio_dac_lrck_1x_div(1), 
      datab=>u_audio_dac_lrck_1x_div(0), datac=>nx50205z4);
   ix50205z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>nx50205z1, dataa=>nx50205z2, datab=>
      aud_adclrck_dup0);
   ix31099z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8ff") 
       port map ( combout=>nx31099z2, dataa=>u_audio_dac_bck_div_2, datab=>
      u_audio_dac_bck_div_1, datac=>u_audio_dac_bck_div_0, datad=>key_int_0
   );
   ix31099z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"1300") 
       port map ( combout=>nx31099z1, dataa=>u_audio_dac_bck_div_2, datab=>
      u_audio_dac_bck_div_1, datac=>u_audio_dac_bck_div_0, datad=>key_int_0
   );
   ix30102z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e8ff") 
       port map ( combout=>nx30102z2, dataa=>u_audio_dac_bck_div_2, datab=>
      u_audio_dac_bck_div_1, datac=>u_audio_dac_bck_div_0, datad=>key_int_0
   );
   ix30102z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx30102z1, dataa=>u_audio_dac_bck_div_2, datab=>
      key_int_0);
   ix50814z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6666") 
       port map ( combout=>nx50814z1, dataa=>bit_position(1), datab=>
      bit_position(0));
   ix49817z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6a6a") 
       port map ( combout=>nx49817z1, dataa=>bit_position(2), datab=>
      bit_position(1), datac=>bit_position(0));
   ix48820z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6aaa") 
       port map ( combout=>nx48820z1, dataa=>bit_position(3), datab=>
      bit_position(2), datac=>bit_position(1), datad=>bit_position(0));
   ix15494z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"57a8") 
       port map ( combout=>nx15494z1, dataa=>u_audio_dac_bck_div_2, datab=>
      u_audio_dac_bck_div_1, datac=>u_audio_dac_bck_div_0, datad=>aud_bclk);
   ix50205z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"1511") 
       port map ( combout=>nx50205z2, dataa=>u_audio_dac_lrck_1x_div(8), 
      datab=>u_audio_dac_lrck_1x_div(7), datac=>u_audio_dac_lrck_1x_div(6), 
      datad=>nx50205z3);
   ix48238z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>nx48238z1, dataa=>nx50205z2, datab=>key_int_0);
   ix55607z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0004") 
       port map ( combout=>nx55607z1, dataa=>nx49625z1, datab=>nx49625z2, 
      datac=>nx49625z3, datad=>sw_int_17);
   ix35228z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>audio_out_1n1ss1_0, dataa=>sine_data_0, datab=>
      sw_int_17);
   ix36225z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>audio_out_1n1ss1_1, dataa=>sine_data_1, datab=>
      sw_int_17);
   ix37222z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>audio_out_1n1ss1_2, dataa=>sine_data_2, datab=>
      sw_int_17);
   ix38219z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>audio_out_1n1ss1_3, dataa=>sine_data_3, datab=>
      sw_int_17);
   ix63117z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>audio_out_1n1ss1_4, dataa=>sine_data_4, datab=>
      noise_data_4, datac=>sw_int_17);
   ix62120z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>audio_out_1n1ss1_5, dataa=>sine_data_5, datab=>
      noise_data_5, datac=>sw_int_17);
   ix61123z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>audio_out_1n1ss1_6, dataa=>sine_data_6, datab=>
      noise_data_6, datac=>sw_int_17);
   ix60126z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>audio_out_1n1ss1_7, dataa=>sine_data_7, datab=>
      noise_data_7, datac=>sw_int_17);
   ix59129z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>audio_out_1n1ss1_8, dataa=>sine_data_8, datab=>
      noise_data_8, datac=>sw_int_17);
   ix58132z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>audio_out_1n1ss1_9, dataa=>sine_data_9, datab=>
      noise_data_9, datac=>sw_int_17);
   ix26560z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>audio_out_1n1ss1_10, dataa=>sine_data_10, datab=>
      noise_data_10, datac=>sw_int_17);
   ix27557z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>audio_out_1n1ss1_11, dataa=>sine_data_11, datab=>
      noise_data_15, datac=>sw_int_17);
   ix49625z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>display_freq(0), dataa=>nx49625z4, datab=>
      sw_int_17);
   ix49625z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>display_freq(1), dataa=>nx49625z3, datab=>
      sw_int_17);
   ix49625z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>display_freq(2), dataa=>nx49625z2, datab=>
      sw_int_17);
   ix49625z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>display_freq(3), dataa=>nx49625z1, datab=>
      sw_int_17);
   ix38664z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"fbab") 
       port map ( combout=>display_freq(4), dataa=>sw_int_17, datab=>
      sw_int_4, datac=>sw_int_0, datad=>nx38664z8);
   ix38664z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"0a0c") 
       port map ( combout=>display_freq(5), dataa=>nx38664z6, datab=>
      nx38664z7, datac=>sw_int_17, datad=>sw_int_4);
   ix38664z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"fece") 
       port map ( combout=>display_freq(6), dataa=>nx38664z3, datab=>
      sw_int_17, datac=>sw_int_4, datad=>nx38664z4);
   ix38664z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0a0c") 
       port map ( combout=>display_freq(7), dataa=>nx38664z1, datab=>
      nx38664z2, datac=>sw_int_17, datad=>sw_int_4);
   ix4119z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"ffce") 
       port map ( combout=>display_freq(8), dataa=>nx4119z12, datab=>
      sw_int_17, datac=>sw_int_3, datad=>nx4119z13);
   ix4119z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"3202") 
       port map ( combout=>display_freq(9), dataa=>nx4119z8, datab=>
      sw_int_17, datac=>sw_int_5, datad=>nx4119z9);
   ix4119z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"3320") 
       port map ( combout=>display_freq(10), dataa=>nx4119z5, datab=>
      sw_int_17, datac=>sw_int_6, datad=>nx4119z6);
   ix4119z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e200") 
       port map ( combout=>display_freq(11), dataa=>nx4119z1, datab=>
      sw_int_3, datac=>nx4119z2, datad=>nx4119z4);
   ix17637z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>hex7_dup0(5), dataa=>sw_int_17, datab=>sw_int_6, 
      datac=>nx17637z1);
   ix10101z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>hex6_dup0(0), dataa=>nx10101z1, datab=>nx10101z2
   );
   ix9104z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>hex6_dup0(1), dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix8107z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>hex6_dup0(2), dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix7110z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c324") 
       port map ( combout=>hex6_dup0(3), dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix6113z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>hex6_dup0(4), dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix5116z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>hex6_dup0(5), dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix4119z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>hex6_dup0(6), dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix32682z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2904") 
       port map ( combout=>hex5_dup0(0), dataa=>display_freq(7), datab=>
      display_freq(6), datac=>display_freq(5), datad=>display_freq(4));
   ix33679z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>hex5_dup0(1), dataa=>display_freq(7), datab=>
      display_freq(6), datac=>display_freq(5), datad=>display_freq(4));
   ix34676z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>hex5_dup0(2), dataa=>display_freq(7), datab=>
      display_freq(6), datac=>display_freq(5), datad=>display_freq(4));
   ix35673z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c324") 
       port map ( combout=>hex5_dup0(3), dataa=>display_freq(7), datab=>
      display_freq(6), datac=>display_freq(5), datad=>display_freq(4));
   ix36670z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>hex5_dup0(4), dataa=>display_freq(7), datab=>
      display_freq(6), datac=>display_freq(5), datad=>display_freq(4));
   ix37667z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>hex5_dup0(5), dataa=>display_freq(7), datab=>
      display_freq(6), datac=>display_freq(5), datad=>display_freq(4));
   ix38664z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>hex5_dup0(6), dataa=>display_freq(7), datab=>
      display_freq(6), datac=>display_freq(5), datad=>display_freq(4));
   ix55607z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff20") 
       port map ( combout=>hex4_dup0(0), dataa=>display_freq(2), datab=>
      display_freq(0), datac=>nx55607z1, datad=>nx55607z2);
   ix54610z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>hex4_dup0(1), dataa=>display_freq(3), datab=>
      display_freq(2), datac=>display_freq(1), datad=>display_freq(0));
   ix53613z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>hex4_dup0(2), dataa=>display_freq(3), datab=>
      display_freq(2), datac=>display_freq(1), datad=>display_freq(0));
   ix52616z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c324") 
       port map ( combout=>hex4_dup0(3), dataa=>display_freq(3), datab=>
      display_freq(2), datac=>display_freq(1), datad=>display_freq(0));
   ix51619z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>hex4_dup0(4), dataa=>display_freq(3), datab=>
      display_freq(2), datac=>display_freq(1), datad=>display_freq(0));
   ix50622z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>hex4_dup0(5), dataa=>display_freq(3), datab=>
      display_freq(2), datac=>display_freq(1), datad=>display_freq(0));
   ix49625z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>hex4_dup0(6), dataa=>display_freq(3), datab=>
      display_freq(2), datac=>display_freq(1), datad=>display_freq(0));
   ix32096z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0700") 
       port map ( combout=>nx32096z1, dataa=>u_audio_dac_bck_div_2, datab=>
      u_audio_dac_bck_div_1, datac=>u_audio_dac_bck_div_0, datad=>key_int_0
   );
end main ;

