library ieee;
use ieee.std_logic_1164.all;

entity datapath is
	port(
		Clock, clr						: in std_logic;
		IO_to_inPort : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		
		--register enable signals
		MARin, MDRin, IOin, IOout, Zin, Yin, PCin, IRin, HIin, LOin	: 	IN std_logic;
		Cout, InPortout, MDRout, PCout, Zlowout, Zhighout, Loout, HIout: in std_logic;
		regOut		: Inout std_logic_vector(15 downto 0);			
		
		--Select and Encode Logic signals
		selGra, selGrb, selGrc, selRin, selRout, selBAout	:	IN	std_logic;
		CON_in		:		in std_logic;
		
		--Memory Subsystem Signals
		ram_done_cs : inout std_logic;					
		read_notWrite		:		IN std_logic;					
		
		--Control Signals for ALU
		logicALUSelect  : in std_logic_vector(13 downto 0); 
		
		--Output Signals
		outPort_to_IO : out std_logic_vector(31 downto 0);
		readWrite_to_memory, CON_to_control 	: 	OUT std_LOGIC;
		shiftValue_to_control		:  OUT STD_LOGIC_VECTOR(4 downto 0);
		BusMuxOut : INOUT std_LOGIC_VECTOR(31 downto 0);
		memoryData_to_computerSystem	: 	OUT std_LOGIC_VECTOR(31 downto 0)
	);
end datapath;

architecture datapath_arc of datapath is
--ALU COMPONENT
component ALU
	port(
		control						: in std_logic_vector(13 downto 0);
		A, B     					: in std_logic_vector(31 downto 0);
		C							: out std_logic_vector(63 downto 0)
	);
end component;

--IO_Units COMPONENT needed
component IO_Units
	port(
		clk :  IN  STD_LOGIC;
		clr :  IN  STD_LOGIC;
		In_cs :  IN  STD_LOGIC;
		Out_cs :  IN  STD_LOGIC;
		toInPort :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		toOutPort :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		toBus :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		toIO :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
end component;

--Z Register
component zRegister
	port(
		C : in std_logic_vector(63 downto 0);
		Zin, clk : IN STD_LOGIC;
		Zhigh, Zlow : out std_logic_vector(31 downto 0)
	);
end component;	
	
--RegisterFile 
component registerFile
	port
	(
		clk, clr, BAout 	: in std_logic;
		Rin	: in std_logic_vector(15 downto 0);
		BusMuxOut 	: in std_logic_vector(31 downto 0);
		BusMuxInR0, BusMuxInR1, BusMuxInR2, BusMuxInR3,
		BusMuxInR4, BusMuxInR5, BusMuxInR6, BusMuxInR7,
		BusMuxInR8, BusMuxInR9, BusMuxInR10, BusMuxInR11,
		BusMuxInR12, BusMuxInR13, BusMuxInR14, BusMuxInR15 : out std_logic_vector(31 downto 0)
	);
end component;

--PC Register
component reg_32
	port(
		clk			: in std_logic;
		clr			: in std_logic;
		Rin 			: in std_logic;
		BusMuxOut 	: in std_logic_vector(31 downto 0);
		BusMuxIn 	: out std_logic_vector(31 downto 0)
	);
end component;	

--Mulitplexer 32
component multiplexer32bits
	port (
		BusMuxIn_R0, BusMuxIn_R1, BusMuxIn_R2, BusMuxIn_R3, 
		BusMuxIn_R4, BusMuxIn_R5, BusMuxIn_R6, BusMuxIn_R7,
		BusMuxIn_R8, BusMuxIn_R9, BusMuxIn_R10, BusMuxIn_R11,
		BusMuxIn_R12, BusMuxIn_R13, BusMuxIn_R14, BusMuxIn_R15,
		BusMuxIn_HI, BusMuxIn_LO, BusMuxIn_Zhigh, BusMuxIn_Zlow,
		BusMuxIn_PC, BusMuxIn_MDR, BusMuxIn_InPort,
		C_sign_extended: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		
		BusMuxOut 		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		encoderSignal	: IN STD_LOGIC_VECTOR(4 DOWNTO 0) 
	);
end component;

component multiplexerMDR
	port(
		BusMuxOut, Mdatain: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		ReadChannel 		: IN STD_LOGIC; 
		MDRMuxOut 			: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
end component;

component encoder32bits
	port (	
		input  : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		output : OUT STD_LOGIC_VECTOR(4 downto 0)	
	);
end component;

COMPONENT conFF
	PORT
	(
		clk		:	 IN STD_LOGIC;
		IRout		:	 IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		BusMuxOut		:	 IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		CONout		:	 OUT STD_LOGIC
	);
END COMPONENT;

component selectAndEncodeLogic is
	port(
		IRin										: in std_logic_vector(31 downto 0);
		Gra, Grb, Grc, Rin, Rout, BAout	: in std_logic;
		BusMuxOut								: in std_logic_vector(31 downto 0);
		C_sign_extended						: out std_logic_vector(31 downto 0);
		r0in_r15in_Decoded					: out std_logic_vector(15 downto 0);
		r0out_r15out_Decoded					: out std_logic_vector(15 downto 0)
	);
end component;

component memorySubsystem is
	port(
		BusMuxOut	: in std_logic_vector(31 downto 0);
		BusMuxInMDR	: inout std_logic_vector(31 downto 0);
		MDRin, MARin, clock, clear: in std_logic;
		read_notWrite : in std_logic;
		ram_done_cs	 : inout std_logic
	);
end component;
--the main data path bus aka BusMuxOut

<<<<<<< HEAD
component IO_Units IS 
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
END component;

--internal signals****************************************************************************** 
=======
----bus signals coming out of register files into the bus
signal	busR0, busR1, busR2, busR3,
		busR4, busR5, busR6, busR7,
		busR8, busR9, busR10, busR11,
		busR12, busR13, busR14, busR15 : std_logic_vector(31 downto 0);

signal	busPCin, busIRin, busMARin, busMDRin,
			busInPortin, busOutPortin, busHIin, busLOin,
			busZhighin, busZlowin, busSignExtendedIn  : std_logic_vector(31 downto 0); 
signal registerFileIn : std_logic_vector(15 downto 0);

--encoder signals
signal encoderControlBus : std_logic_vector(4 downto 0);

--NULLS ADDED COMPONENTS
>>>>>>> phase2DrewProgre
signal YtoA : std_logic_vector(31 downto 0);
signal CtoZ : std_logic_vector(63 downto 0);
--signal MDMuxToMDR : std_logic_vector(31 downto 0);
signal complete : std_logic;

begin
--PC: Program Counter
PC: reg_32	port map(
		clk => Clock,
		clr	=> clr,
		Rin => PCin,
		BusMuxOut => BusMuxOut,
		BusMuxIn => busPCin
	);
--IR: Instruction Register
IR: reg_32	port map(
		clk => Clock,
		clr	=> clr,
		Rin => IRin,
		BusMuxOut => BusMuxOut,
		BusMuxIn => busIRin
	);
<<<<<<< HEAD
U2: memorySubsystem port map(
		BusMuxOut		=> BusMuxOut,
		Mdatain			=> Mdatain,
		BusMuxInMDR		=> busMDRIn,
		BusMuxInRAM		=> busRAMin,
		BusMuxInMAR		=> busMARin,
		MDRin				=> MDRin,
		MARin				=> MARin,
		clock				=> Clock,
		clear				=> clr,
		readSig			=> ramReadSig,
		writeSig			=> ramWriteSig,
		mdrReadSig		=> ReadChannel	--mdrReadSig
	);	
--U2: reg_32	port map(
--		clk => Clock,
--		clr	=> clr,
--		Rin => MARin,
--		BusMuxOut => BusMuxOut,
--		BusMuxIn => busMARin
--	);
----mdr	
--U3: reg_32	port map(
--		clk => Clock,
--		clr	=> clr,
--		Rin => MDRin,
--		BusMuxIn => busMDRin
--	);	
--		
U3: IO_Units port map(
		clk => Clock,
		clr 	=> clr,
		In_cs => Inportin,
		Out_cs => OutPortin,
		toInPort => inputValuesHere,
		toOutPort => busMuxOut,
		toBus 	 => busInPortin,
		toIO 		=> busOutPortIn
	);
----inport	
--U3: reg_32	port map(
--		clk => Clock,
--		clr	=> clr,
--		Rin => InPortin,
--		BusMuxOut => inputValuesHere,
--		BusMuxIn => busInPortin
--);	
----outport
--U4: reg_32	port map(
--		clk => Clock,
--		clr	=> clr,
--		Rin => OutPortin,
--		BusMuxOut => BusMuxOut,
--		BusMuxIn => busOutPortin
--);
--hi
U4: reg_32	port map(
=======
--mar	
IO: IO_Units port map( 
		clk => Clock,
		clr => clr,
		In_cs => IOin,
		Out_cs => IOout,
		toInPort => IO_to_inPort,
		toOutPort => BusMuxOut,
		toBus => busInPortin,
		toIO => outPort_to_IO
	);

--hi
HI: reg_32	port map(
>>>>>>> phase2DrewProgre
		clk => Clock,
		clr	=> clr,
		Rin => HIin,
		BusMuxOut => BusMuxOut,
		BusMuxIn => busHIin
);
--lo
<<<<<<< HEAD
U5: reg_32	port map(
=======
LO: reg_32	port map(
>>>>>>> phase2DrewProgre
		clk => Clock,
		clr	=> clr,
		Rin => LOin,
		BusMuxOut => BusMuxOut,
		BusMuxIn => busLOin
);
--regular registers
<<<<<<< HEAD
U6: registerFile port map(
=======
datapath_register_file: registerFile port map(
>>>>>>> phase2DrewProgre
		clk => Clock,
		clr => clr,
		BAout => selBAout,
		Rin => registerFileIn,
		BusMuxOut => BusMuxOut,
		BusMuxInR0 => busR0, 
		BusMuxInR1 => busR1, 
		BusMuxInR2 => busR2, 
		BusMuxInR3 => busR3,
		BusMuxInR4 => busR4,
		BusMuxInR5 => busR5,
		BusMuxInR6 => busR6,
		BusMuxInR7 => busR7,
		BusMuxInR8 => busR8, 
		BusMuxInR9 => busR9,
		BusMuxInR10 => busR10,
		BusMuxInR11 => busR11,
		BusMuxInR12 => busR12,
		BusMuxInR13 => busR13,
		BusMuxInR14 => busR14,
		BusMuxInR15 => busR15
	);

--y register
<<<<<<< HEAD
U7: reg_32	port map(
=======
Y: reg_32	port map(
>>>>>>> phase2DrewProgre
		clk => Clock,
		clr	=> clr,
		Rin => Yin,
		BusMuxOut => BusMuxOut,
		BusMuxIn => YtoA
);
--z register	
<<<<<<< HEAD
U8: zRegister port map(
=======
Z: zRegister port map(
>>>>>>> phase2DrewProgre
		C => CtoZ,
		clk => Clock,
		Zin => Zin,
		Zhigh => busZhighin,
		Zlow => busZlowin
	);

--	encoder for bus
<<<<<<< HEAD
U9: encoder32bits port map(
		input	=> registerOut,
		output 	=> encoderControlBus
	);
--	multiplexer for bus
U10: multiplexer32bits port map(
=======
Encoder: encoder32bits port map(
		input(31 downto 24)	=> x"00",
		input(23)	=> Cout,
		input(22)	=> InPortout,
		input(21)	=> MDRout,
		input(20)	=> PCout,
		input(19)	=> Zlowout,
		input(18)	=> Zhighout,
		input(17)	=> Loout,
		input(16)	=> HIout,
		input(15 downto 0)	=> regOut,		
		output 	=> encoderControlBus
	);
--	multiplexer for bus
Multiplexer: multiplexer32bits port map(
>>>>>>> phase2DrewProgre
		BusMuxIn_R0		=> busR0, 
		BusMuxIn_R1 	=> busR1, 
		BusMuxIn_R2 	=> busR2, 
		BusMuxIn_R3 	=> busR3,
		BusMuxIn_R4 	=> busR4,
		BusMuxIn_R5 	=> busR5,
		BusMuxIn_R6 	=> busR6,
		BusMuxIn_R7 	=> busR7,
		BusMuxIn_R8 	=> busR8, 
		BusMuxIn_R9 	=> busR9,
		BusMuxIn_R10 	=> busR10,
		BusMuxIn_R11 	=> busR11,
		BusMuxIn_R12 	=> busR12,
		BusMuxIn_R13 	=> busR13,
		BusMuxIn_R14 	=> busR14,
		BusMuxIn_R15 	=> busR15,
		BusMuxIn_HI 	=> busHIin,
		BusMuxIn_LO 	=> busLOin, 
		BusMuxIn_Zhigh => busZhighin,
		BusMuxIn_Zlow 	=> busZlowin,
		BusMuxIn_PC 	=> busPCin,
		BusMuxIn_MDR 	=> BusMDRIn,
		BusMuxIn_InPort=> busInPortin,
		C_sign_extended=> busSignExtendedIn,		
		BusMuxOut 		=> BusMuxOut,
		encoderSignal 	=> encoderControlBus
	);
--alu	
<<<<<<< HEAD
U11: ALU port map(
=======
Arithmetic: ALU port map(
>>>>>>> phase2DrewProgre
		control => logicALUSelect,
		A => YtoA,
		B => BusMuxOut,
		C => CtoZ
	);
<<<<<<< HEAD
----multiplexerMDR
--U14: multiplexerMDR port map(
--		BusMuxOut 	=> BusMuxOut,
--		Mdatain		=> Mdatain,
--		ReadChannel => ReadChannel, 
--	);
--ConFFLogic
U12: conFF port map(
		clk			=>  Clock,
		IRout			=> busIRin, --Or IRtoConFFLogic? Figure out how this works
		BusMuxOut	=> BusMuxOut,
		CONout		=> CONout
);
U13: selectAndEncodeLogic port map(
		IRin		=> busIRin,
		Gra		=> selGra,
		Grb		=> selGrb,
		Grc		=> selGrc,
		Rin		=> selRin,
		Rout		=> selRout,
		BAout		=> BAout,
		BusMuxOut	=> BusMuxOut,
=======

--Select and Encode Logic
SelectEncode: selectAndEncodeLogic port map(
		IRin=> busIRin,
		Gra => selGra, 
		Grb => selGrb,
		Grc => selGrc, 
		Rin => selRin, 
		Rout => selRout,
		BAout => selBAout,
		BusMuxOut => BusMuxOut,
>>>>>>> phase2DrewProgre
		C_sign_extended => busSignExtendedIn,
		r0in_r15in_Decoded => registerFileIn(15 downto 0),
		r0out_r15out_Decoded	=> regOut
);	
--Outport
Memory: memorySubsystem port map(
		BusMuxOut => BusMuxOut,
		ram_done_cs => ram_done_cs,
		BusMuxInMDR	=> BusMDRIn,
		MDRin => MDRin, 
		MARin => MARin, 
		clock => Clock, 
		clear => clr,
		read_notWrite => read_notWrite
);
--conff Logic
conFFLogic: conFF PORT MAP(
		clk	=> CON_in,
		IRout	=> busIRin,
		BusMuxOut => BusMuxOut,
		CONout	=> con_to_control
);
end architecture datapath_arc;	