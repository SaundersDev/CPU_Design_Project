library ieee;
use ieee.std_logic_1164.all;

entity selectAndEncodeLogic is
	ports(
		IRin										: in std_logic_vector(31 downto 0);
		Gra, Grb, Grc, Rin, Rout, BAout	: in std_logic;
		BusMuxOut								: in std_logic_vector(31 downto 0);
		C_sign_extended						: out std_logic_vector(31 downto 0);
		r0in_r15in_Decoder					: out std_logic_vector(15 downto 0);
		r0out_r15out_Decoder					: out std_logic_vector(15 downto 0)
	);
end entity;

architecture behaviour of andGate is
 