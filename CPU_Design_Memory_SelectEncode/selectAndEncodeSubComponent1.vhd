library ieee;
use ieee.std_logic_1164.all;

entity selectAndEncodeSubComponent1 is
	port(
		IRin								: in std_logic_vector(31 downto 0);
		Gra, Grb, Grc					: in std_logic;
		output							: out std_logic_vector(3 downto 0)
	);
end entity;

architecture behaviour of selectAndEncodeSubComponent1 is
begin
output <= IRin(26 downto 23) when (Gra = '1' and Grb = '0' and Grc = '0')
			  else IRin(22 downto 19) when (Gra = '0' and Grb = '1' and Grc = '0')
			  else IRin(18 downto 15) when (Gra = '0' and Grb = '0' and Grc = '1');
end architecture;