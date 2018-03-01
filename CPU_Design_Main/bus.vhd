LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY multiplexer32bits IS
	PORT (
		BusMuxIn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		BusMuxOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		encoderSignal : IN STD_LOGIC_VECTOR(4 DOWNTO 0);  
	);
end entity multiplexer32bits;

architecture behavioural of multiplexer32bits is
begin

BusMuxOut <= BusMuxIn(0) when(encoderSignal = "00000")
		else BusMuxIn(1) when(encoderSignal = "00001")
		else BusMuxIn(2) when(encoderSignal = "00010")
		else BusMuxIn(3) when(encoderSignal = "00011")
		else BusMuxIn(4) when(encoderSignal = "00100")
		else BusMuxIn(5) when(encoderSignal = "00101")
		else BusMuxIn(6) when(encoderSignal = "00110")
		else BusMuxIn(7) when(encoderSignal = "00111")
		else BusMuxIn(8) when(encoderSignal = "01000")
		else BusMuxIn(9) when(encoderSignal = "01001")
		else BusMuxIn(10) when(encoderSignal = "01010")
		else BusMuxIn(11) when(encoderSignal = "01011")
		else BusMuxIn(12) when(encoderSignal = "01100")
		else BusMuxIn(13) when(encoderSignal = "01101")
		else BusMuxIn(14) when(encoderSignal = "01110")
		else BusMuxIn(15) when(encoderSignal = "01111")
		else BusMuxIn(16) when(encoderSignal = "10000")
		else BusMuxIn(17) when(encoderSignal = "10001")
		else BusMuxIn(18) when(encoderSignal = "10010")
		else BusMuxIn(19) when(encoderSignal = "10011")
		else BusMuxIn(20) when(encoderSignal = "10100")
		else BusMuxIn(21) when(encoderSignal = "10101")
		else BusMuxIn(22) when(encoderSignal = "10110")
		else BusMuxIn(23) when(encoderSignal = "10111");

end architecture behavioural;