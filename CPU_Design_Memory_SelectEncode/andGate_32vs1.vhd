library IEEE;
use ieee.std_logic_1164.all;
 
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
			if(A(I) = '1' and B = '1') then
			S(I) <= '1';
			else
			S(I) <='0';
			end if;
		end loop;
	end process;
end behaviour;