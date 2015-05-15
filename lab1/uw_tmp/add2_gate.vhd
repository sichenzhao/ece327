
-- 
-- Definition of  add2
-- 
--      Wed May 13 10:54:29 2015
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

architecture main_unfold_1 of fulladder is 
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
   for u_sum : sum use entity work.sum(main);
   for u_carry : carry use entity work.carry(main);
begin
   u_sum : sum port map ( i_a=>i_a, i_b=>i_b, i_cin=>i_cin, o_sum=>o_sum);
   u_carry : carry port map ( i_x=>i_a, i_y=>i_b, i_cin=>i_cin, o_cout=>
      o_cout);
end main_unfold_1 ;


architecture main_unfold_1 of sum is 
   signal rtlcs1: std_logic ;

begin
   rtlcs1 <= i_a XOR i_b ;
   o_sum <= rtlcs1 XOR i_cin ;
end main_unfold_1 ;


architecture main_unfold_1 of carry is 
   signal xandy, xandc, yandc, o_cout_0n0s2: std_logic ;

begin
   xandy <= i_x AND i_y ;
   xandc <= i_x AND i_cin ;
   yandc <= i_y AND i_cin ;
   o_cout <= o_cout_0n0s2 OR yandc ;
   o_cout_0n0s2 <= xandy OR xandc ;
end main_unfold_1 ;


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
   for u_sum : sum use entity work.sum(main_unfold_1);
   for u_carry : carry use entity work.carry(main_unfold_1);
begin
   u_sum : sum port map ( i_a=>i_a, i_b=>i_b, i_cin=>i_cin, o_sum=>o_sum);
   u_carry : carry port map ( i_x=>i_a, i_y=>i_b, i_cin=>i_cin, o_cout=>
      o_cout);
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity add2 is 
   port (
      i_a : IN std_logic_vector (1 DOWNTO 0) ;
      i_b : IN std_logic_vector (1 DOWNTO 0) ;
      i_cin : IN std_logic ;
      o_sum : OUT std_logic_vector (1 DOWNTO 0) ;
      o_cout : OUT std_logic) ;
end add2 ;

architecture main of add2 is 
   component fulladder
      port (
         i_a : IN std_logic ;
         i_b : IN std_logic ;
         i_cin : IN std_logic ;
         o_sum : OUT std_logic ;
         o_cout : OUT std_logic) ;
   end component ;
   for fa0 : fulladder use entity work.fulladder(main_unfold_1);
   for fa1 : fulladder use entity work.fulladder(main);
   signal fa0_cout: std_logic ;

begin
   fa0 : fulladder port map ( i_a=>i_a(0), i_b=>i_b(0), i_cin=>i_cin, o_sum
      =>o_sum(0), o_cout=>fa0_cout);
   fa1 : fulladder port map ( i_a=>i_a(1), i_b=>i_b(1), i_cin=>fa0_cout, 
      o_sum=>o_sum(1), o_cout=>o_cout);
end main ;

