library ieee;
use ieee.std_logic_1164.all;

library work;

entity andGate_tb is
end entity;
architecture behaviour of andGate_tb is

component andGate_32vs1 is
	port(
		A		: in std_logic;
		B	 	: in std_logic_vector(31 downto 0);
		S		: out std_logic_vector(31 downto 0)
	);
end component;
 
signal A_tb : std_logic;
signal B_tb : std_logic_vector(31 downto 0);
signal S_tb : std_logic_vector(31 downto 0); 
begin
	DUT1 : andGate_32vs1 port map(
		A => A_tb,
		B => B_tb,
		S => S_tb
	);
	
	sim_process: process
	begin
	
		wait for 1 ns;
		A_tb <= '1';
		B_tb <= x"0000000f";
		wait for 9 ns;		
		A_tb <= '1';
		B_tb <= x"0000ff0f";
		wait for 10 ns;
		A_tb <= '0';
		B_tb <= x"000000ff";
		wait for 10 ns;
		
		
		wait;
		end process;
end architecture;