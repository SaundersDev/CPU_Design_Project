library ieee;
use ieee.std_logic_1164.all;

library work;

entity conFFSubComponent1_tb is
end;

architecture behaviour of conFFSubComponent1_tb is

signal conFFOutput_tb, busOrOut_tb : std_logic;
signal BusMuxOut_tb	: std_logic_vector(31 downto 0);
signal decoderOutput_tb : std_logic_vector(3 downto 0);
component conFFSubComponent1 IS
port(
		decoderOutput							: in std_logic_vector(3 downto 0);
		BusMuxOut								: in std_logic_vector(31 downto 0);
		conFFOutput								: out std_logic;
		busOrOut 								: inout std_logic 
	);
END component conFFSubComponent1;

 
begin
	DUT1 : conFFSubComponent1 port map(
		decoderOutput	=> decoderOutput_tb,
		BusMuxOut => BusMuxOut_tb,
		conFFOutput => conFFOutput_tb,		
		busOrOut => busOrOut_tb 
	);
	
	sim_process: process
	begin
	
		wait for 1 ns;
		busOrOut_tb <= '0';
		decoderOutput_tb	<= "0001";
		BusMuxOut_tb		<= x"07ff0000";		
		wait for 9 ns;
		decoderOutput_tb	<= "0010";
		wait for 10 ns;	
		decoderOutput_tb	<= "0100";
		wait for 10 ns;
		decoderOutput_tb	<= "1000";
		wait for 10 ns;
		wait;
	end process sim_process;
end behaviour;