library ieee;
use ieee.std_logic_1164.all;

entity add2_tb is
end add2_tb;

architecture main of add2_tb is
   signal a, b : std_logic_vector(1 downto 0);
   signal cin  : std_logic;
   signal sum  : std_logic_vector(1 downto 0);
   signal cout : std_logic;
begin
  
   uut : entity work.add2(main)
     port map (
       a    => a,
       b    => b,
       cin  => cin,
       sum  => sum,
       cout => cout
     );

   -- insert VHDL testbench code here
   process
   begin
   a(0) <= '0'; a(1) <= '0'; b(0) <='0'; b(1) <='0'; cin<='0';
   wait for 10ns;
   -- -------------------------
   a(0) <='1'; a(1) <= '1'; b(0) <='0'; b(1) <= '0'; cin<='0';
   wait for 10ns;
   -- -------------------------
   a(0) <='1'; a(1) <= '0'; b(0) <='1'; b(1) <='0'; cin<='1';
   wait for 10ns;
   -- -------------------------
   a(0) <='0'; a(1) <= '1'; b(0) <='0'; b(1) <= '1'; cin<='1';
   wait for 10ns;
   -- -------------------------
   end process;
end main;

-- question 4
-- signal | output waveform description
--   a(0) 0 1 1 0
--   b(0) 0 0 1 0
--   a(1) 0 1 0 1
--   b(1) 0 0 0 1
--   cin  0 0 1 1
-- sum(0) 0 1 1 1    
-- sum(1) 0 1 1 0     
-- cout   0 0 0 1 
