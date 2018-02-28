LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY multiplexerMDR IS
	PORT(
		BusMuxOut, Mdatain: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		ReadChannel : IN STD_LOGIC; 
		MDRMuxOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
END ENTITY multiplexerMDR;

ARCHITECTURE behaviour OF multiplexerMDR IS
BEGIN	
	MDRMuxOut <= BusMuxOut when (ReadChannel = '0')
				 else Mdatain when (ReadChannel = '1');	
				 
END ARCHITECTURE behaviour;