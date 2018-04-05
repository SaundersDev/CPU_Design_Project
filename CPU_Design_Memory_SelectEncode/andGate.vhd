library IEEE;
use ieee.std_logic_1164.all;
 
library work;
 
entity andGate is
	port(
		A	:in std_logic;
		B	 	: in std_logic_vector(31 downto 0);
		S			: out std_logic_vector(31 downto 0)
	);
end andGate;
 
architecture behaviour of andGate is
 
begin
	process(A, B)
	begin
		for I in 0 to 31 loop
			S(I) <= A and B(I);
		end loop;
	end process;
end behaviour;