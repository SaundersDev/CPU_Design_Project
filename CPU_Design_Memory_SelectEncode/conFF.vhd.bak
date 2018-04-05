library ieee;
use ieee.std_logic_1164.all;

entity selectAndEncodeLogic is
	port(
		IRin										: in std_logic_vector(31 downto 0);
		Gra, Grb, Grc, Rin, Rout, BAout	: in std_logic;
		BusMuxOut								: in std_logic_vector(31 downto 0);
		C_sign_extended						: out std_logic_vector(31 downto 0);
		r0in_r15in_Decoded					: out std_logic_vector(15 downto 0);
		r0out_r15out_Decoded					: out std_logic_vector(15 downto 0)
	);
end entity;

architecture behaviour of selectAndEncodeLogic is

component selectAndEncodeSubComponent1 is
	port(
		IRin				: in std_logic_vector(31 downto 0);
		Gra, Grb, Grc	: in std_logic;
		output			: out std_logic_vector(3 downto 0)
	);
end component;
component selectAndEncodeSubComponent2 is
	port(
		input							: in std_logic_vector(15 downto 0);
		Rin, Rout, BAout			: in std_logic;
		C_sign_extended			: out std_logic_vector(31 downto 0);
		r0in_r15in_Decoded		: out std_logic_vector(15 downto 0);
		r0out_r15out_Decoded		: out std_logic_vector(15 downto 0)
	);
end component;
component decoder16bits is
 	port (
		input  : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		output : OUT STD_LOGIC_VECTOR(15 downto 0)
	);
end component;


signal decoderInput	: std_logic_vector(3 downto 0);
signal decoderOutput	: std_logic_vector(15 downto 0);

begin

U0: selectAndEncodeSubComponent1 port map(
		IRin	=> IRin,
		Gra	=> Gra,
		Grb	=> Grb,
		Grc	=> Grc,
		output=> decoderInput

);
U1: decoder16bits port map(
		input  => decoderInput,
		output => decoderOutput
);
U2: selectAndEncodeSubComponent2 port map(
		input						=> decoderOutput,
		Rin						=> Rin,
		Rout						=> Rout,
		BAout						=> BAout,		
		C_sign_extended		=> C_sign_extended,
		r0in_r15in_Decoded	=> r0in_r15in_Decoded,
		r0out_r15out_Decoded => r0out_r15out_Decoded
);

end architecture;
 