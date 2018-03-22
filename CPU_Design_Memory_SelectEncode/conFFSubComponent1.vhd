library ieee;
use ieee.std_logic_1164.all;

entity conFF is
	port(
		decoderOutput							: in std_logic_vector(3 downto 0);
		BusMuxOut								: in std_logic_vector(31 downto 0);
		conFFOutput								: out std_logic;
	);
end entity;

architecture behaviour of conFF is
signal and0, and1, and2, and3, finalOrOutput: std_logic; 
signal busOrOut : std_logic; 

begin
and0 <= decoderOutput(0) and busOrOut;
and1 <= decoderOutput(1) and not busOrOut;
and2 <= decoderOutput(2) and not BusMuxOut(31);
and3 <= decoderOutput(3) and BusMuxOut(31);
finalOrOutput <= and0 or and1 or and2 or and3;
conFFOutput	<= finalOrOutput;
	process(Rin, input, BAout, Rout)
	begin
		for I in 0 to 31 loop
			busOrOut  <= busOrOut nor BusMuxOut(I);
		end loop;
	end process;

end architecture;
 