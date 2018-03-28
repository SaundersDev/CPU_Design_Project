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
signal or1, or2, or3, or4, or5, or6, or7, or8 : std_logic; 
signal or1234, or5678, or1to8 : std_logic;
begin
or1		<= BusMuxOut(31) or BusMuxOut(30)
				OR BusMuxOut(29) or BusMuxOut(28);
or2 		<=	BusMuxOut(27) or BusMuxOut(26);
-- 				OR BusMuxOut(25) or BusMuxOut(24);
or3 		<=		BusMuxOut(23) or BusMuxOut(22)
				OR BusMuxOut(21) or BusMuxOut(20);
or4 		<=	BusMuxOut(19) or BusMuxOut(18)
				OR BusMuxOut(17) or BusMuxOut(16);
or5 		<= BusMuxOut(15) or BusMuxOut(14)
 				OR BusMuxOut(13) or BusMuxOut(12);
or6 		<= BusMuxOut(11) or BusMuxOut(10)
 				OR BusMuxOut(9) or BusMuxOut(8);
or7 		<=	BusMuxOut(7) or BusMuxOut(6)
 				OR BusMuxOut(5) or BusMuxOut(4);
or8 		<= BusMuxOut(3) or BusMuxOut(2)
 				OR BusMuxOut(1) or BusMuxOut(0);
or1234	<= or1 or or2 or or3 or or4;
or5678	<= or5 or or6 or or7 or or8;
busOrOut	<= or2;		
and0 <= decoderOutput(0) and not busOrOut;
and1 <= decoderOutput(1) and busOrOut;
and2 <= decoderOutput(2) and not BusMuxOut(31);
and3 <= decoderOutput(3) and BusMuxOut(31);
finalOrOutput <= and0 or and1 or and2 or and3;
conFFOutput	<= not finalOrOutput;
				 

end architecture;
