library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity thirtyTwoBitRippleCarrySubtractor is
	port(
		A		:   in std_logic_vector(31 downto 0);
		B		:	in std_logic_vector(31 downto 0);
		Cin		:	in std_logic;
		S		:	out std_logic_vector(31 downto 0);
		Cout 	:	out std_logic
	);
end entity;



architecture behaviour of thirtyTwoBitRippleCarrySubtractor is

signal bTemp1, bTemp2 : std_logic_vector(31 downto 0);
constant increment: std_logic_vector := "00000000000000000000000000000001";

component thirtyTwoBitRippleCarryAdder()
	port(
		A		:   in std_logic_vector(31 downto 0);
		B		:	in std_logic_vector(31 downto 0);
		Cin		:	in std_logic;
		S		:	out std_logic_vector(31 downto 0);
		Cout 	:	out std_logic
	);
end component thirtyTwoBitRippleCarryAdder;

component notGate()
	port(
		B : in std_logic_vector(31 downto 0);
		S : out std_logic_vector(31 downto 0);
	);
end component;

component adderSubtractor
	port(
		A	:	IN  STD_LOGIC;
		B	:	IN  STD_LOGIC;
		Cin :	IN  STD_LOGIC;
		S	:	OUT  STD_LOGIC;
		Cout:	OUT  STD_LOGIC);
end component;
begin

U0 : notGate port map(
						B 		=> B,
						S 		=> bTemp1 
					);
U1 : adderSubtractor port map(
						A			=> increment,
						B			=> bTemp1,
						Cin			=> Cin,
						S			=> bTemp2,
						Cout		=> Cout
					);					
U2 : thirtyTwoBitRippleCarryAdder port map(
						A		=> A,
						B		=> bTemp2,
						Cin		=> Cin,
						S 		=> S,
						Cout	=> Cout 	
					);
end behaviour;