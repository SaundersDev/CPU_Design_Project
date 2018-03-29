LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY reg_Zero IS
	PORT(
		clk, clr, Rin, BAout : IN STD_LOGIC;
		BusMuxOut : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		BusMuxIn : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
END ENTITY reg_Zero;

architecture behaviour of reg_Zero is

signal regToAnd : std_logic_vector(31 downto 0);
signal notBAout : std_logic;
component reg_32 IS
	PORT(
		clk, clr, Rin : IN STD_LOGIC;
		BusMuxOut : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		BusMuxIn : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
END component;

component notGate1bit is
	port(
		B	 		: in std_logic;
		S			: out std_logic
	);
end component;

component andGate_32vs1 is
	port(
		A		: in std_logic;
		B	 	: in std_logic_vector(31 downto 0);
		S		: out std_logic_vector(31 downto 0)
	);
end component;

begin
U0: reg_32 port map(
	clk => clk,
	clr => clr,
	Rin => Rin,
	BusMuxOut => BusMuxOut,
	BusMuxIn => regToAnd
);
U1: notGate1bit port map(
	B	=> BAout,
	S	=> notBAout
); 
U2: andGate_32vs1 port map(
	A => notBAout,
	B => regToAnd,
	S => BusMuxIn
);

end architecture;