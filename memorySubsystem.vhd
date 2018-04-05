library ieee;
use ieee.std_logic_1164.all;

entity memorySubsystem is
	port(
		BusMuxOut: in std_logic_vector(31 downto 0);
		BusMuxIn-MDR: inout std_logic_vector(31 downto 0);
		MDRin, MARin, clock, clear: in std_logic;
		readSig, writeSig: in std_logic
	);
end entity;
	
architecture beahaviour of memorySubsystem is

component multiplexerMDR is 
	port(
		BusMuxOut, Mdatain: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		ReadChannel : IN STD_LOGIC; 
		MDRMuxOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
end component;

component reg_32 is
	port(
		clk, clr, Rin : IN STD_LOGIC;
		BusMuxOut : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		BusMuxIn : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
end component;

component ram IS
	PORT(
		address		: IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		rden		: IN STD_LOGIC  := '1';
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END component;

signal mdMuxToMDR, data : std_logic_vector(31 downto 0);
signal address : std_logic_vector(8 downto 0);
begin
--MDMUX
U0: multiplierMDR port map(
		BusMuxOut => BusMuxOut,
		Mdatain => BusMuxIn-MDR,
		ReadChannel => readSig,
		MDRMuxOut => mdMuxToMDR
);
--MDR Reg
U1: reg_32 port map(
	clk => clock,
	clr => clear,
	Rin => MDRin,
	BusMuxOut => mdMuxToMDR,
	BusMuxIn => BusMuxIn-MDR
);
--MAR
U2: reg_32 port map(
	clk => clock,
	clr => clear,
	Rin => MARin,
	BusMuxOut => BusMuxOut,
	BusMuxIn(8 downto 0) => address
);
--RAM
U3: ram port map(
		address => address,
		clock => clock,
		data => BusMuxIn-MDR,
		rden => readSig,
		wren => writeSig,
		q => BusMuxIn-MDR
);
end architecture;
