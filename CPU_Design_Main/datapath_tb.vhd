LIBRARY ieee; 
LIBRARY std; 
LIBRARY work; 
USE ieee.std_logic_1164.all; 
USE ieee.std_logic_textio.all; 
USE ieee.std_logic_unsigned.all; 
USE std.textio.all; 
--USE work.proccesor_pack.all;
 
ENTITY datapath_tb IS
END;

ARCHITECTURE datapath_tb_arc OF datapath_tb IS
	TYPE State IS(default, T0, T1, T2, T3, T4, T5, T6, T7, T8);
	TYPE opCode	IS (ld, ldi, st, addi, andi, ori, br, jr, jal, mul, mfHI, mfLO, inIO, outIO);
	SIGNAL Present_state:	State := default;
	SIGNAL Present_instruction: opCode := ld;
	SIGNAL Clock_tb				: STD_LOGIC;
	SIGNAL busLine_tb 			: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL read_notWrite_tb   :  STD_LOGIC;
	signal Rin_from_control_tb : STD_LOGIC;
	SIGNAL Rout_from_control_tb: STD_LOGIC;
	SIGNAL ram_done_cs_tb 		: STD_LOGIC;	
	SIGNAL clr_tb  	 			:  STD_LOGIC;
	SIGNAL IOout_tb   			: STD_LOGIC;
	SIGNAL Cout_tb 				: STD_LOGIC;
	SIGNAL InPortout_tb 			: STD_LOGIC;-- registerOut_tb(22)
	SIGNAL MDRout_tb 				: STD_LOGIC;-- registerOut_tb(21)
	SIGNAL PCout_tb 				: STD_LOGIC;
	SIGNAL Zlowout_tb 			: STD_LOGIC;
	SIGNAL Zhighout_tb 			: STD_LOGIC;
	SIGNAL LOout_tb 				: STD_LOGIC; -- registerOut_tb(17)
	SIGNAL HIout_tb 				: STD_LOGIC;
	SIGNAL regOut_tb 				: std_logic_vector(15 downto 0);
	SIGNAL IOin_tb   				:  STD_LOGIC;
	SIGNAL IO_to_inPort_tb   	:  std_logic_vector (31 downto 0);
	SIGNAL outPort_to_IO_tb    :  std_logic_vector (31 downto 0);
	SIGNAL MDRin_tb 				: STD_LOGIC;
	SIGNAL PCin_tb 				: STD_LOGIC;
	SIGNAL IRin_tb 				: STD_LOGIC;
	SIGNAL LOin_tb 				: STD_LOGIC;
	SIGNAL HIin_tb  				: STD_LOGIC;
	SIGNAL MARin_tb 				: STD_LOGIC;
	SIGNAL Yin_tb 					: STD_LOGIC;
	SIGNAL Zin_tb 					: STD_LOGIC;
	signal alu : std_logic_vector(13 downto 0);		
	SIGNAL add_cs_tb  			: STD_LOGIC;	
	signal sub_cs_tb				: STD_LOGIC;
	SIGNAL mult_cs_tb 			: STD_LOGIC;	
	SIGNAL div_cs_tb  			: STD_LOGIC;
	SIGNAL shift_left_cs_tb    :  STD_LOGIC;
	SIGNAL shift_right_logical_cs_tb    : STD_LOGIC;
	SIGNAL shift_right_arithmetic_cs_tb : STD_LOGIC;
	SIGNAL rotate_left_cs_tb   : STD_LOGIC;
	SIGNAL rotate_right_cs_tb  : STD_LOGIC;
	SIGNAL and_cs_tb 				: STD_LOGIC;
	SIGNAL or_cs_tb   			: STD_LOGIC;
	SIGNAL negate_cs_tb 			: STD_LOGIC;	
	SIGNAL IncPC_tb 				: STD_LOGIC;
	SIGNAL not_cs_tb   			: STD_LOGIC;
	SIGNAL BAout_tb   			: STD_LOGIC;
	SIGNAL selGra_tb 				: STD_LOGIC;
	SIGNAL selGrb_tb 				: STD_LOGIC;
	SIGNAL selGrc_tb 				: STD_LOGIC;
	SIGNAL selRin_tb 				: STD_LOGIC;
	signal selRout_tb 			: STD_LOGIC;	
	SIGNAL CON_in_tb : STD_LOGIC;
	SIGNAL CON_to_control_tb   : STD_LOGIC;
	signal readChannel_tb 		: STD_LOGIC;


COMPONENT datapath is
	PORT(
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
END COMPONENT datapath;
BEGIN

--Important Signals that allow registerOut and logicALUSelect to map onto this file. Uses concatenation
alu <= not_cs_tb & IncPC_tb & negate_cs_tb & OR_cs_tb & and_cs_tb & rotate_left_cs_tb & rotate_right_cs_tb & shift_right_arithmetic_cs_tb 
		& shift_right_logical_cs_tb & shift_left_cs_tb & div_cs_tb & mult_cs_tb & sub_cs_tb & ADD_cs_tb;
--registerOut_tb <= x"00" & Cout_tb & InPortout_tb & MDRout_tb & PCout_tb & Zlowout_tb & Zhighout_tb & LOout_tb & HIout_tb & regOut_tb(15 downto 0);

	DUT0 : datapath	PORT MAP (
		clock   => clock_tb,
		clr   => clr_tb,
		BusMuxOut   => busLine_tb,
  	   IO_to_inPort   => IO_to_inPort_tb,
	   MARin   => MARin_tb,
	   MDRin   => MDRin_tb,
		regOut => regOut_tb,
      IOin   => IOin_tb,
      IOout   => IOout_tb,	  
      Zin   => Zin_tb,
      Yin   => Yin_tb,
      PCin   => PCin_tb,
	   IRin   => IRin_tb,		
		HIin   => HIin_tb,		
      LOin   => LOin_tb,
		Cout  => Cout_tb,		
		InPortout => InPortout_tb,
      MDRout => MDRout_tb,
      PCout => PCout_tb,
		Zlowout => Zlowout_tb,
      Zhighout   => Zhighout_tb,
		Loout  => LOout_tb ,
      HIout => HIout_tb, 

      selGra   => selGra_tb,
      selGrb   => selGrb_tb,
      selGrc   => selGrc_tb,
	   selRin   => Rin_from_control_tb,
      selRout   => Rout_from_control_tb,
      selBAout   => BAout_tb,	
		CON_in => CON_in_tb,
	   ram_done_cs => ram_done_cs_tb,
      read_notWrite   => read_notWrite_tb,
		logicALUSelect => alu,
		outPort_to_IO =>outPort_to_IO_tb,
      CON_to_control   => CON_to_control_tb

		
		);
	
	Clock_process: PROCESS is
	BEGIN
		Clock_tb <= '1', '0' after 10 ns;
		Wait for 20 ns;
	END PROCESS Clock_process;
	
	PROCESS(Clock_tb)
	VARIABLE counter : integer range 0 to 15 := 0;
	BEGIN
		IF(rising_edge(Clock_tb))THEN
			CASE Present_state IS
				WHEN Default   =>
					counter := counter + 1;
					if(counter = 2)then
						counter := 0;
						Present_state <= T0;
						Present_instruction <= ldi;
					END IF;
				WHEN T0 =>
					IF (ram_done_cs_tb = '1') then
						Present_state <= T1;
					end if;
				WHEN T1 =>
					IF (ram_done_cs_tb = '1') then
							Present_state <= T2;
					end if;
				WHEN T2 =>
					IF (ram_done_cs_tb = '1') then
						Present_state <= T3;
					end if;
				WHEN T3 =>
					IF (ram_done_cs_tb = '1') then
						Present_state <= T4;
					end if;
				WHEN T4 =>
					IF (ram_done_cs_tb = '1') then
						Present_state <= T5;
					end if;
				WHEN T5 =>
					IF (ram_done_cs_tb = '1') then
						Present_state <= T6;
					end if;
				WHEN T6 =>
					IF (ram_done_cs_tb = '1') then
						Present_state <= T7;
					end if;
				WHEN T7 =>
					IF (ram_done_cs_tb = '1') then
						Present_state <= T8;
					end if;
				WHEN T8 =>
					IF (ram_done_cs_tb = '1') then
						Present_state <= T0;
						CASE Present_instruction IS
							WHEN	ldi =>
								Present_instruction <= ld;
							WHEN	ld =>
								Present_instruction <= addi;
							WHEN	addi =>
								Present_instruction <= ori;
							WHEN	ori =>
								Present_instruction <= andi;
							WHEN	andi =>
								Present_instruction <= br;
							WHEN	br =>
								counter := counter + 1;
								if (counter = 4) then
									Present_instruction <= jr;
									counter := 0;
								end if;
							WHEN jr =>
								Present_instruction <= jal;
							WHEN jal =>
								Present_instruction <= mul;
							WHEN mul =>
								Present_instruction <= mfHI;
							WHEN mfHI =>
								Present_instruction <= mfLO;
							WHEN mfLO =>
								Present_instruction <= outIO;
							WHEN outIO =>
								Present_instruction <= inIO;
							WHEN inIO =>
								Present_instruction <= st;
							WHEN st =>
								counter := counter + 1;
								if (counter = 9) then
									Present_instruction <= ldi;
									counter := 0;
								end if;
							WHEN others =>
								Present_instruction <= ldi;
							END CASE;
						end if;
				WHEN OTHERS =>
					Present_state <= Default;
			END CASE;
		END IF;
	END PROCESS;
			
	PROCESS (Present_state) -- do the required job in each state
	BEGIN
		CASE Present_state IS -- assert the required signals in each clock cycle
	WHEN Default =>

		MARin_tb <= '0'; Zin_tb <= '0';
		PCin_tb <= '0'; MDRin_tb <= '0'; IRin_tb <= '0'; Yin_tb <= '0';
		IncPC_tb <= '0'; read_notWrite_tb <= '0', '1' after 1 ns; AND_cs_tb <= '0';
		div_cs_tb <= '0'; HIin_tb <= '0'; IOout_tb <= '0'; LOout_tb <= '0'; HIout_tb <= '0'; Zhighout_tb <= '0';		
		shift_left_cs_tb <= '0'; rotate_left_cs_tb <= '0'; mult_cs_tb <= '0'; rotate_right_cs_tb <= '0'; shift_right_arithmetic_cs_tb <= '0';	 
		negate_cs_tb <= '0'; shift_right_logical_cs_tb <= '0'; LOin_tb <= '0'; Cout_tb <= '0'; ADD_cs_tb <= '0'; not_cs_tb <= '0';	
		or_cs_tb <= '0'; sub_cs_tb <= '0'; IOin_tb <= '0'; InPortout_tb <= '0';
		
		PCout_tb <= '0';Zlowout_tb <= '0'; MDRout_tb <= '0';
		Zhighout_tb <= '0'; Zlowout_tb <= '0';
		HIout_tb <= '0';
		selRin_tb <= '0'; selRout_tb <= '0';
		selGra_tb <= '0'; selGrb_tb <= '0'; selGrc_tb <= '0'; Rin_from_control_tb <= '0'; Rout_from_control_tb <= '0'; BAout_tb <= '0';
		CON_in_tb <= '0';
		IO_to_inPort_tb <= x"0000ffff";
		
		--start system
		clr_tb <= '0', '1' after 15 ns;
	
	WHEN T0 =>
				--turn on signals
				PCout_tb <= '1';-- PCout
				MARin_tb <= '1';
				Zin_tb 	<= '1';
				IncPC_tb <= '1';
	WHEN T1 =>
				--turn off signals
				PCout_tb <= '0'; -- PCout
				MARin_tb <= '0';
				Zin_tb 	<= '0';
				IncPC_tb <= '0';
				
				--turn on signals
				Zlowout_tb 	<= '1'; --zlowOUT
				PCin_tb    				<= '1';
				read_notWrite_tb   	<= '1';
				MDRin_tb 				<= '1';
	WHEN T2 =>
				--turn off signals
				Zlowout_tb 	<= '0'; --zlowOUT
				PCin_tb    				<= '0';
				--read_notWrite_tb   	<= '0';
				MDRin_tb 				<= '0';
				--InPortout_tb <= '0';
				--turn on signals
				MDRout_tb 	<= '1'; -- MDRout 
				IRin_tb 	<= '1';
	WHEN T3 =>
				--turn off signals
				MDRout_tb 	<= '0'; -- MDRout
				IRin_tb 	<= '0';
				
				--turn on signals
				CASE Present_instruction IS
						WHEN ld =>
							selGrb_tb <= '1'; BAout_tb <= '1'; Yin_tb <= '1'; selRin_tb <= '1';
						WHEN ldi =>
							selGrb_tb <= '1'; BAout_tb <= '1'; Yin_tb <= '1'; selRin_tb <= '1';
						WHEN st =>
							selGrb_tb <= '1'; BAout_tb <= '1'; Yin_tb <= '1';
						WHEN addi | andi | ori | mul => 
							selGrb_tb <= '1'; Rout_from_control_tb <= '1'; Yin_tb <= '1';
						WHEN br =>
							selGra_tb <= '1'; Rout_from_control_tb <= '1'; CON_in_tb <= '1' after 3 ns;
						WHEN jr => 
							selGra_tb <= '1'; Rout_from_control_tb <= '1'; PCin_tb <= '1';
						WHEN jal =>
							PCout_tb <= '1'; Rin_from_control_tb <= '1'; selGrb_tb <= '1';   -------------- Using R0 as link register ----------
						WHEN mfHI =>
							HIout_tb <= '1'; Rin_from_control_tb <= '1'; selGra_tb <= '1';
						WHEN mfLO =>
							LOout_tb <= '1'; Rin_from_control_tb <= '1'; selGra_tb <= '1';
						WHEN outIO =>
							IOout_tb <= '1'; selGra_tb <= '1'; Rout_from_control_tb <= '1';
						WHEN inIO =>
							InPortout_tb <= '1'; selGra_tb <= '1'; Rin_from_control_tb <= '1'; 
						WHEN OTHERS =>
					END CASE;
			
	WHEN T4 =>
			CASE Present_instruction IS
					WHEN ld =>
						selGrb_tb <= '0'; BAout_tb <= '0'; Yin_tb <= '0'; selRin_tb <= '0';
						Cout_tb <= '1'; ADD_cs_tb <= '1'; Zin_tb <= '1';
					WHEN ldi =>
						selGrb_tb <= '0'; BAout_tb <= '0'; Yin_tb <= '0';selRin_tb <= '0';
						Cout_tb <= '1'; ADD_cs_tb <= '1'; Zin_tb <= '1';						
					WHEN st => 
						selGrb_tb <= '0'; BAout_tb <= '0'; Yin_tb <= '0';
						Cout_tb <= '1'; ADD_cs_tb <= '1'; Zin_tb <= '1';
					WHEN addi => 
						selGrb_tb <= '0'; Rout_from_control_tb <= '0'; Yin_tb <= '0';
						Cout_tb <= '1'; ADD_cs_tb <= '1'; Zin_tb <= '1';
					WHEN ori => 
						selGrb_tb <= '0'; Rout_from_control_tb <= '0'; Yin_tb <= '0';
						Cout_tb <= '1'; OR_cs_tb <= '1'; Zin_tb <= '1';
					WHEN andi => 
						selGrb_tb <= '0'; Rout_from_control_tb <= '0'; Yin_tb <= '0';
						Cout_tb <= '1'; AND_cs_tb <= '1'; Zin_tb <= '1';
					WHEN mul =>
						selGrb_tb <= '0'; Yin_tb <= '0';
						selGra_tb <= '1'; mult_cs_tb <= '1'; Zin_tb <= '1';
					WHEN br =>
						selGra_tb <= '0'; Rout_from_control_tb <= '0'; CON_in_tb <= '0';
						PCout_tb <= '1'; Yin_tb <= '1';
					WHEN jr => --just reset signals
						selGra_tb <= '0'; Rout_from_control_tb <= '0'; PCin_tb <= '0';
					WHEN jal =>
						PCout_tb <= '0'; Rin_from_control_tb <= '0'; selGrb_tb <= '0';
						selGra_tb <= '1'; Rout_from_control_tb <= '1'; PCin_tb <= '1';
					WHEN mfHI | mfLO =>
						HIout_tb <= '0'; LOout_tb <= '0'; Rin_from_control_tb <= '0'; selGra_tb <= '0';
					WHEN outIO | inIO =>
						InPortout_tb <= '0'; selGra_tb <= '0'; Rin_from_control_tb <= '0'; IOout_tb <= '0'; Rout_from_control_tb <= '0';
					WHEN OTHERS =>
				END CASE;
	WHEN T5 =>
				CASE Present_instruction IS
						WHEN ldi =>
							Cout_tb <= '0'; ADD_cs_tb <= '0'; Zin_tb <= '0';
							Zlowout_tb <= '1'; selGra_tb <= '1'; Rin_from_control_tb <= '1';
						when ld =>
							Cout_tb <= '0'; ADD_cs_tb <= '0'; Zin_tb <= '0';
							Zlowout_tb <= '1'; MARin_tb <= '1';							
						WHEN st => 
							Cout_tb <= '0'; ADD_cs_tb <= '0'; Zin_tb <= '0';
							Zlowout_tb <= '1'; MARin_tb <= '1';
						WHEN addi | ori | andi => 
							Cout_tb <= '0'; ADD_cs_tb <= '0'; AND_cs_tb <= '0'; OR_cs_tb <= '0'; Zin_tb <= '0';
							Zlowout_tb <= '1'; selGra_tb <= '1'; Rin_from_control_tb <= '1';
						WHEN mul =>
							selGra_tb <= '0'; mult_cs_tb <= '0'; Zin_tb <= '0'; Rout_from_control_tb <= '0';
							Zlowout_tb <= '1'; LOin_tb <= '1';
						WHEN br =>
							PCout_tb <= '0'; Yin_tb <= '0';
							Cout_tb <= '1'; ADD_cs_tb <= '1'; Zin_tb <= '1';
						WHEN jal => --just reset signals
							selGra_tb <= '0'; Rout_from_control_tb <= '0'; PCin_tb <= '0';
						WHEN inIO =>
							selGra_tb <= '0'; Rin_from_control_tb <= '0';
						WHEN OTHERS =>
					END CASE;
	WHEN T6 =>
				CASE Present_instruction IS
						WHEN ld =>
							Zlowout_tb <= '0'; MARin_tb <= '0';
							read_notWrite_tb <= '1'; MDRin_tb <= '1';
						when ldi =>
							Zlowout_tb <= '0'; selGra_tb <= '0'; BAout_tb <= '0'; Rin_from_control_tb <= '0';
						WHEN st => 
							Zlowout_tb <= '0'; MARin_tb<= '0';
							MDRin_tb <= '1'; selGra_tb <= '1'; BAout_tb <= '1'; read_notWrite_tb <= '0';
						WHEN addi | andi | ori =>  --do nothing but reset values
							Zlowout_tb <= '0'; selGra_tb <= '0'; Rin_from_control_tb <= '0';
						WHEN mul =>
							Zlowout_tb <= '0'; LOin_tb <= '0';
							Zhighout_tb <= '1'; HIin_tb <= '1';
						WHEN br =>
							Cout_tb <= '0'; ADD_cs_tb <= '0'; Zin_tb <= '0';
							Zlowout_tb <= '1';
							if (CON_to_control_tb = '1') THEN
								PCin_tb <= '1';
							end if;
						WHEN OTHERS =>
				END CASE;
	WHEN T7 =>
				CASE Present_instruction IS
						when ldi => 
						WHEN ld => 
							MDRin_tb <= '0';
							MDRout_tb <= '1'; selGra_tb <= '1'; Rin_from_control_tb <= '1';
						WHEN st => --read_notWrite is reset in the final stage
							MDRin_tb <= '0'; selGra_tb <= '0'; BAout_tb <= '0';
						WHEN mul => --just reseting signals
							Zhighout_tb <= '0'; HIin_tb <= '0';
						WHEN br =>
							Zlowout_tb <= '0'; PCin_tb <= '0';
						WHEN OTHERS =>
				END CASE;
	WHEN T8 =>
				CASE Present_instruction IS
						WHEN ld =>
							MDRout_tb <= '0'; selGra_tb <= '0'; Rin_from_control_tb <= '0';
						WHEN st => 
							read_notWrite_tb <= '1';
						WHEN OTHERS =>
				END CASE;
			WHEN OTHERS =>
		END CASE;
	END PROCESS;
END ARCHITECTURE datapath_tb_arc;	
				
				