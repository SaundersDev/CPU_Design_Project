library IEEE;
use ieee.std_logic_1164.all;
 
library work;
 
entity rotateRight is
	port(
		A, B	 					: in std_logic_vector(31 downto 0);
		S	: out std_logic_vector(31 downto 0)
	);
end rotateRight;
 
architecture behaviour of rotateRight is
	signal temp : std_logic_vector(31 downto 0);
begin
		temp(30 downto 0) <= B(31 downto 1);
		temp(31) <= B(0);
		S <= temp;

end behaviour;