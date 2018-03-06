library IEEE;
use ieee.std_logic_1164.all;
 
library work;
 
entity shiftRight is
	port(
		B	 	: in std_logic_vector(31 downto 0);
		S		: out std_logic_vector(31 downto 0)
	);
end shiftRight;
 
architecture behaviour of shiftRight is
	signal temp : std_logic_vector(31 downto 0);
	begin
		temp(30 downto 0) <= B(31 downto 1);
		temp(31) <= '0';
		S <= temp;

end behaviour;