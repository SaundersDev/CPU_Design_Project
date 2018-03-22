library IEEE;
use ieee.std_logic_1164.all;
 
entity andGate is
	port(
		A		: in std_logic_vector(31 downto 0);
		B	 	: in std_logic_vector(31 downto 0);
		S		: out std_logic_vector(31 downto 0)
	);
end andGate;
 
architecture behaviour of andGate is
 
begin
	S <= A and B;
end behaviour;