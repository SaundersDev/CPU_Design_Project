library IEEE;
use ieee.std_logic_1164.all;
 
entity orGate is
	port(
		A, B	 	: in std_logic_vector(31 downto 0);
		S			: out std_logic_vector(31 downto 0)
	);
end orGate;
 
architecture behaviour of orGate is
 
begin
	process(A)
	begin
		for I in 0 to 31 loop
			S(I) <= A(I) or B(I);
		end loop;
	end process;
end behaviour;