library ieee;
use ieee.std_logic_1164.all;

entity fullAdder_tb is
end;

architecture arch of fullAdder_tb is
	signal a_tb			: std_logic;
	signal b_tb			: std_logic;
	signal cIn_tb		: std_logic;
	signal s_tb			: std_logic;
	signal cOut_tb		: std_logic;
	
	component fullAdder
		port(
			A		: in std_logic;
			B		: in std_logic;
			Cin	: in std_logic;
			S		: out std_logic;
			Cout	: out std_logic
			);
	end component fullAdder;
	
	begin
		DUT1 : fullAdder
			port map(
				A => a_tb,
				B => b_tb,		
				Cin => cIn_tb,	
				S => s_tb,
				Cout => cOut_tb
			);
			sim_process: process
		
			begin
				
				a_tb <= '0';
				b_tb <= '0';
				cIn_tb <= '0';
					wait for 20 ns;
				
				a_tb <= '0';
				b_tb <= '0';
				cIn_tb <= '1';
					wait for 20 ns;
				
				a_tb <= '0';
				b_tb <= '1';
				cIn_tb <= '0';
					wait for 20 ns;
				
				a_tb <= '0';
				b_tb <= '1';
				cIn_tb <= '1';
					wait for 20 ns;
				
				a_tb <= '1';
				b_tb <= '0';
				cIn_tb <= '0';
					wait for 20 ns;
				
				a_tb <= '1';
				b_tb <= '0';
				cIn_tb <= '1';
					wait for 20 ns;			
				
				a_tb <= '1';
				b_tb <= '1';
				cIn_tb <= '0';
					wait for 20 ns;		

				a_tb <= '1';
				b_tb <= '1';
				cIn_tb <= '1';
					wait;

			end process sim_process;
end arch;