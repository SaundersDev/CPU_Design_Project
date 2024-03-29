LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY datapath_tb2 IS
END;

ARCHITECTURE datapath_tb_arc OF datapath_tb2 IS
signal	Clock_tb														: std_logic;
signal 	clr_tb														: std_logic;
signal	busR0_tb, busR1_tb, busR2_tb, busR3_tb, busR4_tb, 
			busR5_tb, busR6_tb, busR7_tb, busR8_tb, busR9_tb, 
			busR10_tb, busR11_tb, busR12_tb, 
			busR13_tb, busR14_tb, busR15_tb						: std_logic_vector(31 downto 0); --outputs from each register
signal busPCin_tb, busIRin_tb, busMARin_tb, busMDRin_tb					: std_logic_vector(31 downto 0);
signal busInPortin_tb, busOutPortIn_tb, busHIin_tb, busLOin_tb			: std_logic_vector(31 downto 0);			
signal busZhighin_tb, busZlowin_tb, busSignExtendedIn_tb	: std_logic_vector(31 downto 0);
signal encoderControlBus_tb 										: std_logic_vector(4 downto 0);
signal InPortin_tb, OutPortin_tb, HIin_tb, LOin_tb			: std_logic;
signal registerOut_tb	 											: std_logic_vector(31 downto 0);
--signal PCout_tb, Zlowout_tb, MDRout_tb 						: std_logic;
SIGNAL MARin_tb, Zin_tb, PCin_tb, MDRin_tb, IRin_tb, Yin_tb:	std_logic;
SIGNAL IncPC_tb, Read_tb							:	std_logic;
SIGNAL Mdatain_tb												:	std_logic_vector(31 downto 0);
signal registerFileIn_tb 										: std_logic_vector(15 downto 0);
signal logicALUSelect_tb											: std_logic_vector(12 downto 0);
signal BusMuxOut_tb : std_logic_vector(31 downto 0);
--signal HI_tb, LO_tb, IR_tb : std_logic_vector(31 downto 0);
signal selGra_tb, selGrb_tb, selGrc_tb, selRout_tb, selBAout_tb, selRin_tb	: std_logic;
signal r0in_r15in_Decoded_tb, r0out_r15out_Decoded_tb		: std_logic_vector(15 downto 0);
signal ramReadSig_tb, ramWriteSig_tb : std_logic;


TYPE	State IS(default, Reg_load1a, Reg_load1b, Reg_load2a, Reg_load2b, Reg_load3a, Reg_load3b, T0, T1, T2, T3, T4, T5, T6, T7);

SIGNAL	Present_state:	State:=default;

COMPONENT datapath is
	port(
		Clock						: in std_logic;
		clr 						: in std_logic;
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
		
		busPCin 					: inout std_logic_vector(31 downto 0); 
		busIRin  				: inout std_logic_vector(31 downto 0); 
		busMARin  				: inout std_logic_vector(31 downto 0);
		busMDRin  				: inout std_logic_vector(31 downto 0); 
		busInPortin  			: inout std_logic_vector(31 downto 0); 
		busOutPortin			: inout std_logic_vector(31 downto 0); 
		busHIin  				: inout std_logic_vector(31 downto 0); 
		busLOin  				: inout std_logic_vector(31 downto 0); 
		busZhighin				: inout std_logic_vector(31 downto 0); 
		busZlowin  				: inout std_logic_vector(31 downto 0); 
		busSignExtendedIn  	: inout std_logic_vector(31 downto 0); 		
		encoderControlBus 	: inout std_logic_vector(4 downto 0);		
		BusMuxOut 				: inout std_logic_vector(31 downto 0);
		
	   --CONFF control signals ADDED
		CON_to_control 	: 	OUT std_LOGIC;	
		InPortin, OutPortin, HIin, LOin  : inout std_logic;		
		
--		conFFLogicInControl 					: in std_logic;
		registerOut	 								: inout std_logic_vector(31 downto 0); 
		MARin, Zin, PCin, MDRin, IRin, Yin	: in std_logic;		--Can't be used as Rin
		IncPC, ReadChannel						: in std_logic;
		Mdatain										: in std_logic_vector(31 downto 0);
		registerFileIn 							: inout std_logic_vector(15 downto 0);
		logicALUSelect 							: in std_logic_vector(12 downto 0);
		selGra, selGrb, selGrc, selRout, selBAout, selRin	: in std_logic;
		r0in_r15in_Decoded					: out std_logic_vector(15 downto 0);
		r0out_r15out_Decoded					: out std_logic_vector(15 downto 0);
		ramReadSig, ramWriteSig				: in std_logic		
	);
END COMPONENT datapath;
BEGIN

DUT0 : datapath	PORT MAP (
	Clock => Clock_tb,
	clr	=> clr_tb,
	busR0 => busR0_tb,
	busR1 => busR1_tb,
	busR2 => busR2_tb,
	busR3 => busR3_tb,
	busR4 => busR4_tb,
	busR5 => busR5_tb,
	busR6 => busR6_tb,
	busR7 => busR7_tb,
	busR8 => busR8_tb,
	busR9 => busR9_tb,
	busR10=> busR10_tb,
	busR11=> busR11_tb,
	busR12=> busR12_tb,
	busR13=> busR13_tb,
	busR14=> busR14_tb,
	busR15=> busR15_tb,
	busPCin		=>busPCin_tb, 
	busIRin		=>busIRin_tb, 
	busMARin		=> busMARin_tb, 
	busMDRin		=> busMDRin_tb,
	busInPortin => busInPortin_tb, 
	busOutPortin=> busOutPortIn_tb, 
	busHIin		=>busHIin_tb, 
	busLOin		=>busLOin_tb,
	busZhighin	=>busZhighin_tb, 
	busZlowin	=>busZlowin_tb, 
	busSignExtendedIn=>busSignExtendedIn_tb,
	BusMuxOut => BusMuxOut_tb, 
	encoderControlBus=>encoderControlBus_tb,
	registerOut => registerOut_tb,
	MARin 		=>	MARin_tb,
	Zin 			=>	Zin_tb,
	PCin 			=>	PCin_tb,
	MDRin 		=>	MDRin_tb,
	IRin 			=>	IRin_tb,
	Yin 			=>	Yin_tb,
	registerFileIn	=>	registerFileIn_tb,
	IncPC 		=>	IncPC_tb,
	ReadChannel =>	Read_tb,
	Mdatain 	=>	Mdatain_tb,
	logicALUSelect => logicALUSelect_tb,
	selGra => selGra_tb,
	selGrb => selGrb_tb,
	selGrc => selGrc_tb,
	selRout => selRout_tb,
	selBAout => selBAout_tb,
	selRin => selRin_tb,
	ramReadSig => ramReadSig_tb,
	ramWriteSig => ramWriteSig_tb
	);
	
	Clock_process:PROCESS is
	BEGIN
		Clock_tb<= '1', '0' after 10 ns;
		Wait for 20 ns;
	END PROCESS Clock_process;
	PROCESS(Clock_tb)
	BEGIN
		IF(rising_edge(Clock_tb))THEN
			CASE Present_state IS
				WHEN Default   =>
					Present_state	<=	Reg_load1a;
				WHEN Reg_load1a =>
					Present_state	<=	Reg_load1b;
				WHEN Reg_load1b =>
					Present_state	<=	Reg_load2a;
				WHEN Reg_load2a =>
					Present_state	<=	Reg_load2b;
				WHEN Reg_load2b =>
					Present_state	<=	Reg_load3a;					
				WHEN Reg_load3a =>
					Present_state	<=	Reg_load3b;
				WHEN Reg_load3b =>
					Present_state	<=	T0;	
				WHEN T0 	   =>
					Present_state	<=	T1;		
				WHEN T1 	   =>
					Present_state	<=	T2;			
				WHEN T2 	   =>
					Present_state	<=	T3;			
				WHEN T3 	   =>
					Present_state	<=	T4;			
				WHEN T4 	   =>
					Present_state	<=	T5;
				WHEN T5 	   =>
					Present_state	<=	T6;
				WHEN T6 	   =>
					Present_state	<=	T7;					
				WHEN OTHERS =>
			END CASE;
		END IF;
	END PROCESS;
			
	PROCESS (Present_state) -- do the required job in each state
	BEGIN
		CASE Present_state IS -- assert the required signals in each clock cycle
			
			when Default =>
				clr_tb <= '1'; 
				
				for bowden in 0 to 31 loop
					registerOut_tb(bowden) <='0';
				end loop;
				MARin_tb 				<= '0';
				Zin_tb 					<= '0';
				PCin_tb  				<= '0';
				MDRin_tb 				<= '0';
				IRin_tb 					<= '0';
				Yin_tb 					<= '0';
				registerFileIn_tb 	<= x"0000";			
				IncPC_tb 				<= '0';
				Read_tb   				<= '0';
				logicALUSelect_tb 	<= "0001000000000";	
			WHEN Reg_load1a => 
				Mdatain_tb <= x"00000012";
				Read_tb   <= '0', '1' after 10 ns, '0' after 25 ns;
				MDRin_tb  <= '0', '1' after 10 ns, '0' after 25 ns;
			WHEN Reg_load1b => 
				registerOut_tb <= x"00100000" after 10 ns, x"00000000" after 25 ns;
				registerFileIn_tb(1) <= '1' after 10 ns, '0' after 25 ns;	
				
			WHEN Reg_load2a => 
				Mdatain_tb <= x"00000014";
				Read_tb   <= '1' after 10 ns, '0' after 25 ns;
				MDRin_tb  <= '1' after 10 ns, '0' after 25 ns;
			WHEN Reg_load2b => 
				registerOut_tb <= x"00100000" after 10 ns, x"00000000" after 25 ns;
				registerFileIn_tb(2) <= '1' after 10 ns, '0' after 25 ns;	
			
			WHEN Reg_load3a => 
				Mdatain_tb <= x"00000016";
				Read_tb   <= '1' after 10 ns, '0' after 25 ns;
				MDRin_tb  <= '1' after 10 ns, '0' after 25 ns;
			WHEN Reg_load3b => 
				registerOut_tb <= x"00100000" after 10 ns, x"00000000" after 25 ns;
				registerFileIn_tb(3) <= '1' after 10 ns, '0' after 25 ns;				
			
			
			WHEN T0 =>
				registerOut_tb(20) <= '1';
				MARin_tb <= '1';
				IncPC_tb <= '1';
				Zin_tb 	 <= '1';
			
			
			WHEN T1 =>
				registerOut_tb(20) <= '0';
				MARin_tb <= '0';
				IncPC_tb <= '0';
				Zin_tb 	<= '0';
				
				registerOut_tb(19) 	<= '1';
				PCin_tb    				<= '1';
				Read_tb   				<= '1';
				MDRin_tb 				<= '1';
				Mdatain_tb(31 downto 0) <= x"28918000"; -- opcode for and R1_tb, R2_tb, R3_tb
			
			WHEN T2 =>
				registerOut_tb(19) 	<= '0';
				PCin_tb    				<= '0';
				Read_tb   				<= '0';
				MDRin_tb 				<= '0';
			
				registerOut_tb(21) 	<= '1';
				IRin_tb 	<= '1';
			
			WHEN T3 =>
				registerOut_tb(21) 	<= '0';
				IRin_tb 					<= '0';
				
CASE Present_instruction IS
						WHEN ldi =>
							selGrb_tb <= '1'; BAout_tb <= '1'; Yin_tb <= '1';
						WHEN ld => 
							selGrb_tb <= '1'; BAout_tb <= '1'; Yin_tb <= '1';
						WHEN st =>
							selGrb_tb <= '1'; BAout_tb <= '1'; Yin_tb <= '1';
						WHEN addi | andi | ori | mul => 
							selGrb_tb <= '1'; Rout_from_control <= '1'; Yin_tb <= '1';
						WHEN br =>
							selGra_tb <= '1'; Rout_from_control <= '1'; CON_in <= '1' after 3 ns;
						WHEN jr => 
							selGra_tb <= '1'; Rout_from_control <= '1'; PCin <= '1';
						WHEN jal =>
							PCout_tb <= '1'; Rin_from_control <= '1'; selGrb_tb <= '1';   -------------- Using R0 as link register ----------
						WHEN mfHI =>
							HIout <= '1'; Rin_from_control <= '1'; Gra <= '1';
						WHEN mfLO =>
							LOout <= '1'; Rin_from_control <= '1'; Gra <= '1';
						WHEN outIO =>
							IOout <= '1'; Gra <= '1'; Rout_from_control <= '1';
						WHEN inIO =>
							InPortout <= '1'; Gra <= '1'; Rin_from_control <= '1'; 
						WHEN OTHERS =>
					END CASE;
			
			WHEN T4 =>
				registerOut_tb(1) 	<= '0';
				Yin_tb 					<= '0';
				logicALUSelect_tb 	<= "0000001000000";			
				registerOut_tb(2) 	<= '1';
				Zin_tb 					<= '1';
			
			WHEN T5 =>
				registerOut_tb(2) 		<= '0';
				Zin_tb 						<= '0';
			
				registerOut_tb(18) 		<= '1'; 
				registerFileIn_tb(4) 	<= '1';
			When T6 =>
				registerOut_tb(2)			<= '0';
			WHEN T7 =>
				registerOut_tb(2)			<= '0';
		END CASE;
	END PROCESS;
END ARCHITECTURE datapath_tb_arc;	
			