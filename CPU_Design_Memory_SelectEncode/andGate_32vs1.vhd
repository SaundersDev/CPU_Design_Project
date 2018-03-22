library IEEE;
use ieee.std_logic_1164.all;
 
library work; 
entity andGate_32vs1 is
	port(
		A		: in std_logic_vector(31 downto 0);
		B	 	: in std_logic;
		S		: out std_logic_vector(31 downto 0)
	);
end andGate_32vs1;
 
architecture behaviour of andGate_32vs1 is
 
begin
	process(A, B)
	begin
		for I in 0 to 31 loop
			S(I) <= (A(I) and B);
		end loop;
	end process;
end behaviour;