library ieee;
use ieee.std_logic_1164.all;

entity andGate_tb is
end;

architecture behaviour of andGate_tb is

signal A_tb : std_logic_vector(31 downto 0);
signal B_tb : std_logic_vector(31 downto 0);
signal S_tb : std_logic_vector(31 downto 0);

component andGate is
	port(
		A, B	 	: in std_logic_vector(31 downto 0);
		S			: out std_logic_vector(31 downto 0)
	);
end component;
 
begin
	DUT1 : andGate port map(
		A => A_tb,
		B => B_tb,
		S => S_tb
	);
	
	sim_process: process
	begin
	
		wait for 1 ns;
		A_tb <= x"00000003";
		B_tb <= x"0000000f";
		wait for 9 ns;		
		A_tb <= x"00000101";
		B_tb <= x"0000ff0f";
		wait for 10 ns;
		A_tb <= x"0000010f";
		B_tb <= x"000000ff";
		wait for 10 ns;
		
		
		wait;
	end process sim_process;
end behaviour;