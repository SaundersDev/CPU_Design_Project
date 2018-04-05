LIBRARY ieee;
USE ieee.std_logic_1164.all; 

ENTITY IO_Units IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		clr :  IN  STD_LOGIC;
		In_cs :  IN  STD_LOGIC;
		Out_cs :  IN  STD_LOGIC;
		toInPort :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		toOutPort :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		toBus :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		toIO :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END IO_Units;

ARCHITECTURE behaviour OF IO_Units IS 

COMPONENT reg_32
	PORT(
		clk, clr, Rin : IN STD_LOGIC;
		BusMuxOut : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		BusMuxIn : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
END COMPONENT;

BEGIN 

InPort : reg_32 PORT MAP(
		 clk => clk,
		 clr => clr,
		 Rin => In_cs,
		 BusMuxOut => toInPort,
		 BusMuxIn => toBus);


OutPort : reg_32 PORT MAP(
		 clk => clk,
		 clr => clr,
		 Rin => Out_cs,
		 BusMuxOut => toOutPort,
		 BusMuxIn => toIO);


END behaviour;