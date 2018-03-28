library ieee;
use ieee.std_logic_1164.all;

entity conFFSubComponent1 is
	port(
		decoderOutput							: in std_logic_vector(3 downto 0);
		BusMuxOut								: in std_logic_vector(31 downto 0);
		conFFOutput								: out std_logic;
		busOrOut : inout std_logic 
	);
end entity;

architecture behaviour of conFFSubComponent1 is
signal and0, and1, and2, and3, finalOrOutput: std_logic; 
begin
process(BusMuxOut)
begin
	busOrOut <= '0';
	for I in 0 to 31 loop
		if(BusMuxOut(I) = '1') then
		busOrOut <= '1';
		exit;
		end if;
	end loop;
end process;
	
and0 <= decoderOutput(0) and not busOrOut;
and1 <= decoderOutput(1) and busOrOut;
and2 <= decoderOutput(2) and not BusMuxOut(31);
and3 <= decoderOutput(3) and BusMuxOut(31);
finalOrOutput <= and0 or and1 or and2 or and3;
conFFOutput	<= not finalOrOutput;
				 

end architecture;
