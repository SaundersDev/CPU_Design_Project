
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY multiplexer32bits IS
	PORT (
		BusMuxIn_R0, BusMuxIn_R1, BusMuxIn_R2, BusMuxIn_R3, 
		BusMuxIn_R4, BusMuxIn_R5, BusMuxIn_R6, BusMuxIn_R7,
		BusMuxIn_R8, BusMuxIn_R9, BusMuxIn_R10, BusMuxIn_R11,
		BusMuxIn_R12, BusMuxIn_R13, BusMuxIn_R14, BusMuxIn_R15,
		BusMuxIn_HI, BusMuxIn_LO, BusMuxIn_Zhigh, BusMuxIn_Zlow,
		BusMuxIn_PC, BusMuxIn_MDR, BusMuxIn_InPort,
		C_sign_extended: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		
		BusMuxOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		encoderSignal : IN STD_LOGIC_VECTOR(4 DOWNTO 0) 
	);
end entity multiplexer32bits;

architecture behavioural of multiplexer32bits is
begin

BusMuxOut <= BusMuxIn_R0 when(encoderSignal = "00000")
		else BusMuxIn_R1 when(encoderSignal = "00001")
		else BusMuxIn_R2 when(encoderSignal = "00010")
		else BusMuxIn_R3 when(encoderSignal = "00011")
		else BusMuxIn_R4 when(encoderSignal = "00100")
		else BusMuxIn_R5 when(encoderSignal = "00101")
		else BusMuxIn_R6 when(encoderSignal = "00110")
		else BusMuxIn_R7 when(encoderSignal = "00111")
		else BusMuxIn_R8 when(encoderSignal = "01000")
		else BusMuxIn_R9 when(encoderSignal = "01001")
		else BusMuxIn_R10 when(encoderSignal = "01010")
		else BusMuxIn_R11 when(encoderSignal = "01011")
		else BusMuxIn_R12 when(encoderSignal = "01100")
		else BusMuxIn_R13 when(encoderSignal = "01101")
		else BusMuxIn_R14 when(encoderSignal = "01110")
		else BusMuxIn_R15 when(encoderSignal = "01111")
		else BusMuxIn_HI when(encoderSignal = "10000")
		else BusMuxIn_LO when(encoderSignal = "10001")
		else BusMuxIn_Zhigh when(encoderSignal = "10010")
		else BusMuxIn_Zlow when(encoderSignal = "10011")
		else BusMuxIn_PC when(encoderSignal = "10100")
		else BusMuxIn_MDR when(encoderSignal = "10101")
		else BusMuxIn_InPort when(encoderSignal = "10110")
		else C_sign_extended when(encoderSignal = "10111");

end architecture behavioural;