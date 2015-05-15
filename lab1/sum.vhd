library ieee;
use ieee.std_logic_1164.all;

entity sum is
       port ( i_a, i_b, i_cin : in std_logic;
              o_sum :       out std_logic
       );
end sum;

architecture main of sum is
  signal m : std_logic;
  -- insert your code here 
begin
  m <= i_a XOR i_b;
  o_sum <= m XOR i_cin; 
end architecture;

-- question 1
  -- insert answer here
    -- There are three inputs i_a, i_b, i_cin
    -- i_a and i_b gets into XOR gate and get 
    -- signal m. Then, signal m and i_cin gets
    -- into another XOR gate whose output is
    -- signal o_sum

