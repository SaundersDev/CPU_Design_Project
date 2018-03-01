LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY datapath_tb IS
END;

ARCHITECTURE datapath_tb_arc OF datapath_tb IS

SIGNAL	PCout_tb, Zlowout_tb, MDRout_tb 						:	std_logic;
SIGNAL	MARin_tb, Zin_tb, PCin_tb, MDRin_tb, IRin_tb, Yin_tb:	std_logic;
SIGNAL	IncPC_tb, Read_tb, AND_tb								:	std_logic;
SIGNAL	Mdatain_tb, BusMuxOut_tb								:	std_logic_vector(31 downto 0);
SIGNAL	Clock_tb														:	std_logic;
signal 	registerOut_tb 											: std_logic_vector(31 downto 0);
signal 	registerFileIn_tb 										: std_logic_vector(15 downto 0);
signal 	clr_tb														: std_logic;
signal	logicALUSelect_tb											: std_logic_vector(12 downto 0);
signal	R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15,
			HI, LO, IR, BusMuxOut, Z 								: std_logic_vector(31 downto 0);
TYPE	State IS(default, Reg_load1a, Reg_load1b, Reg_load2a, Reg_load2b, Reg_load3a, Reg_load3b, T0, T1, T2, T3, T4, T5);
SIGNAL	Present_state:	State:=default;

COMPONENT datapath is
	PORT(
		Clock											: in std_logic;
		clr 											: in std_logic;
--		conFFLogicInControl 				: in std_logic;
		registerOut	 								: in std_logic_vector(31 downto 0); 
		PCout, Zlowout, MDRout					: in std_logic;
		MARin, Zin, PCin, MDRin, IRin, Yin	: in std_logic;		--Can't be used as Rin
		IncPC, ReadChannel						: in std_logic;
		Mdatain										: in std_logic_vector(31 downto 0);
		registerFileIn 							: in std_logic_vector(15 downto 0);
		logicALUSelect 							: in std_logic_vector(12 downto 0)		
	);
END COMPONENT datapath;
BEGIN

DUT0 : datapath
--port mapping: between the dut and the testbench signals
	PORT MAP (
	PCout 		=>	PCout_tb,
	Zlowout 		=>	Zlowout_tb,
	MDRout		=>	MDRout_tb,
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
	--AND		=>	AND_tb,
	Mdatain 	=>	Mdatain_tb,
	Clock 		=> 	Clock_tb,
	clr			=> clr_tb,
	logicALUSelect => logicALUSelect_tb
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
				WHEN OTHERS =>
			END CASE;
		END IF;
	END PROCESS;
			
	PROCESS (Present_state) -- do the required job in each state
	BEGIN
		CASE Present_state IS -- assert the required signals in each clock cycle
			
			when Default =>
				PCout_tb <= '0'; 	Zlowout_tb <= '0';	MDRout_tb <= '0'; -- initialize the signals
				registerOut_tb(1) 		<= '0'; 
				registerOut_tb(2) 		<= '0'; 
				registerOut_tb(3) 		<= '0'; 
				MARin_tb 				<= '0';
				Zin_tb 					<= '0';
				PCin_tb  				<= '0';
				MDRin_tb 				<= '0';
				IRin_tb 				<= '0';
				Yin_tb 					<= '0';
				registerFileIn_tb(1) 	<= '0';
				registerFileIn_tb(2) 	<= '0';
				registerFileIn_tb(3) 	<= '0';				
				IncPC_tb 				<= '0';
				Read_tb   				<= '0';
				AND_tb 					<= '0';
				logicALUSelect_tb		<= '0';
			WHEN Reg_load1a => 
				Mdatain_tb <= x"00000012";
				Read_tb   <= '0', '1' after 10 ns, '0' after 25 ns;
				MDRin_tb  <= '0', '1' after 10 ns, '0' after 25 ns;
			WHEN Reg_load1b => 
				MDRout_tb <= '1' after 10 ns, '0' after 25 ns;
				registerFileIn_tb(1) <= '1' after 10 ns, '0' after 25 ns;	
				
			WHEN Reg_load2a => 
				Mdatain_tb <= x"00000014";
				Read_tb   <= '1' after 10 ns, '0' after 25 ns;
				MDRin_tb  <= '1' after 10 ns, '0' after 25 ns;
			WHEN Reg_load2b => 
				MDRout_tb <= '1' after 10 ns, '0' after 25 ns;
				registerFileIn_tb(2) <= '1' after 10 ns, '0' after 25 ns;	
			
			WHEN Reg_load3a => 
				Mdatain_tb <= x"00000016";
				Read_tb   <= '1' after 10 ns, '0' after 25 ns;
				MDRin_tb  <= '1' after 10 ns, '0' after 25 ns;
			WHEN Reg_load3b => 
				MDRout_tb <= '1' after 10 ns, '0' after 25 ns;
				registerFileIn_tb(3) <= '1' after 10 ns, '0' after 25 ns;				
			
			
			WHEN T0 =>
				PCout_tb <= '1';
				MARin_tb <= '1';
				IncPC_tb <= '1';
				Zin_tb 	 <= '1';
			
			
			WHEN T1 =>
				Zlowout_tb 				<= '1';
				PCin_tb    				<= '1';
				Read_tb   				<= '1';
				MDRin_tb 				<= '1';
				Mdatain_tb(31 downto 0) <= x"28918000"; -- opcode for and R1, R2, R3
			
			WHEN T2 =>
			 MDRout_tb	<= '1';
			 logicALUSelect_tb <= "0000000000010";
			 IRin_tb 	<= '1';
			
			WHEN T3 =>
			 registerOut_tb(2) 	<= '1';
			 Yin_tb 			<= '1';
			
			WHEN T4 =>
			 registerOut_tb(3) 	<= '1';
			 AND_tb 			<= '1';
			 Zin_tb 			<= '1';
			
			WHEN T5 =>
			 Zlowout_tb 			<= '1'; 
			 registerFileIn_tb(1) 	<= '1';
			
			WHEN OTHERS =>
		END CASE;
	END PROCESS;
END ARCHITECTURE datapath_tb_arc;	
				
				