library IEEE;
use ieee.std_logic_1164.all;
 
entity pcIncrement is
	port(
		B		:	in std_logic_vector(31 downto 0);
		Cin	:	in std_logic;
		S		:	out std_logic_vector(31 downto 0);
		Cout 	:	out std_logic
	);
end pcIncrement;
 
architecture behaviour of pcIncrement is
 	signal increment : std_logic_vector(31 downto 0) := "00000000000000000000000000000001";
	signal wastedCarry : std_logic;
	
	component thirtyTwoBitRippleCarryAdder is
		port(
			A		:   in std_logic_vector(31 downto 0);
			B		:	in std_logic_vector(31 downto 0);
<<<<<<< HEAD
			Cin		:	in std_logic;
=======
			Cin	:	in std_logic;
>>>>>>> 2704547c977d60c94936c2aac88b2ba7a81f9dda
			S		:	out std_logic_vector(31 downto 0);
			Cout 	:	out std_logic
		);
	end component thirtyTwoBitRippleCarryAdder;
begin

	U0 : thirtyTwoBitRippleCarryAdder port map(
							A			=> increment,
							B			=> B,
							Cin		=> Cin,
							S			=> S,
							Cout		=> Cout
						);	
end behaviour;