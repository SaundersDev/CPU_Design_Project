library IEEE;
use ieee.std_logic_1164.all;

entity notGate1bit is
	port(
		B	 		: in std_logic;
		S			: out std_logic
	);
end entity;
 
architecture behaviour of notGate1bit is
 
begin
	S <= not B;
end behaviour;