library ieee;
use ieee.std_logic_1164.all;

library work;

entity reg_IR_tb is
end;

architecture behaviour of reg_IR_tb is

signal clk_tb, clr_tb, Rin_tb		: std_logic;
signal BusMuxIn_tb, BusMuxOut_tb	: std_logic_vector(31 downto 0);

component reg_IR IS
	PORT(
		clk, clr, Rin : IN STD_LOGIC;
		BusMuxOut : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		BusMuxIn : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
END component reg_IR;

 
begin
	DUT1 : reg_IR port map(
		clk	=> clk_tb,
		clr	=> clr_tb,
		Rin	=> Rin_tb,
		BusMuxOut => BusMuxOut_tb,
		BusMuxIn	=> BusMuxIn_tb		
	);
	
	sim_process: process
	begin
	
		wait for 1 ns;
		clk_tb		<= '1';
		clr_tb		<= '0';
		Rin_tb		<= '1';
		BusMuxOut_tb<= x"07ff0000";
		clr_tb		<= '1';		
		wait for 9 ns;
		clk_tb		<= '0';
		wait for 10 ns;	
		clk_tb		<= '1';
		BusMuxOut_tb<= x"07fff000";	
		wait for 10 ns;
		wait;
	end process sim_process;
end behaviour;