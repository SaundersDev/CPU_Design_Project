library ieee;
use ieee.std_logic_1164.all;

entity datapath is
	port(
	
		IO_to_inPort : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		
		--standard c signals
		Clock, clr						: in std_logic;
		
--bus signals coming out of register files into the bus
		busR0						: inout std_logic_vector(31 downto 0);
		busR1						: inout std_logic_vector(31 downto 0);
		busR2						: inout std_logic_vector(31 downto 0);
		busR3						: inout std_logic_vector(31 downto 0);
		busR4						: inout std_logic_vector(31 downto 0);
		busR5						: inout std_logic_vector(31 downto 0);
		busR6						: inout std_logic_vector(31 downto 0);
		busR7						: inout std_logic_vector(31 downto 0);
		busR8						: inout std_logic_vector(31 downto 0);
		busR9						: inout std_logic_vector(31 downto 0);
		busR10					: inout std_logic_vector(31 downto 0); 
		busR11					: inout std_logic_vector(31 downto 0);
		busR12					: inout std_logic_vector(31 downto 0); 
		busR13					: inout std_logic_vector(31 downto 0);
		busR14					: inout std_logic_vector(31 downto 0); 
		busR15 					: inout std_logic_vector(31 downto 0);
		
		busPCin 				: inout std_logic_vector(31 downto 0); 
		busIRin  				: inout std_logic_vector(31 downto 0); 
		busMARin  				: inout std_logic_vector(31 downto 0);
		busMDRin  				: inout std_logic_vector(31 downto 0); 
		busInPortin  			: inout std_logic_vector(31 downto 0); 
		outPort_to_IO			: inout std_logic_vector(31 downto 0); 
		busHIin  				: inout std_logic_vector(31 downto 0); 
		busLOin  				: inout std_logic_vector(31 downto 0); 
		busZhighin				: inout std_logic_vector(31 downto 0); 
		busZlowin  				: inout std_logic_vector(31 downto 0); 
		busSignExtendedIn  	: inout std_logic_vector(31 downto 0); 		
		encoderControlBus 	: inout std_logic_vector(4 downto 0);		
		BusMuxOut 				: inout std_logic_vector(31 downto 0);
		
	   --CONFF control signals
		CON_in			: 	in std_logic;
		CON_to_control 	: 	OUT std_LOGIC;	
		InPortin, OutPortin, HIin, LOin  : inout std_logic;		
		
--		conFFLogicInControl 					: in std_logic;
		registerOut	 : inout std_logic_vector(31 downto 0); 
		MARin, Zin, PCin, MDRin, IRin, Yin	: in std_logic;		--Can't be used as Rin
		IncPC, ReadChannel						: in std_logic;
		Mdatain										: in std_logic_vector(31 downto 0);
		registerFileIn 							: inout std_logic_vector(15 downto 0);
		logicALUSelect 							: in std_logic_vector(13 downto 0);
		selGra, selGrb, selGrc, selRout, selBAout, selRin	: in std_logic;
		r0in_r15in_Decoded					: out std_logic_vector(15 downto 0);
		r0out_r15out_Decoded					: out std_logic_vector(15 downto 0);
		ramReadSig, ramWriteSig				: in std_logic		
	);
end datapath;

architecture datapath_arc of datapath is

--ALU COMPONENT
component ALU
	port(
		control						: in std_logic_vector(13 downto 0);
		A, B     					: in std_logic_vector(31 downto 0);
		C								: out std_logic_vector(63 downto 0)
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
	
	
component reg_32
	port(
		clk			: in std_logic;
		clr			: in std_logic;
		Rin 			: in std_logic;
		BusMuxOut 	: in std_logic_vector(31 downto 0);
		BusMuxIn 	: out std_logic_vector(31 downto 0)
	);
end component;	

--Z Register
component zRegister
	port(
		C : in std_logic_vector(63 downto 0);
		Zhigh, Zlow : out std_logic_vector(31 downto 0)
	);
end component;

--Y Register needed

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

--IR Register


--HI LO Register

--Memory Register System

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

-- 


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
		BusMuxOut		: in std_logic_vector(31 downto 0);
		BusMuxInMDR	: inout std_logic_vector(31 downto 0);
		MDRin, MARin, clock, clear: in std_logic;
		readSig, writeSig, mdrReadSig: in std_logic
	);
end component;
--the main data path bus aka BusMuxOut


----bus signals coming out of register files into the bus
--signal	busR0, busR1, busR2, busR3,
--		busR4, busR5, busR6, busR7,
--		busR8, busR9, busR10, busR11,
--		busR12, busR13, busR14, busR15 : std_logic_vector(31 downto 0);
--signal	busPCin, busIRin, busMARin, busMDRin,
--			busInPortin, busOutPortin, busHIin, busLOin,
--			busZhighin, busZlowin, busSignExtendedIn  : std_logic_vector(31 downto 0); 
--signal 	InPortin, OutPortin, HIin, LOin  : std_logic;

--encoder signals
--signal registerOut : std_logic_vector(22 downto 0);
--signal encoderControlBus : std_logic_vector(4 downto 0);

--selecting signals going into registers
--signal IRsel : std_logic;
--signal logicALUSelect : std_logic_vector(12 downto 0);
--signal logicControl : std_logic_vector(31 downto 0);

--internal signals 
signal YtoA : std_logic_vector(31 downto 0);
signal CtoZ : std_logic_vector(63 downto 0);
signal MDMuxToMDR : std_logic_vector(31 downto 0);


begin

--PC: Program Counter
U0: reg_32	port map(
		clk => Clock,
		clr	=> clr,
		Rin => PCin,
		BusMuxOut => BusMuxOut,
		BusMuxIn => busPCin
	);
--IR: Instruction Register
U1: reg_32	port map(
		clk => Clock,
		clr	=> clr,
		Rin => IRin,
		BusMuxOut => BusMuxOut,
		BusMuxIn => busIRin
	);
--mar	
U2: IO_Units port map( 
		clk => Clock,
		clr => clr,
		In_cs => InPortin,
		Out_cs => OutPortin,
		toInPort => IO_to_inPort,
		toOutPort => BusMuxOut,
		toBus => busInPortin,
		toIO => outPort_to_IO
	);

--hi
U6: reg_32	port map(
		clk => Clock,
		clr	=> clr,
		Rin => HIin,
		BusMuxOut => BusMuxOut,
		BusMuxIn => busHIin
);
--lo
U7: reg_32	port map(
		clk => Clock,
		clr	=> clr,
		Rin => LOin,
		BusMuxOut => BusMuxOut,
		BusMuxIn => busLOin
);
--regular registers
datapath_register_file: registerFile port map(
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
U9: reg_32	port map(
		clk => Clock,
		clr	=> clr,
		Rin => Yin,
		BusMuxOut => BusMuxOut,
		BusMuxIn => YtoA
);
--z register	
U10: zRegister port map(
		C => CtoZ,
		Zhigh => busZhighin,
		Zlow => busZlowin
	);

--	encoder for bus
U11: encoder32bits port map(
		input	=> registerOut,
		output 	=> encoderControlBus
	);
--	multiplexer for bus
U12: multiplexer32bits port map(
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
		BusMuxIn_MDR 	=> busMDRin,
		BusMuxIn_InPort=> busInPortin,
		C_sign_extended=> busSignExtendedIn,		
		BusMuxOut 		=> BusMuxOut,
		encoderSignal 	=> encoderControlBus
	);
--alu	
U13: ALU port map(
		control => logicALUSelect,
		A => YtoA,
		B => BusMuxOut,
		C => CtoZ
	);

	

--Select and Encode Logic
U16: selectAndEncodeLogic port map(
		IRin=> busIRin,
		Gra => selGra, 
		Grb => selGrb,
		Grc => selGrc, 
		Rin => selRin, 
		Rout => selRout,
		BAout => selBAout,
		BusMuxOut => BusMuxOut,
		C_sign_extended => busSignExtendedIn,
		r0in_r15in_Decoded => registerFileIn(15 downto 0),
		r0out_r15out_Decoded	=> registerOut(15 downto 0)
);
	
--Outport
U17: memorySubsystem port map(
		BusMuxOut => BusMuxOut,
		BusMuxInMDR	=> BusMDRIn,
		MDRin => MDRin, 
		MARin => MARin, 
		clock => Clock, 
		clear => clr,
		readSig => ramReadSig, 
		writeSig => ramWriteSig, 
		mdrReadSig =>  ReadChannel
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
--		BusMuxOut => MDMuxToMDR,
--		BusMuxIn => busMDRin
--	);	
----multiplexerMDR
--U14: multiplexerMDR port map(
--		BusMuxOut 	=> BusMuxOut,
--		Mdatain 		=> Mdatain,
--		ReadChannel => ReadChannel, 
--		MDRMuxOut 	=> MDMuxToMDR
--	);
	
	--CONff Logic
conFlipF: conFF PORT MAP(
		clk	=> CON_in,
		IRout	=> busIRin,
		BusMuxOut => BusMuxOut,
		CONout	=> con_to_control
);
	
	
	
	
end architecture datapath_arc;	