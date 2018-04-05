library ieee;
use ieee.std_logic_1164.all;

entity memorySubsystem is
	port(
		BusMuxOut	: in std_logic_vector(31 downto 0);
		ram_done_cs	 : inout std_logic;
		BusMuxInMDR	: inout std_logic_vector(31 downto 0);
		MDRin, MARin, clock, clear: in std_logic;
		read_notWrite : in std_logic
	);
end entity;
	
architecture behaviour of memorySubsystem is
--component notGate is
	--port(
		
	--);
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

signal mdMuxToMDR, mdrToRam, BusMuxInRAM : std_logic_vector(31 downto 0);
signal address : std_logic_vector(8 downto 0);
signal writeSig		: std_logic;
signal complete : std_logic;
begin

--ADDED CODE
writeSig <= not read_notWrite;

ramCompletionSignalGeneration : process (BusMuxInMDR(8 DOWNTO 0), writeSig, address)
begin
	complete <= '0', '1' after 45 ns;
end process;
ram_done_cs <= complete;
--ADDED CODE


--MDMUX
U0: multiplexerMDR port map(
		BusMuxOut => BusMuxOut,
		Mdatain => BusMuxInRAM,
		ReadChannel => read_notWrite,
		MDRMuxOut => mdMuxToMDR
);
--MDR Reg
U1: reg_32 port map(
	clk => clock,
	clr => clear,
	Rin => MDRin,
	BusMuxOut => mdMuxToMDR,
	BusMuxIn => BusMuxInMDR
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
		data => BusMuxInMDR,
		rden => read_notWrite,
		wren => writeSig,
		q => BusMuxInRAM
);
end architecture;
