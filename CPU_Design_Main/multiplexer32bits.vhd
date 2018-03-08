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
	process(encoderSignal, BusMuxIn_R0, BusMuxIn_R1, BusMuxIn_R2, BusMuxIn_R3, 
				BusMuxIn_R4, BusMuxIn_R5, BusMuxIn_R6, BusMuxIn_R7,
				BusMuxIn_R8, BusMuxIn_R9, BusMuxIn_R10, BusMuxIn_R11,
				BusMuxIn_R12, BusMuxIn_R13, BusMuxIn_R14, BusMuxIn_R15,
				BusMuxIn_HI, BusMuxIn_LO, BusMuxIn_Zhigh, BusMuxIn_Zlow,
				BusMuxIn_PC, BusMuxIn_MDR, BusMuxIn_InPort, C_sign_extended)
	begin
	case encoderSignal is
		when "00000" => BusMuxOut <= BusMuxIn_R0;
		when "00001" => BusMuxOut <= BusMuxIn_R1;
		when "00010" => BusMuxOut <= BusMuxIn_R2;
		when "00011" => BusMuxOut <= BusMuxIn_R3;
		when "00100" => BusMuxOut <= BusMuxIn_R4;
		when "00101" => BusMuxOut <= BusMuxIn_R5;
		when "00110" => BusMuxOut <= BusMuxIn_R6;
		when "00111" => BusMuxOut <= BusMuxIn_R7;
		when "01000" => BusMuxOut <= BusMuxIn_R8;
		when "01001" => BusMuxOut <= BusMuxIn_R9;
		when "01010" => BusMuxOut <= BusMuxIn_R10;
		when "01011" => BusMuxOut <= BusMuxIn_R11;
		when "01100" => BusMuxOut <= BusMuxIn_R12;
		when "01101" => BusMuxOut <= BusMuxIn_R13;
		when "01110" => BusMuxOut <= BusMuxIn_R14;
		when "01111" => BusMuxOut <= BusMuxIn_R15;
		when "10000" => BusMuxOut <= BusMuxIn_HI;
		when "10001" => BusMuxOut <= BusMuxIn_LO;
		when "10010" => BusMuxOut <= BusMuxIn_Zhigh;
		when "10011" => BusMuxOut <= BusMuxIn_Zlow; 
		when "10100" => BusMuxOut <= BusMuxIn_PC; 
		when "10101" => BusMuxOut <= BusMuxIn_MDR;
		when "10110" => BusMuxOut <= BusMuxIn_InPort; 
		when "10111" => BusMuxOut <= C_sign_extended;	
		when others => BusMuxOut <= (others => '0');		
		end case;
	end process;

end architecture behavioural;