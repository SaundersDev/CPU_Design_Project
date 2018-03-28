library ieee;
use ieee.std_logic_1164.all;

library work;

entity conFF_tb is
end;

architecture behaviour of conFF_tb is

signal clk_tb, CONin_tb, CONout_tb : std_logic;
signal IRout_tb, BusMuxOut_tb	: std_logic_vector(31 downto 0);

component conFF IS
port(
		clk										: in std_logic;
		IRout										: in std_logic_vector(31 downto 0);
		BusMuxOut								: in std_logic_vector(31 downto 0);
		CONin										: in std_logic;
		CONout									: out std_logic
	);
END component conFF;

 
begin
	DUT1 : conFF port map(
		clk	=> clk_tb,
		IRout => IRout_tb,
		BusMuxOut => BusMuxOut_tb,
		CONin => CONin_tb,
		CONout => CONout_tb		
	);
	
	sim_process: process
	begin
	
		wait for 1 ns;
		clk_tb		<= '1';
		CONin_tb		<= '0';
		IRout_tb		<= x"0fff0000";
		BusMuxOut_tb<= x"07ff0000";		
		wait for 9 ns;
		clk_tb		<= '0';
		CONin_tb		<= '1';
		wait for 10 ns;	
		clk_tb		<= '1';
		BusMuxOut_tb<= x"0ffff000";	
		wait for 10 ns;
		wait;
	end process sim_process;
end behaviour;