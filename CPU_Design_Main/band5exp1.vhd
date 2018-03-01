library IEEE;
use ieee.std_logic_1164.all;
 
entity band5exp1 is
 Port(
	input1, input2, input3, input4, input5 			: in std_logic;
	output 		: out std_logic);
end band5exp1;
 
architecture behaviour of band5exp1 is
begin
 
 output <= (not input1) AND (not input2) AND (not input3) AND input4 and (not input5);
 
end behaviour;