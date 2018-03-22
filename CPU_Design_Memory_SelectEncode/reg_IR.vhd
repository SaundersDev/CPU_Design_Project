LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY reg_IR IS
	PORT(
		clk, clr, Rin : IN STD_LOGIC;
		BusMuxOut : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		BusMuxIn : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
END ENTITY reg_IR;

ARCHITECTURE arc OF reg_IR IS
BEGIN
	SingleRegister:
	PROCESS (clk, clr, Rin, BusMuxOut)
	BEGIN
		IF (rising_edge(clk) AND (Rin = '1')) THEN
			IF (clr = '0') THEN
				BusMuxIn <= (others => '0' );
			ELSIF(clr = '1' and BusMuxOut(18) = '1') THEN
				BusMuxIn(31 downto 18) <= BusMuxOut(31 downto 18);
				BusMuxIn(17 downto 0) <= "111111111111111111";
			ELSE
				BusMuxIn(31 downto 18) <= BusMuxOut(31 downto 18);
				BusMuxIn(17 downto 0) <= "000000000000000000";
			END IF;
		END IF;
	END PROCESS;
END ARCHITECTURE arc;
