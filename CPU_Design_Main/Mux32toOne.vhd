library IEEE;
USE ieee.std_logic_1164.ALL;
 
ENTITY MUX32toOne IS
	PORT(
		R0BusMuxIn,
		R1BusMuxIn,
		R2BusMuxIn,
		R3BusMuxIn,
		R4BusMuxIn,
		R5BusMuxIn,
		R6BusMuxIn,
		R7BusMuxIn,
		R8BusMuxIn,
		R9BusMuxIn,
		R10BusMuxIn,
		R11BusMuxIn,
		R12BusMuxIn,
		R13BusMuxIn,
		R14BusMuxIn,
		R15BusMuxIn,
		HIBusMuxIn,
		LOBusMuxIn,
		ZHIBusMuxIn,
		ZLOBusMuxIn,
		PCBusMuxIn,
		MDRBusMuxIn,
		INPORTBusMuxIn,
		C_sign_extended : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		s : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		BusMuxOut: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END MUX32toOne;
 
ARCHITECTURE behavioral OF MUX32toOne IS
BEGIN
 BigMultiplexer:
 	PROCESS (R0BusMuxIn,
		R1BusMuxIn,
		R2BusMuxIn,
		R3BusMuxIn,
		R4BusMuxIn,
		R5BusMuxIn,
		R6BusMuxIn,
		R7BusMuxIn,
		R8BusMuxIn,
		R9BusMuxIn,
		R10BusMuxIn,
		R11BusMuxIn,
		R12BusMuxIn,
		R13BusMuxIn,
		R14BusMuxIn,
		R15BusMuxIn,
		HIBusMuxIn,
		LOBusMuxIn,
		ZHIBusMuxIn,
		ZLOBusMuxIn,
		PCBusMuxIn,
		MDRBusMuxIn,
		INPORTBusMuxIn,
		C_sign_extended,
		s)
	BEGIN
 CASE s IS
  when "00000" =>   BusMuxOut <= R0BusMuxIn;
  when "00001" =>   BusMuxOut <= R1BusMuxIn;
  when "00010" =>   BusMuxOut <= R2BusMuxIn;
  when "00011" =>   BusMuxOut <= R3BusMuxIn;
  when "00100" =>   BusMuxOut <= R4BusMuxIn;
  when "00101" =>   BusMuxOut <= R5BusMuxIn;
  when "00110" =>   BusMuxOut <= R6BusMuxIn;
  when "00111" =>   BusMuxOut <= R7BusMuxIn;
  when "01000" =>   BusMuxOut <= R8BusMuxIn;
  when "01001" =>   BusMuxOut <= R9BusMuxIn;
  when "01010" =>   BusMuxOut <= R10BusMuxIn;
  when "01011" =>   BusMuxOut <= R11BusMuxIn;
  when "01100" =>   BusMuxOut <= R12BusMuxIn;
  when "01101" =>   BusMuxOut <= R13BusMuxIn;
  when "01110" =>   BusMuxOut <= R14BusMuxIn;
  when "01111" =>   BusMuxOut <= R15BusMuxIn;
  when "10000" =>   BusMuxOut <= HIBusMuxIn;
  when "10001" =>   BusMuxOut <= LOBusMuxIn;
  when "10010" =>   BusMuxOut <= ZHIBusMuxIn;
  when "10011" =>   BusMuxOut <= ZLOBusMuxIn;
  when "10100" =>   BusMuxOut <= PCBusMuxIn;
  when "10101" =>   BusMuxOut <= MDRBusMuxIn;
  when "10110" =>   BusMuxOut <= INPORTBusMuxIn;
  when "10111" =>   BusMuxOut <= C_sign_extended;
  when others =>    BusMuxOut <= (others => '0');

END CASE;
	END PROCESS;
END behavioral;