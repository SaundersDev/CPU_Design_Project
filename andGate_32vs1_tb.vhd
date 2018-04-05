library ieee;
use ieee.std_logic_1164.all;

library work;

entity andgate_31vs1_tb is
end;

architecture behaviour of andgate_31vs1_tb is

signal B_tb 	: std_logic;
signal A_tb		: std_logic_vector(31 downto 0);
signal S_tb		: std_logic_vector(31 downto 0);

component andGate_31vs1 is
	port(
		A		: in std_logic_vector(31 downto 0);
		B	 	: in std_logic;
		S		: out std_logic_vector(31 downto 0)
	);
end component;
begin
DUT1 : andGate_31vs1 port map(
		A	=> A_tb,
		B	=> B_tb,
		S	=> S_tb
	);
	
	sim_process: process
	begin
		B_tb <= '0';
		wait for 1 ns;
		A_tb <= x"07ff8000";
		wait for 4 ns;
		B_tb <= '1';
		wait for 9 ns;	
		A_tb <= x"07fb8000";			
		wait for 10 ns;
		wait for 10 ns;
		A_tb <= x"fffffff0";
		wait;
	end process sim_process;
end behaviour;