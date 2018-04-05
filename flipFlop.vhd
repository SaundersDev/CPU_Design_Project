LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity flipFlop is
   port(
      clk			: in std_logic;
      D 				: in std_logic;
      Q				: out std_logic
   );
end entity flipFlop;
 
architecture behaviour of flipFlop is
begin
   process (clk) is
   begin
      if rising_edge(clk) then  
            Q <= D;
      end if;
   end process;
end architecture behaviour;