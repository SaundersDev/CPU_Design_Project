library ieee;
use ieee.std_logic_1164.all;

library work;

entity selectEncode_tb is
end;

architecture behaviour of selectEncode_tb is

signal IRin_tb : std_logic_vector(31 downto 0);
signal Gra_tb, Grb_tb, Grc_tb 	: std_logic;
signal Rin_tb, Rout_tb, BAout_tb : std_logic;
signal BusMuxOut_tb					: std_logic_vector(31 downto 0);
signal C_sign_extended_tb			: std_logic_vector(31 downto 0);
signal r0in_r15in_Decoded_tb		: std_logic_vector(15 downto 0);
signal r0out_r15out_Decoded_tb		: std_logic_vector(15 downto 0);

component selectAndEncodeLogic is
	port(
		IRin										: in std_logic_vector(31 downto 0);
		Gra, Grb, Grc, Rin, Rout, BAout	: in std_logic;
		BusMuxOut								: in std_logic_vector(31 downto 0);
		C_sign_extended						: out std_logic_vector(31 downto 0);
		r0in_r15in_Decoded					: out std_logic_vector(15 downto 0);
		r0out_r15out_Decoded					: out std_logic_vector(15 downto 0)
	);
end component;
 
begin
	DUT1 : selectAndEncodeLogic port map(
		IRin	=> IRin_tb,
		Gra	=> Gra_tb,
		Grb	=> Grb_tb,
		Grc	=> Grc_tb,
		Rin	=> Rin_tb,
		Rout	=> Rout_tb,
		BAout	=> BAout_tb,	
		BusMuxOut => BusMuxOut_tb,								
		C_sign_extended => C_sign_extended_tb,
		r0in_r15in_Decoded => r0in_r15in_Decoded_tb,
		r0out_r15out_Decoded => r0out_r15out_Decoded_tb
	);
	
	sim_process: process
	begin
	
		wait for 1 ns;
		IRin_tb <= x"07ff8000";
		Gra_tb <= '1';
		Grb_tb <= '0';
		Grc_tb <= '0';
		Rin_tb <= '1';
		Rout_tb <= '1';
		BAout_tb <= '1';
		BusMuxOut_tb <= x"ffff0000";
		wait for 9 ns;
		IRin_tb <= x"07fb8000";		
		Gra_tb <= '0';
		Grb_tb <= '1';
		wait for 10 ns;
		Grb_tb <= '0';
		Grc_tb <= '1';
		wait for 10 ns;
		wait;
	end process sim_process;
end behaviour;

--CONFIRMED TO WORK