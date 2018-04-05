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
--	SIGNAL registerOut_tb : STD_LOGIC_VECTOR(31 downto 0);
	signal regOut_tb : std_logic_vector(15 downto 0);
	SIGNAL HIin_tb  :  STD_LOGIC;
	--SIGNAL IR_to_control_tb : STD_LOGIC_VECTOR (31 downto 0);
	SIGNAL rotate_left_cs_tb   :  STD_LOGIC;
	SIGNAL Yin_tb : STD_LOGIC;
	SIGNAL LOin_tb : STD_LOGIC;
	SIGNAL IncPC_tb : STD_LOGIC;
--	SIGNAL memoryData_to_datapath_tb   :  std_logic_vector (31 downto 0); --didn't find
	SIGNAL BAout_tb   :  STD_LOGIC;
	SIGNAL PCout_tb : STD_LOGIC;
	SIGNAL MDRout_tb : STD_LOGIC;-- registerOut_tb(21)
--	SIGNAL encoderControlBus_tb : STD_LOGIC_VECTOR(4 downto 0); -- shiftValue_to_control
--	SIGNAL sub_cs_tb   :  STD_LOGIC;
	SIGNAL IOout_tb   :  STD_LOGIC;
	SIGNAL div_cs_tb   :  STD_LOGIC;
	SIGNAL Clock_tb	: STD_LOGIC;
	SIGNAL InPortout_tb : STD_LOGIC;-- registerOut_tb(22)
	SIGNAL MARin_tb : STD_LOGIC;
	SIGNAL mult_cs_tb : STD_LOGIC;
	SIGNAL Zin_tb : STD_LOGIC;
	SIGNAL HIout_tb : STD_LOGIC;-- registerOut_tb(16)
	SIGNAL rotate_right_cs_tb   :  STD_LOGIC;
	SIGNAL selGra_tb : STD_LOGIC;
	SIGNAL selGrb_tb : STD_LOGIC;
	SIGNAL selGrc_tb : STD_LOGIC;
	SIGNAL selRin_tb : STD_LOGIC;
	SIGNAL MDRin_tb : STD_LOGIC;
	SIGNAL PCin_tb : STD_LOGIC;
	SIGNAL Zhighout_tb : STD_LOGIC; --registerOut_tb(18)
	SIGNAL CON_to_control_tb   :  STD_LOGIC;
	SIGNAL Zlowout_tb : STD_LOGIC;
	SIGNAL Rout_from_control_tb : STD_LOGIC;
	--added in the following		
--	signal PCout_tb : std_logic;
	signal sub_cs_tb	: std_logic;
	signal Rin_from_control_tb : std_logic;
	signal selRout_tb : std_logic;
	--
	signal readChannel_tb : std_logic;
	SIGNAL or_cs_tb   :  STD_LOGIC;
	SIGNAL add_cs_tb   :  STD_LOGIC;
--	SIGNAL memoryData_to_computerSystem_tb   :  std_logic_vector (31 downto 0);
	SIGNAL IRin_tb : STD_LOGIC;
	SIGNAL clr_tb   :  STD_LOGIC;
	SIGNAL LOout_tb : STD_LOGIC; -- registerOut_tb(17)
	SIGNAL IO_to_inPort_tb   :  std_logic_vector (31 downto 0);
	SIGNAL shift_left_cs_tb   :  STD_LOGIC;
	SIGNAL outPort_to_IO_tb   :  std_logic_vector (31 downto 0);
	SIGNAL CON_in_tb : STD_LOGIC;
	SIGNAL and_cs_tb : STD_LOGIC;
	SIGNAL negate_cs_tb : STD_LOGIC;
	SIGNAL shift_right_arithmetic_cs_tb : STD_LOGIC;
	SIGNAL busLine_tb : STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL shift_right_logical_cs_tb : STD_LOGIC;
	SIGNAL Cout_tb : STD_LOGIC;
	SIGNAL not_cs_tb   :  STD_LOGIC;
	SIGNAL IOin_tb   :  STD_LOGIC;
	SIGNAL read_notWrite_tb   :  STD_LOGIC;
	SIGNAL ram_complete_to_control_tb : STD_LOGIC;
COMPONENT datapath is
	PORT(
  	  Cout, InPortout, MDRout, PCout, Zlowout, Zhighout, Loout, HIout: in std_logic;
--	  registerOut : inout std_logic_vector(31 downto 0); --HIout, LOout, Zhighout, Zlowout, MDRout, HIout, LOout, Cout
	  regOut		: Inout std_logic_vector(15 downto 0);
	  HIin  : in STD_LOGIC; 
    --  IR_to_control  : out std_logic_vector (31 downto 0); 
      --rotate_left_cs  logicALUSelect(8) 
      Yin  : in STD_LOGIC ; 
      LOin  : in STD_LOGIC ; 
      --IncPC   logicALUSelect(12) 
   --   memoryData_to_datapath  : inout std_logic_vector (31 downto 0); 
      selBAout  : in STD_LOGIC ;
      --PCout  registerOut_tb(20) 
      --MDRout registerOut_tb(21)
 --     encoderControlBus  : out std_logic_vector (4 downto 0);
      logicALUSelect  : in STD_LOGIC_VECTOR(13 downto 0); 
      IOout  : in STD_LOGIC ; 
      --div_cs logicALUSelect(3)
      clock  : in STD_LOGIC ; 
     -- InPortout registerOut(22)
      MARin  : in STD_LOGIC ; 
      --mult_cs logicALUSelect(2)
      Zin  : in STD_LOGIC ; 
     -- HIout registerOut_tb(16)
      --rotate_right_cs logicALUSelect(7)
      selGra  : in STD_LOGIC ; 
      selGrb  : in STD_LOGIC ; 
      selGrc  : in STD_LOGIC ; 
      selRin  : in STD_LOGIC ;
		selRout	: in std_logic;
      MDRin  : in STD_LOGIC ; 
      PCin  : in STD_LOGIC ; 
      --Zhighout  registerOut_tb(18)
      CON_to_control  : out STD_LOGIC ; 
      --Zlowout  registerOut_tb(19)
      --selRin  : in STD_LOGIC ; --Rout_from_control
      --OR_cs logicALUSelect(10)
      --ADD_cs logicALUSelect(0)
      --memoryData_to_computerSystem  : inout std_logic_vector (31 downto 0) ; 
      IRin  : in STD_LOGIC ; 
      clr  : in STD_LOGIC ; 
     -- LOout  registerOut_tb(17)
      IO_to_inPort  : in std_logic_vector (31 downto 0) ; 
      --shift_left_cs logicALUSelect(4)
      outPort_to_IO  : out std_logic_vector (31 downto 0) ; 
      CON_in  : in STD_LOGIC ; 
      --and_cs  logicALUSelect(9) 
      --negate_cs logicALUSelect(11) 
      --shift_right_arithmetic_cs logicALUSelect(6)
      BusMuxOut  : inout std_logic_vector (31 downto 0) ; 
      --shift_right_logical_cs logicALUSelect(5)  
      -- Cout registerOut_tb(23)
      --not_cs logicALUSelect(13)
      IOin  : in STD_LOGIC ; 							
		read_notWrite		:		IN std_logic;	
      ram_complete_to_control : inout STD_LOGIC	
	);
END COMPONENT datapath;

	TYPE State IS(default, T0, T1, T2, T3, T4, T5, T6, T7, T8);
	TYPE opCode	IS (ld, ldi, st, addi, andi, ori, br, jr, jal, mul, mfHI, mfLO, inIO, outIO);
	SIGNAL Present_state:	State := default;
	SIGNAL Present_instruction: opCode := ld;
	signal alu : std_logic_vector(13 downto 0);
	signal reg : std_logic_vector(31 downto 0);
BEGIN

--Important Signals that allow registerOut and logicALUSelect to map onto this file. Uses concatenation
alu <= not_cs_tb & IncPC_tb & negate_cs_tb & OR_cs_tb & and_cs_tb & rotate_left_cs_tb & rotate_right_cs_tb & shift_right_arithmetic_cs_tb 
		& shift_right_logical_cs_tb & shift_left_cs_tb & div_cs_tb & mult_cs_tb & sub_cs_tb & ADD_cs_tb;
--registerOut_tb <= x"00" & Cout_tb & InPortout_tb & MDRout_tb & PCout_tb & Zlowout_tb & Zhighout_tb & LOout_tb & HIout_tb & regOut_tb(15 downto 0);

	DUT0 : datapath	PORT MAP (
	  regOut => regOut_tb,
	  HIin   => HIin_tb,
  --    IR_to_control   => IR_to_control_tb, --not used
    --  logicALUSelect(8)   => rotate_left_cs_tb,
      Yin   => Yin_tb,
      LOin   => LOin_tb,
		CON_in => CON_in_tb,
    --  logicALUSelect(12)   => IncPC_tb,
  --    memoryData_to_datapath   => memoryData_to_datapath_tb,
      selBAout   => BAout_tb,
      PCout => PCout_tb,
      MDRout => MDRout_tb,
 --     encoderControlBus   => encoderControlBus_tb, --shiftValue_to_control
		logicALUSelect => alu,
--		registerOut => registerOut_tb,
	--   logicALUSelect(1) => sub_cs_tb,
      IOout   => IOout_tb,
		outPort_to_IO =>outPort_to_IO_tb,
    --  logicALUSelect(3)  => div_cs_tb,
      clock   => clock_tb,
		InPortout => InPortout_tb, 
	  MARin   => MARin_tb,
   --   logicALUSelect(2)   => mult_cs_tb,
      Zin   => Zin_tb,
      HIout => HIout_tb, 
     -- logicALUSelect(7)   => rotate_right_cs_tb,
      selGra   => selGra_tb,
      selGrb   => selGrb_tb,
      selGrc   => selGrc_tb,
	  selRin   => Rin_from_control_tb,
	  MDRin   => MDRin_tb,
      PCin   => PCin_tb,
      Zhighout   => Zhighout_tb,
      CON_to_control   => CON_to_control_tb,
		Zlowout => Zlowout_tb,
      selRout   => Rout_from_control_tb,
  --    logicALUSelect(10)   => OR_cs_tb,
   --   logicALUSelect(0)   => ADD_cs_tb,
--	  busMDRin   => memoryData_to_computerSystem_tb,
	  IRin   => IRin_tb,
      clr   => clr_tb,
		Loout  => LOout_tb ,
	  IO_to_inPort   => IO_to_inPort_tb,
	--  logicALUSelect(4)  => shift_left_cs_tb,
--	  readChannel => readChannel_tb,		
    --  logicALUSelect(9)   => and_cs_tb,
    --  logicALUSelect(11)   => negate_cs_tb,
    --  logicALUSelect(6)   => shift_right_arithmetic_cs_tb,
      BusMuxOut   => busLine_tb,
   --   logicALUSelect(5)   => shift_right_logical_cs_tb,
		Cout  => Cout_tb,
	--  logicALUSelect(13) => not_cs_tb,
      IOin   => IOin_tb,
      read_notWrite   => read_notWrite_tb,
	  ram_complete_to_control => ram_complete_to_control_tb
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
					IF (ram_complete_to_control_tb = '1') then
						Present_state <= T1;
					end if;
				WHEN T1 =>
					IF (ram_complete_to_control_tb = '1') then
							Present_state <= T2;
					end if;
				WHEN T2 =>
					IF (ram_complete_to_control_tb = '1') then
						Present_state <= T3;
					end if;
				WHEN T3 =>
					IF (ram_complete_to_control_tb = '1') then
						Present_state <= T4;
					end if;
				WHEN T4 =>
					IF (ram_complete_to_control_tb = '1') then
						Present_state <= T5;
					end if;
				WHEN T5 =>
					IF (ram_complete_to_control_tb = '1') then
						Present_state <= T6;
					end if;
				WHEN T6 =>
					IF (ram_complete_to_control_tb = '1') then
						Present_state <= T7;
					end if;
				WHEN T7 =>
					IF (ram_complete_to_control_tb = '1') then
						Present_state <= T8;
					end if;
				WHEN T8 =>
					IF (ram_complete_to_control_tb = '1') then
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
				Zin_tb 	 <= '1';
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
						selGrb_tb <= '0'; BAout_tb <= '0'; Yin_tb <= '0';selRin_tb <= '0';
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
							Zlowout_tb <= '1'; selGra_tb <= '1'; BAout_tb <= '1'; Rin_from_control_tb <= '1';
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
							Zlowout_tb <= '1'; selGra_tb <= '1'; BAout_tb <= '1'; Rin_from_control_tb <= '1';
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
						MDRin_tb <= '0';
						MDRout_tb <= '1'; selGra_tb <= '1'; Rin_from_control_tb <= '1';
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
						WHEN ldi | ld =>
							MDRout_tb <= '0'; selGra_tb <= '0'; Rin_from_control_tb <= '0';
						WHEN st => 
							read_notWrite_tb <= '1';
						WHEN OTHERS =>
				END CASE;
			WHEN OTHERS =>
		END CASE;
	END PROCESS;
END ARCHITECTURE datapath_tb_arc;	
				
				