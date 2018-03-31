--CONFIRMED TO WORK

library ieee;
use ieee.std_logic_1164.all;

library work;

entity memorySubsystem_tb is
end;

architecture behaviour of memorySubsystem_tb is

signal BusMuxOut_tb, BusMuxInRAM_tb, BusMuxInMDR_tb, Mdatain_tb		: std_logic_vector(31 downto 0);
signal MDRin_tb, MARin_tb, clock_tb, clear_tb, mdrReadSig_tb, readSig_tb, writeSig_tb 	: std_logic;

component memorySubsystem is
	port(
		BusMuxOut, Mdatain		: in std_logic_vector(31 downto 0);
		BusMuxInMDR, BusMuxInRAM	: inout std_logic_vector(31 downto 0);
		MDRin, MARin, clock, clear: in std_logic;
		readSig, writeSig, mdrReadSig: in std_logic
	);
end component;
 
begin
	DUT1 : memorySubsystem port map(
		BusMuxOut	=> BusMuxOut_tb,
		Mdatain		=> Mdatain_tb, 
		BusMuxInMDR	=> BusMuxInMDR_tb,
		BusMuxInRAM => BusMuxInRAM_tb,
		MDRin	=> MDRin_tb,
		MARin	=> MARin_tb,	
		clock => clock_tb,
		clear => clear_tb,
		readSig => readSig_tb,
		writeSig => writeSig_tb,
		mdrReadSig => mdrReadSig_tb
	);
	clock_process: PROCESS
	begin
		clock_tb  <= '0';
		wait for 5 ns;
		clock_tb <= '1';
		wait for 5 ns;
	end process clock_process;
	sim_process: process
	begin
	
--		BusMuxOut_tb <= x"00000000";
--Set up MDRMux, MDR and Data Line	
		BusMuxOut_tb <= x"ffff0000";
		clear_tb <='1';
		mdrReadSig_tb 	<='0';
		MDRin_tb 		<='1';	
		readSig_tb 		<='0';	
		writeSig_tb		<='0';
		MARin_tb 		<='0';
		wait on clock_tb;		
		wait on clock_tb;	
		wait on clock_tb;		
		wait on clock_tb;			
--Set up Address in MAR
		mdrReadSig_tb 	<='1';
		MDRin_tb			<='0';
		readSig_tb 		<='0';	
		writeSig_tb		<='0';
		MARin_tb 		<='1';		
		BusMuxOut_tb <= x"00000001";		
		wait on clock_tb;
		wait on clock_tb;			
--Write to Ram
		mdrReadSig_tb 	<='1';
		MDRin_tb			<='0';
		readSig_tb 		<='0';	
		writeSig_tb		<='1';
		MARin_tb 		<='0';
		wait on clock_tb;
		wait on clock_tb;	
		wait on clock_tb;	
		wait on clock_tb;	
		wait on clock_tb;	
		wait on clock_tb;
		writeSig_tb		<='0';
		wait on clock_tb;	
		wait on clock_tb;	
--Set dataLine to 0		
		BusMuxOut_tb <= x"00000000";
		mdrReadSig_tb 	<='0';
		MDRin_tb 		<='1';	
		readSig_tb 		<='0';	
		writeSig_tb		<='0';
		MARin_tb 		<='0';
		wait on clock_tb;	
		wait on clock_tb;			
--Set up address in MAR		
		BusMuxOut_tb <= x"00000001";
		mdrReadSig_tb 	<='1';
		MDRin_tb 		<='0';	
		readSig_tb 		<='0';	
		writeSig_tb		<='0';
		MARin_tb 		<='1';		
		wait on clock_tb;
		wait on clock_tb;			
--Read from RAM		

		mdrReadSig_tb 	<='1';
		MDRin_tb			<='0';		
		readSig_tb 		<='1';	
		writeSig_tb		<='0';
		MARin_tb 		<='1';		
		wait on clock_tb;	
		wait on clock_tb;	
		wait on clock_tb;	
		wait on clock_tb;	
		wait on clock_tb;	
		wait on clock_tb;
--Set up address in MAR		
		BusMuxOut_tb <= x"00000000";
		mdrReadSig_tb 	<='1';
		MDRin_tb 		<='0';	
		readSig_tb 		<='0';	
		writeSig_tb		<='0';
		MARin_tb 		<='1';		
		wait on clock_tb;
		wait on clock_tb;			
--Read from RAM		

		mdrReadSig_tb 	<='1';
		MDRin_tb			<='0';		
		readSig_tb 		<='1';	
		writeSig_tb		<='0';
		MARin_tb 		<='1';		
		wait on clock_tb;	
		wait on clock_tb;	
		wait on clock_tb;	
		wait on clock_tb;	
		wait on clock_tb;	
		wait on clock_tb;		
		wait;
	end process sim_process;
end behaviour;