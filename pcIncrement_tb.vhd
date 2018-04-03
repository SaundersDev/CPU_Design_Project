library IEEE;
use ieee.std_logic_1164.all;
 
entity pcIncrement_tb is
end pcIncrement_tb;
architecture arc of pcIncrement_tb is
component pcIncrement is
	port(
		B		:	in std_logic_vector(31 downto 0);
		Cin	:	in std_logic;
		S		:	out std_logic_vector(31 downto 0);
		Cout 	:	out std_logic
	);
end component;
signal B_tb, S_tb		: std_logic_vector(31 downto 0);
signal Cin_tb,  Cout_tb : std_logic;
begin
	B_tb <= x"008000C8";
	Cin_tb	<= '1';
end architecture;