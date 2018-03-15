library ieee;
use ieee.std_logic_1164.all;

library work;

entity alu_tb is
end;

architecture arc of alu_tb is
	signal control_tb 	: std_logic_vector(12 downto 0);
	signal a_tb 			: std_logic_vector(31 downto 0);
	signal b_tb 			: std_logic_vector(31 downto 0);
	signal c_tb 			: std_logic_vector(63 downto 0);
	
	component ALU is
		port(
				control						: in std_logic_vector(12 downto 0);
				A, B     					: in std_logic_vector(31 downto 0);
				C								: out std_logic_vector(63 downto 0)

		);
	end component;

	begin
		DUT1 : ALU port map(
				control	=> control_tb,
				A 			=> a_tb,
				B 			=> b_tb,
				C 			=> c_tb	
			);
			
			sim_process: process
			begin
				wait for 10 ns;
				
--				control_tb	<= "0000000000001";
--				a_tb <= "00000000000000000000000000000010";
--				b_tb <= "00001111111111111111111111011011";
--				wait for 10 ns;
--				
--				control_tb	<= "0000000000010";
--				a_tb <= "00000000000000000000000000010100";
--				b_tb <= "00000000000000000000000000010010";
--				wait for 10 ns;
--				
--				control_tb	<= "0000000000100";
--				a_tb <= "00000000000000000000000000000010";
--				b_tb <= "00001111111111111111111111011011";
--				wait for 10 ns;
--
--				control_tb	<= "0000000001000";
--				a_tb <= "00000000000000000000000000000010";
--				b_tb <= "11001111111111111111111111011011";
--				wait for 10 ns;
--
--				control_tb	<= "0000000010000";
--				a_tb <= "00000000000000000000000000000010";
--				b_tb <= "11001111111111111111111111011011";
--				wait for 10 ns;		
--			
--				control_tb	<= "0000000100000";
--				a_tb <= "00000000000000000000000000000010";
--				b_tb <= "11001111111111111111111111011011";
--				wait for 10 ns;
--		
--				control_tb	<= "0000001000000";
--				a_tb <= "00000000000000000000000000000010";
--				b_tb <= "11001111111111111111111111011011";
--				wait for 10 ns;
--			
				control_tb	<= "0000010000000";
				a_tb <= "00000000000000000000000000000010";
				b_tb <= "10111111111111111111111100011011";
				wait for 10 ns;
			
				control_tb	<= "0000100000000";
				a_tb <= "00000000000000000000000000000010";
				b_tb <= "00000000000000000000000000011011";
				wait for 10 ns;
				
				control_tb	<= "0001000000000";
				a_tb <= "00000000000000000000000000010011";
				b_tb <= "00000000000000000000000000010100";
				wait for 10 ns;			
				
				control_tb	<= "0010000000000";
				a_tb <= "00000000000000000000000000010110";
				b_tb <= "00000000000000000000000000011011";
				wait for 10 ns;			
				
				control_tb	<= "0100000000000";
				a_tb <= "00000000000000000000000000000010";
				b_tb <= "00000000000000000000000000000011";
				wait for 10 ns;		
				
				control_tb	<= "1000000000000";
				a_tb <= "00000000000000000000000000000010";
				b_tb <= "00000000000000000000000000000011";
				wait for 10 ns;						
				wait;
			end process sim_process;
end arc;
				