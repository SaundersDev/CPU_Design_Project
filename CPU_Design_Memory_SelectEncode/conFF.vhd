library ieee;
use ieee.std_logic_1164.all;

entity conFF is
	port(
		IRin										: in std_logic_vector(31 downto 0);
		BusMuxOut								: in std_logic_vector(31 downto 0);
	);
end entity;

architecture behaviour of conFF is

component decoder16bits is
 	port (
		input  : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		output : OUT STD_LOGIC_VECTOR(15 downto 0)
	);
end component;

signal decoderInput	: std_logic_vector(3 downto 0):= input(3);
signal decoderOutput	: std_logic_vector(15 downto 0);

begin
	process(Rin, input, BAout, Rout)
	begin
		for I in 0 to 15 loop
			r0in_r15in_Decoded(I)  <= input(I) and Rin;
			r0out_r15out_Decoded(I)<=input(I) and (BAout or Rout);
		end loop;
	end process;

output <= IRin(26 downto 23) when (Gra = '1' and Grb = '0' and Grc = '0')
			  else IRin(22 downto 19) when (Gra = '0' and Grb = '1' and Grc = '0')
			  else IRin(18 downto 15) when (Gra = '0' and Grb = '0' and Grc = '1');

			  
U0: decoder16bits port map(
		input  => decoderInput,
		output => decoderOutput
);			  

U1: conFFSubComponent1 port map(
		decoderOutput			: in std_logic_vector(3 downto 0);
		BusMuxOut				: in std_logic_vector(31 downto 0);
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
 