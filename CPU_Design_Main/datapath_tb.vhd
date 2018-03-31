LIBRARY ieee; 
LIBRARY std; 
LIBRARY work; 
USE ieee.std_logic_1164.all; 
USE ieee.std_logic_textio.all; 
USE ieee.std_logic_unsigned.all; 
USE std.textio.all; 
USE work.proccesor_pack.all;
 
ENTITY datapath_tb IS
END;

ARCHITECTURE datapath_tb_arc OF datapath_tb IS
	SIGNAL registerOut_tb : STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL HIin_tb  :  STD_LOGIC;
	SIGNAL IR_to_control_tb : STD_LOGIC_VECTOR (31 downto 0);
	SIGNAL rotate_left_cs_tb   :  STD_LOGIC; --didnt find
	SIGNAL Yin_tb : STD_LOGIC;
	SIGNAL LOin_tb : STD_LOGIC;
	SIGNAL IncPC_tb : STD_LOGIC;
	SIGNAL memoryData_to_datapath_tb   :  std_logic_vector (31 downto 0); --didn't find
	SIGNAL BAout_tb   :  STD_LOGIC;
	--PCout  registerOut_tb(20)
	--MDRout registerOut_tb(21)
	SIGNAL encoderControlBus_tb : STD_LOGIC_VECTOR(4 downto 0); -- shiftValue_to_control
	SIGNAL sub_cs   :  STD_LOGIC; --didn't find
	SIGNAL IOout_tb   :  STD_LOGIC; --didn't find
	SIGNAL div_cs_tb   :  STD_LOGIC; --didn't find
	SIGNAL Clock_tb	: STD_LOGIC;
	--InPortout registerOut_tb(22)
	SIGNAL MARin_tb : STD_LOGIC;
	SIGNAL mult_cs_tb : STD_LOGIC;
	SIGNAL Zin_tb : STD_LOGIC;
	--HIout  registerOut_tb(16)
	SIGNAL rotate_right_cs_tb   :  STD_LOGIC;  --didn't find
	SIGNAL selGra_tb : STD_LOGIC;
	SIGNAL selGrb_tb : STD_LOGIC;
	SIGNAL selGrc_tb : STD_LOGIC;
	SIGNAL selRin_tb : STD_LOGIC;
	SIGNAL MDRin_tb : STD_LOGIC;
	SIGNAL PCin_tb : STD_LOGIC;
	--Zhighout registerOut_tb(18)
	SIGNAL CON_to_control_tb   :  STD_LOGIC;--didn't find
	--Zlowout registerOut(19)
	SIGNAL Rout_from_control_tb : STD_LOGIC; --didn't find
	SIGNAL or_cs_tb   :  STD_LOGIC; --didn't find
	SIGNAL add_cs_tb   :  STD_LOGIC; --didn't find
	SIGNAL memoryData_to_computerSystem_tb   :  std_logic_vector (31 downto 0);  --didn't find
	SIGNAL IRin_tb : STD_LOGIC;
	SIGNAL clr_tb   :  STD_LOGIC;
	--LOout registerOut_tb(17)
	SIGNAL IO_to_inPort_tb   :  std_logic_vector (31 downto 0); --didn't find
	SIGNAL shift_left_cs_tb   :  STD_LOGIC; --didn't find
	SIGNAL outPort_to_IO_tb   :  std_logic_vector (31 downto 0); --didn't find
	SIGNAL CON_in_tb : STD_LOGIC; --didn't find
	SIGNAL and_cs_tb : STD_LOGIC;--didn't find
	SIGNAL negate_cs_tb : STD_LOGIC;--didn't find
	SIGNAL shift_right_arithmetic_cs_tb : STD_LOGIC;--didn't find
	SIGNAL busLine_tb : STD_LOGIC_VECTOR(31 downto 0);--didn't find
	SIGNAL shift_right_logical_cs_tb : STD_LOGIC;--didn't find
	--Cout  registerOut_tb(23)
	SIGNAL not_cs_tb   :  STD_LOGIC; --didn't find
	SIGNAL IOin_tb   :  STD_LOGIC; --didn't find
	SIGNAL read_notWrite_tb   :  STD_LOGIC; --didn't find
	SIGNAL ram_complete_to_control_tb : STD_LOGIC;--didn't find
	

COMPONENT datapath is
	PORT(
	  registerOut : inout std_logic_vector(31 downto 0); --HIout, LOout, Zhighout, Zlowout, MDRout, HIout, LOout, Cout
	  HIin  : in STD_LOGIC; 
      IR_to_control  : out std_logic_vector (31 downto 0); 
      rotate_left_cs  : in STD_LOGIC; 
      Yin  : in STD_LOGIC ; 
      LOin  : in STD_LOGIC ; 
      IncPC  : in STD_LOGIC ; 
      memoryData_to_datapath  : inout std_logic_vector (31 downto 0); 
      selBAout  : in STD_LOGIC ; --selBAout_tb
      --PCout  registerOut_tb(20) 
      --MDRout registerOut_tb(21)
      encoderControlBus  : out std_logic_vector (4 downto 0);
	  
      logicALUSelect  : in STD_LOGIC_VECTOR(13 downto 0) ; --sub_cs
	  
      IOout  : in STD_LOGIC ; 
      div_cs  : in STD_LOGIC ; 
      clock  : in STD_LOGIC ; 
     -- InPortout registerOut(22)
      MARin  : in STD_LOGIC ; 
      mult_cs  : in STD_LOGIC ; 
      Zin  : in STD_LOGIC ; 
     -- HIout registerOut_tb(16)
      rotate_right_cs  : in STD_LOGIC ; 
      selGra  : in STD_LOGIC ; 
      selGrb  : in STD_LOGIC ; 
      selGrc  : in STD_LOGIC ; 
      Rin_from_control  : in STD_LOGIC ; 
      MDRin  : in STD_LOGIC ; 
      PCin  : in STD_LOGIC ; 
      --Zhighout  registerOut_tb(18)
      CON_to_control  : out STD_LOGIC ; 
      --Zlowout  registerOut_tb(19)
      Rout_from_control  : in STD_LOGIC ; 
      OR_cs  : in STD_LOGIC ; 
      ADD_cs  : in STD_LOGIC ; 
      memoryData_to_computerSystem  : inout std_logic_vector (31 downto 0) ; 
      IRin  : in STD_LOGIC ; 
      clr  : in STD_LOGIC ; 
     -- LOout  registerOut_tb(17)
      IO_to_inPort  : in std_logic_vector (31 downto 0) ; 
      shift_left_cs  : in STD_LOGIC ; 
      outPort_to_IO  : out std_logic_vector (31 downto 0) ; 
      CON_in  : in STD_LOGIC ; 
      and_cs  : in STD_LOGIC ; 
      negate_cs  : in STD_LOGIC ; 
      shift_right_arithmetic_cs  : in STD_LOGIC ; 
      BusMuxOut  : inout std_logic_vector (31 downto 0) ; 
      shift_right_logical_cs  : in STD_LOGIC ; 
     -- Cout registerOut_tb(23)
      not_cs  : in STD_LOGIC ; 
      IOin  : in STD_LOGIC ; 
      read_notWrite  : in STD_LOGIC; 
      ram_complete_to_control : inout STD_LOGIC	
	);
END COMPONENT datapath;

	TYPE State IS(default, T0, T1, T2, T3, T4, T5, T6, T7, T8);
	TYPE opCode	IS (ld, ldi, st, addi, andi, ori, br, jr, jal, mul, mfHI, mfLO, inIO, outIO);
	SIGNAL Present_state:	State := default;
	SIGNAL Present_instruction: opCode := ld;


BEGIN
	DUT0 : datapath	PORT MAP (
	  HIin   => HIin_tb,
      IR_to_control   => IR_to_control_tb, --not used
      rotate_left_cs   => rotate_left_cs_tb,
      Yin   => Yin_tb,
      LOin   => LOin_tb,
      IncPC   => IncPC_tb,
      memoryData_to_datapath   => memoryData_to_datapath_tb,
      selBAout   => BAout_tb,
      registerOut(20) => registerOut_tb(20), --PCout
      registerOut(21) => registerOut_tb(21), --MDRout
      encoderControlBus   => encoderControlBus_tb, --shiftValue_to_control
	  logicALUSelect(1) => sub_cs_tb,
      IOout   => IOout_tb,
      logicALUSelect(3)  => div_cs_tb,
      clock   => clock_tb,
      registerOut(22) => registerOut_tb(22), --InPortout
	  MARin   => MARin_tb,
      logicALUSelect(2)   => mult_cs_tb,
      Zin   => Zin_tb,
      registerOut(16) => registerOut_tb(16), --HIout
      logicALUSelect(7)   => rotate_right_cs_tb,
      selGra   => selGra_tb, --Gra
      selGrb   => selGrb_tb, --Grb
      selGrc   => selGrc_tb,--Grc
	  selRin   => Rin_from_control_tb,
	  MDRin   => MDRin_tb,
      PCin   => PCin_tb,
      registerOut(18)   => registerOut_tb(18), --Zhighout
      CON_to_control   => CON_to_control_tb,
      registerOut(19)   => registerOut_tb(19), --Zlowout
      selRout   => Rout_from_control_tb,
      logicALUSelect(10)   => OR_cs_tb,
      logicALUSelect(0)   => ADD_cs_tb,
	  busMDRin   => memoryData_to_computerSystem_tb,
	  IRin   => IRin_tb,
      clr   => reset_tb,
      registerOut(17)  => registerOut_tb(17) , -- LOout
	  IO_to_inPort   => IO_to_inPort_tb,
	  logicALUSelect(4)  => shift_left_cs_tb,
	  outPort_to_IO   => outPort_to_IO_tb,
	  CON_in   => CON_in_tb,
      logicALUSelect(9)   => and_cs_tb,
      logicALUSelect(11)   => negate_cs_tb,
      logicALUSelect(6)   => shift_right_arithmetic_cs_tb,
      BusMuxOut   => busLine_tb,
      logicALUSelect(5)   => shift_right_logical_cs_tb,
      registerOut(23)   => registerOut_tb(23), --Cout
	  logicALUSelect(13) => not_cs_tb,
      IOin   => IOin_tb,
      read_notWrite   => read_notWrite_tb,
	  ram_complete_to_control => ram_complete_to_control_tb
		);
	
	Clock_process: PROCESS is
	BEGIN
		Clock_tb<= '1', '0' after 10 ns;
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
					IF (ram_complete_to_control = '1') then
						Present_state <= T1;
					end if;
				WHEN T1 =>
					IF (ram_complete_to_control = '1') then
							Present_state <= T2;
					end if;
				WHEN T2 =>
					IF (ram_complete_to_control = '1') then
						Present_state <= T3;
					end if;
				WHEN T3 =>
					IF (ram_complete_to_control = '1') then
						Present_state <= T4;
					end if;
				WHEN T4 =>
					IF (ram_complete_to_control = '1') then
						Present_state <= T5;
					end if;
				WHEN T5 =>
					IF (ram_complete_to_control = '1') then
						Present_state <= T6;
					end if;
				WHEN T6 =>
					IF (ram_complete_to_control = '1') then
						Present_state <= T7;
					end if;
				WHEN T7 =>
					IF (ram_complete_to_control = '1') then
						Present_state <= T8;
					end if;
				WHEN T8 =>
					IF (ram_complete_to_control = '1') then
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
			 IOin_tb <= '0';
			 selGrc_tb <= '0';
			--start system
			clr_tb <= '0', '1' after 15 ns;
	
	WHEN T0 =>
				--turn on signals
				registerOut_tb(20) <= '1';-- PCout
				MARin_tb <= '1';
				Zin_tb 	 <= '1';
				IncPC_tb <= '1';
	WHEN T1 =>
				--turn off signals
				registerOut_tb(20) <= '0'; -- PCout
				MARin_tb <= '0';
				Zin_tb 	<= '0';
				IncPC_tb <= '0';
				
				--turn on signals
				registerOut_tb(19) 	<= '1'; --zlowOUT
				PCin_tb    				<= '1';
				Read_tb   				<= '1';
				MDRin_tb 				<= '1';
	WHEN T2 =>
				--turn off signals
				registerOut_tb(19) 	<= '0'; --zlowOUT
				PCin_tb    				<= '0';
				Read_tb   				<= '0';
				MDRin_tb 				<= '0';
			
				--turn on signals
				registerOut_tb(21) 	<= '1'; -- MDRout
				IRin_tb 	<= '1';
	WHEN T3 =>
				--turn off signals
				registerOut_tb(21) 	<= '0'; -- MDRout
				IRin_tb 	<= '0';
				
				--turn on signals
				CASE Present_instruction IS
						WHEN ldi | ld =>
							selGrb_tb <= '1'; BAout_tb <= '1'; Yin_tb <= '1';
						WHEN st =>
							selGrb_tb <= '1'; BAout_tb <= '1'; Yin_tb <= '1';
						WHEN addi | andi | ori | mul => 
							selGrb_tb <= '1'; Rout_from_control_tb <= '1'; Yin_tb <= '1';
						WHEN br =>
							selGra_tb <= '1'; Rout_from_control_tb <= '1'; CON_in_tb <= '1' after 3 ns;
						WHEN jr => 
							selGra_tb <= '1'; Rout_from_control_tb <= '1'; PCin_tb <= '1';
						WHEN jal =>
							registerOut_tb(20) <= '1'; Rin_from_control_tb <= '1'; selGrb_tb <= '1';   -------------- Using R0 as link register ----------
						WHEN mfHI =>
							registerOut_tb(16) <= '1'; Rin_from_control_tb <= '1'; selGra_tb <= '1';
						WHEN mfLO =>
							registerOut_tb(17) <= '1'; Rin_from_control_tb <= '1'; selGra_tb <= '1';
						WHEN outIO =>
							IOout_tb <= '1'; selGra_tb <= '1'; Rout_from_control_tb <= '1';
						WHEN inIO =>
							registerOut_tb(22) <= '1'; selGra_tb <= '1'; Rin_from_control_tb <= '1'; 
						WHEN OTHERS =>
					END CASE;
			
	WHEN T4 =>
			CASE Present_instruction IS
					WHEN ldi | ld =>
						selGrb_tb <= '0'; BAout_tb <= '0'; Yin_tb <= '0';
						registerOut_tb(23) <= '1'; ADD_cs_tb <= '1'; Zin_tb <= '1';
					WHEN st => 
						selGrb_tb <= '0'; BAout_tb <= '0'; Yin_tb <= '0';
						registerOut_tb(23) <= '1'; ADD_cs_tb <= '1'; Zin_tb <= '1';
					WHEN addi => 
						selGrb_tb <= '0'; Rout_from_control_tb <= '0'; Yin_tb <= '0';
						registerOut_tb(23) <= '1'; ADD_cs_tb <= '1'; Zin_tb <= '1';
					WHEN ori => 
						selGrb_tb <= '0'; Rout_from_control_tb <= '0'; Yin_tb <= '0';
						registerOut_tb(23) <= '1'; OR_cs_tb <= '1'; Zin_tb <= '1';
					WHEN andi => 
						selGrb_tb <= '0'; Rout_from_control_tb <= '0'; Yin_tb <= '0';
						registerOut_tb(23) <= '1'; AND_cs_tb <= '1'; Zin_tb <= '1';
					WHEN mul =>
						selGrb_tb <= '0'; Yin_tb <= '0';
						selGra_tb <= '1'; mult_cs_tb <= '1'; Zin_tb <= '1';
					WHEN br =>
						selGra_tb <= '0'; Rout_from_control_tb <= '0'; CON_in_tb <= '0';
						registerOut_tb(20) <= '1'; Yin_tb <= '1';
					WHEN jr => --just reset signals
						selGra_tb <= '0'; Rout_from_control_tb <= '0'; PCin_tb <= '0';
					WHEN jal =>
						registerOut_tb(20) <= '0'; Rin_from_control_tb <= '0'; selGrb_tb <= '0';
						selGra_tb <= '1'; Rout_from_control_tb <= '1'; PCin_tb <= '1';
					WHEN mfHI | mfLO =>
						registerOut_tb(16) <= '0'; registerOut_tb(17) <= '0'; Rin_from_control_tb <= '0'; selGra_tb <= '0';
					WHEN outIO | inIO =>
						registerOut_tb(22) <= '0'; selGra_tb <= '0'; Rin_from_control_tb <= '0'; IOout_tb <= '0'; Rout_from_control_tb <= '0';
					WHEN OTHERS =>
				END CASE;
	WHEN T5 =>
				CASE Present_instruction IS
						WHEN ldi | ld =>
							registerOut_tb(23) <= '0'; ADD_cs_tb <= '0'; Zin_tb <= '0';
							registerOut_tb(19) <= '1'; MARin_tb <= '1';
						WHEN st => 
							registerOut_tb(23) <= '0'; ADD_cs_tb <= '0'; Zin_tb <= '0';
							registerOut_tb(19) <= '1'; MARin_tb <= '1';
						WHEN addi | ori | andi => 
							registerOut_tb(23) <= '0'; ADD_cs_tb <= '0'; AND_cs_tb <= '0'; OR_cs_tb <= '0'; Zin_tb <= '0';
							registerOut_tb(19) <= '1'; selGra_tb <= '1'; Rin_from_control_tb <= '1';
						WHEN mul =>
							selGra_tb <= '0'; mult_cs_tb <= '0'; Zin_tb <= '0'; Rout_from_control_tb <= '0';
							registerOut_tb(19) <= '1'; LOin_tb <= '1';
						WHEN br =>
							registerOut_tb(20) <= '0'; Yin_tb <= '0';
							registerOut_tb(23) <= '1'; ADD_cs_tb <= '1'; Zin_tb <= '1';
						WHEN jal => --just reset signals
							selGra_tb <= '0'; Rout_from_control_tb <= '0'; PCin_tb <= '0';
						WHEN inIO =>
							selGra_tb <= '0'; Rin_from_control_tb <= '0';
						WHEN OTHERS =>
					END CASE;
	WHEN T6 =>
				CASE Present_instruction IS
						WHEN ldi | ld =>
							registerOut_tb(19) <= '0'; MARin_tb <= '0';
							read_notWrite_tb <= '1'; MDRin_tb <= '1';
						WHEN st => 
							registerOut_tb(19) <= '0'; MARin_tb<= '0';
							MDRin_tb <= '1'; selGra_tb <= '1'; BAout_tb <= '1'; read_notWrite_tb <= '0';
						WHEN addi | andi | ori =>  --do nothing but reset values
							registerOut_tb(19) <= '0'; selGra_tb <= '0'; Rin_from_control_tb <= '0';
						WHEN mul =>
							registerOut_tb(19) <= '0'; LOin_tb <= '0';
							registerOut_tb(18) <= '1'; HIin_tb <= '1';
						WHEN br =>
							registerOut_tb(23) <= '0'; ADD_cs_tb <= '0'; Zin_tb <= '0';
							registerOut_tb(19) <= '1';
							if (CON_to_control_tb = '1') THEN
								PCin_tb <= '1';
							end if;
						WHEN OTHERS =>
				END CASE;
	WHEN T7 =>
				CASE Present_instruction IS
						WHEN ldi | ld => 
							MDRin_tb <= '0';
							registerOut_tb(21) <= '1'; selGra_tb <= '1'; Rin_from_control_tb <= '1';
						WHEN st => --read_notWrite is reset in the final stage
							MDRin_tb <= '0'; selGra_tb <= '0'; BAout_tb <= '0';
						WHEN mul => --just reseting signals
							registerOut_tb(18) <= '0'; HIin_tb <= '0';
						WHEN br =>
							registerOut_tb(19) <= '0'; PCin_tb <= '0';
						WHEN OTHERS =>
				END CASE;
	WHEN T8 =>
				CASE Present_instruction IS
						WHEN ldi | ld =>
							registerOut_tb(21) <= '0'; selGra_tb <= '0'; Rin_from_control_tb <= '0';
						WHEN st => 
							read_notWrite <= '1';
						WHEN OTHERS =>
				END CASE;
			WHEN OTHERS =>
		END CASE;
	END PROCESS;
END ARCHITECTURE datapath_tb_arc;	
				
				