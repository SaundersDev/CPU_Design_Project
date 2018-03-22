library ieee;
use ieee.std_logic_1164.all;

library work;

entity reg_Zero_tb is
end;

architecture behaviour of reg_Zero_tb is

signal clk_tb, clr_tb 	: std_logic;
signal Rin_tb, BAout_tb : std_logic;
signal BusMuxOut_tb		: std_logic_vector(31 downto 0);
signal BusMuxIn_tb		: std_logic_vector(31 downto 0);

component reg_Zero IS
	PORT(
		clk, clr, Rin, BAout : IN STD_LOGIC;
		BusMuxOut : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		BusMuxIn : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
END component;
 
begin
	DUT1 : reg_Zero port map(
		clk	=> clk_tb,
		clr	=> clr_tb,
		Rin	=> Rin_tb,
		BAout	=> BAout_tb,	
		BusMuxOut => BusMuxOut_tb,								
		BusMuxIn  => BusMuxIn_tb
	);
	
	sim_process: process
	begin
		clk_tb <= '0';
		wait for 1 ns;
		BusMuxOut_tb <= x"07ff8000";
		clk_tb <= '1';
		clr_tb <= '0';
		Rin_tb <= '1';
		BAout_tb <= '1';
		BusMuxOut_tb <= x"ffff0000";
		wait for 9 ns;	
		clk_tb <= '0';
		BAout_tb <= '1';
		BusMuxOut_tb <= x"07fb8000";			
		wait for 10 ns;
		clk_tb <= '1';
		wait for 10 ns;
		BAout_tb <= '1';
		wait;
	end process sim_process;
end behaviour;
