LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY regMAR IS
	PORT(
		clk, clr, Rin : IN STD_LOGIC;
		BusMuxOut : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		BusMuxIn : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
		);
END ENTITY regMAR;

ARCHITECTURE arc OF regMAR IS
BEGIN
	SingleRegister:
	PROCESS (clk, clr, Rin, BusMuxOut)
	BEGIN
		IF (rising_edge(clk) AND (Rin = '1')) THEN
			IF (clr = '0') THEN
				BusMuxIn <= (others => '0' );
			ELSE
				BusMuxIn <= BusMuxOut(8 downto 0);
			END IF;
		END IF;
	END PROCESS;
END ARCHITECTURE arc;