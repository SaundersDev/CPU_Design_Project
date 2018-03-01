library IEEE;
use ieee.std_logic_1164.all;
 
entity negGate is
	port(
		B		:	in std_logic_vector(31 downto 0);
		Cin	:	in std_logic;
		S		:	out std_logic_vector(31 downto 0);
		Cout 	:	out std_logic
	);
end negGate;
 
architecture behaviour of negGate is
 	signal increment : std_logic_vector(31 downto 0) := "00000000000000000000000000000001";
	signal bTemp1 : std_logic_vector(31 downto 0);
	signal wastedCarry : std_logic;
	
	component thirtyTwoBitRippleCarryAdder is
		port(
			A		:   in std_logic_vector(31 downto 0);
			B		:	in std_logic_vector(31 downto 0);
			Cin		:	in std_logic;
			S		:	out std_logic_vector(31 downto 0);
			Cout 	:	out std_logic
		);
	end component thirtyTwoBitRippleCarryAdder;


	component notGate is
		port(
			B : in std_logic_vector(31 downto 0);
			S : out std_logic_vector(31 downto 0)
		);
	end component notGate;
begin

	U0 : notGate port map(
							B 		=> B,
							S 		=> bTemp1 
						);
	U1 : thirtyTwoBitRippleCarryAdder port map(
							A			=> increment,
							B			=> bTemp1,
							Cin		=> Cin,
							S			=> S,
							Cout		=> Cout
						);	
end behaviour;