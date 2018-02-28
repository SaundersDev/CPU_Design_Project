library IEEE;
use ieee.std_logic_1164.all;
 
entity fullAdder is
	port(
		A, B, Cin 	: in std_logic;
		S 			: out std_logic;
		Cout 		: out std_logic
	);
end fullAdder;
 
architecture behaviour of fullAdder is
 
begin
 
 S <= A XOR B XOR Cin ;
 Cout <= (A AND B) OR (Cin AND A) OR (Cin AND B) ;
 
end behaviour;