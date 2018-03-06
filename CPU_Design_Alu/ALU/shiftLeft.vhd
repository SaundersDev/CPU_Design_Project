library IEEE;
use ieee.std_logic_1164.all;
 
library work;
 
entity shiftLeft is
	port(
		B	 	: in std_logic_vector(31 downto 0);
		S		: out std_logic_vector(31 downto 0)
	);
end shiftLeft;
 
architecture behaviour of shiftLeft is
	signal temp : std_logic_vector(31 downto 0);
	begin
		temp(31 downto 1) <= B(30 downto 0);
		temp(0) <= '0';
		S <= temp;

end behaviour;