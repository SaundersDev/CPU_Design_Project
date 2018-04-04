library IEEE;
use ieee.std_logic_1164.all;

entity notGate is
	port(
		B	 		: in std_logic_vector(31 downto 0);
		S			: out std_logic_vector(31 downto 0)
	);
end entity;
 
architecture behaviour of notGate is
 
begin
	process(B)
	begin
		for i in 0 to 31 loop
			S(i) <= not B(i);
		end loop;
	end process;
end behaviour;