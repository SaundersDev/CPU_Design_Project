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

component reg_32 IS
	PORT(
		clk, clr, Rin : IN STD_LOGIC;
		BusMuxOut : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		BusMuxIn : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
END component;

component andGate_31vs1 is
	port(
		A		: in std_logic_vector(31 downto 0);
		B	 	: in std_logic;
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
U1: andGate_31vs1 port map(
	A => regToAnd,
	B => BAout,
	S => BusMuxIn
);

end architecture;