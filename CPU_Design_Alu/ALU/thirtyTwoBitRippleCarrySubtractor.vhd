library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity thirtyTwoBitRippleCarrySubtractor is
	port(
		A		:   in std_logic_vector(31 downto 0);
		B		:	in std_logic_vector(31 downto 0);
		Cin	:	in std_logic;
		S		:	out std_logic_vector(31 downto 0);
		Cout 	:	out std_logic
	);
end entity;

architecture behaviour of thirtyTwoBitRippleCarrySubtractor is

	signal bTemp1 : std_logic_vector(31 downto 0);
	signal bTemp2 : std_logic_vector(31 downto 0);
	signal increment : std_logic_vector(31 downto 0) := "00000000000000000000000000000001";
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
							S			=> bTemp2,
							Cout		=> wastedCarry
						);					
	U2 : thirtyTwoBitRippleCarryAdder port map(
							A		=> A,
							B		=> bTemp2,
							Cin	=> Cin,
							S 		=> S,
							Cout	=> Cout 	
						);
end behaviour;
--Current Error states that all of our signals do not agree with their usage as an std_logic_type