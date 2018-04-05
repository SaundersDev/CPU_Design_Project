library ieee;
use ieee.std_logic_1164.all;

library work;

entity regZero_tb is
end entity;
architecture behaviour of regZero_tb is

component reg_Zero is
	port(
		clk, clr, Rin, BAout : IN STD_LOGIC;
		BusMuxOut : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		BusMuxIn : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
end component;
 
signal clk_tb : std_logic;
signal clr_tb : std_logic;
signal Rin_tb : std_logic;
signal BAout_tb : std_logic;
signal BusMuxOut_tb : std_logic_vector(31 downto 0);
signal BusMuxIn_tb : std_logic_vector(31 downto 0); 
begin
	DUT1 : reg_Zero port map(
		clk => clk_tb,
		clr => clr_tb,
		Rin => Rin_tb,
		BAout => BAout_tb,
		BusMuxOut => BusMuxOut_tb,
		BusMuxIn => BusMuxIn_tb 
	);
	
	sim_process: process
	begin
	
		wait for 1 ns;
		clk_tb <= '1';
		clr_tb <= '0';
		Rin_tb <= '1';
		BAout_tb <= '1';
		BusMuxOut_tb <= x"00000004"; 
		wait for 9 ns;
		clk_tb <= '0';
		clr_tb <= '1';
		wait for 10 ns;
		clk_tb <= '1';
		
		
		wait;
		end process;
end architecture;