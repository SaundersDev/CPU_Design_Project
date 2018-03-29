library ieee;
use ieee.std_logic_1164.all;

entity memorySubsystem is
	port(
		BusMuxOut		: in std_logic_vector(31 downto 0);
		BusMuxInMDR	: inout std_logic_vector(31 downto 0);
		MDRin, MARin, clock, clear: in std_logic;
		readSig, writeSig, mdrReadSig: in std_logic
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

component regMAR IS
	PORT(
		clk, clr, Rin : IN STD_LOGIC;
		BusMuxOut : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		BusMuxIn : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
		);
END component;


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

signal mdMuxToMDR, mdrToRam: std_logic_vector(31 downto 0);
signal address : std_logic_vector(8 downto 0);
begin
--MDMUX
U0: multiplexerMDR port map(
		BusMuxOut => BusMuxOut,
		Mdatain => BusMuxInMDR,
		ReadChannel => mdrReadSig,
		MDRMuxOut => mdMuxToMDR
);
--MDR Reg
U1: reg_32 port map(
	clk => clock,
	clr => clear,
	Rin => MDRin,
	BusMuxOut => mdMuxToMDR,
	BusMuxIn => mdrToRam
);
--MAR
U2: regMAR port map(
	clk => clock,
	clr => clear,
	Rin => MARin,
	BusMuxOut => BusMuxOut,
	BusMuxIn => address
);
--RAM
U3: ram port map(
		address => address,
		clock => clock,
		data => mdrToRam,
		rden => readSig,
		wren => writeSig,
		q => BusMuxInMDR
);
end architecture;
