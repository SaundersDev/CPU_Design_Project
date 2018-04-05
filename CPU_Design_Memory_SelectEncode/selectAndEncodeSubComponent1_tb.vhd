--CONFIRMED TO WORK

library ieee;
use ieee.std_logic_1164.all;

library work;

entity selectAndEncodeSubComponent1_tb is
end;

architecture behaviour of selectAndEncodeSubComponent1_tb is

signal IRin_tb 						: std_logic_vector(31 downto 0);
signal Gra_tb, Grb_tb, Grc_tb 	: std_logic;
signal output_tb 						: std_logic_vector(3 downto 0);

component selectAndEncodeSubComponent1 is
	port(
		IRin								: in std_logic_vector(31 downto 0);
		Gra, Grb, Grc					: in std_logic;
		output							: out std_logic_vector(3 downto 0)
	);
end component;
 
begin
	DUT1 : selectAndEncodeSubComponent1 port map(
		IRin	=> IRin_tb,
		Gra	=> Gra_tb,
		Grb	=> Grb_tb,
		Grc	=> Grc_tb,	
		output=> output_tb
	);
	
	sim_process: process
	begin
	
		wait for 1 ns;
		IRin_tb <= x"0fffa000";
		Gra_tb <= '1';
		Grb_tb <= '0';
		Grc_tb <= '0';				
		wait for 9 ns;		
		Gra_tb <= '0';
		Grb_tb <= '1';
		wait for 10 ns;
		Grb_tb <= '0';
		Grc_tb <= '1';
		wait for 10 ns;
		wait;
	end process sim_process;
end behaviour;