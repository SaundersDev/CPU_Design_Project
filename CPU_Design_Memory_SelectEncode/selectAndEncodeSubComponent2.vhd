library ieee;
use ieee.std_logic_1164.all;

entity selectAndEncodeSubComponent2 is
	port(
		input							: in std_logic_vector(15 downto 0);
		Rin, Rout, BAout			: in std_logic;
		C_sign_extended			: out std_logic_vector(31 downto 0);
		r0in_r15in_Decoded		: out std_logic_vector(15 downto 0);
		r0out_r15out_Decoded		: out std_logic_vector(15 downto 0)
	);
end entity;

architecture behaviour of selectAndEncodeSubComponent2 is
begin
	process(Rin, input, BAout, Rout)
	begin
		for I in 0 to 15 loop
			r0in_r15in_Decoded(I)  <= input(I) and Rin;
			r0out_r15out_Decoded(I)<=input(I) and (BAout or Rout);
--C_sign_extended <= 
		end loop;
	end process;
end architecture;
 