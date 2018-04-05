--CONFIRMED TO WORK

library ieee;
use ieee.std_logic_1164.all;

library work;

entity memorySubsystem_tb is
end;

architecture behaviour of memorySubsystem_tb is

signal BusMuxOut_tb, BusMuxInMDR_tb 		: std_logic_vector(31 downto 0);
signal MDRin_tb, MARin_tb, clock_tb, clear_tb, read_notWrite_tb, ram_complete_to_control_tb : std_logic;
--signal mdrReadSig_tb, readSig_tb, writeSig_tb 	: std_logic;

component memorySubsystem is
	port(
		BusMuxOut		: in std_logic_vector(31 downto 0);
		BusMuxInMDR	: inout std_logic_vector(31 downto 0);
		MDRin, MARin, clock, clear: in std_logic;
		--readSig, writeSig, mdrReadSig: in std_logic
		ram_complete_to_control	 : inout std_logic;
		read_notWrite : in std_logic
	);
end component;
 
begin
	DUT1 : memorySubsystem port map(
		BusMuxOut	=> BusMuxOut_tb,
		BusMuxInMDR	=> BusMuxInMDR_tb,
		MDRin	=> MDRin_tb,
		MARin	=> MARin_tb,	
		clock => clock_tb,
		clear => clear_tb,
		ram_complete_to_control => ram_complete_to_control_tb,
		read_notWrite => read_notWrite_tb
--		readSig => readSig_tb,
--		writeSig => writeSig_tb,
--		mdrReadSig => mdrReadSig_tb
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
	
		clear_tb <='1';
--Write x"ffff0000" to slot 0		
		BusMuxOut_tb <= x"00000000";
		MDRin_tb			<='0';
		MARin_tb 		<='1';
		read_notWrite_tb <= '0';
		
		wait on clock_tb;
		wait on clock_tb;			

		BusMuxOut_tb <= x"ffff0000";
		MARin_tb 		<='0';
		MDRin_tb 		<='1';	
		read_notWrite_tb <= '0';

		wait on clock_tb;		
		wait on clock_tb;	
		wait on clock_tb;		
		wait on clock_tb;		
		
--Write x"f0f0f0f0" to slot 1
		MDRin_tb			<='0';
		MARin_tb 		<='1';		
		BusMuxOut_tb <= x"00000001";		
		wait on clock_tb;
		wait on clock_tb;			

		MARin_tb 		<='0';
		MDRin_tb			<='1';
		BusMuxOut_tb <= x"f0f0f0f0";	
		read_notWrite_tb <= '0';		
		
		wait on clock_tb;
		wait on clock_tb;	
		wait on clock_tb;	
		wait on clock_tb;	

--Read from slot 0
		BusMuxOut_tb <= x"00000000";
		MARin_tb 		<='1';	
		read_notWrite_tb <= '1';
		MDRin_tb 		<='0';
		wait on clock_tb;	
		wait on clock_tb;			
--Read from Slot 2
		BusMuxOut_tb <= x"00000001";
--		mdrReadSig_tb 	<='1';
		MDRin_tb 		<='0';	
--		readSig_tb 		<='0';	
--		writeSig_tb		<='0';
		MARin_tb 		<='1';		
		wait on clock_tb;
		wait on clock_tb;			
--Read from RAM			
		wait on clock_tb;	
		wait on clock_tb;	
		wait on clock_tb;	
		wait on clock_tb;	
		wait on clock_tb;	
		wait on clock_tb;			
		wait;
	end process sim_process;
end behaviour;