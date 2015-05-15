
-- 
-- Definition of  fulladder
-- 
--      Wed May 13 10:21:19 2015
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity sum is 
   port (
      i_a : IN std_logic ;
      i_b : IN std_logic ;
      i_cin : IN std_logic ;
      o_sum : OUT std_logic) ;
end sum ;

architecture main of sum is 
   signal rtlcs1: std_logic ;

begin
   rtlcs1 <= i_a XOR i_b ;
   o_sum <= rtlcs1 XOR i_cin ;
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity carry is 
   port (
      i_x : IN std_logic ;
      i_y : IN std_logic ;
      i_cin : IN std_logic ;
      o_cout : OUT std_logic) ;
end carry ;

architecture main of carry is 
   signal xandy, xandc, yandc, o_cout_0n0s2: std_logic ;

begin
   xandy <= i_x AND i_y ;
   xandc <= i_x AND i_cin ;
   yandc <= i_y AND i_cin ;
   o_cout <= o_cout_0n0s2 OR yandc ;
   o_cout_0n0s2 <= xandy OR xandc ;
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity fulladder is 
   port (
      i_a : IN std_logic ;
      i_b : IN std_logic ;
      i_cin : IN std_logic ;
      o_sum : OUT std_logic ;
      o_cout : OUT std_logic) ;
end fulladder ;

architecture main of fulladder is 
   component sum
      port (
         i_a : IN std_logic ;
         i_b : IN std_logic ;
         i_cin : IN std_logic ;
         o_sum : OUT std_logic) ;
   end component ;
   component carry
      port (
         i_x : IN std_logic ;
         i_y : IN std_logic ;
         i_cin : IN std_logic ;
         o_cout : OUT std_logic) ;
   end component ;
begin
   u_sum : sum port map ( i_a=>i_a, i_b=>i_b, i_cin=>i_cin, o_sum=>o_sum);
   u_carry : carry port map ( i_x=>i_a, i_y=>i_b, i_cin=>i_cin, o_cout=>
      o_cout);
end main ;

