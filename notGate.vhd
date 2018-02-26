library IEEE;
use ieee.std_logic_1164.all;
 
entity notGate is
 Port(
	B	 		: in std_logic_vector(31 downto 0);
	S			: out std_logic_vector(31 downto 0);
end notGate;
 
architecture behaviour of notGate is
 
begin
	for I in 0 to 31 loop
		S(I) = not B(I);
	end loop;
end behaviour;