library ieee;
use ieee.std_logic_1164.all;

entity thirtyTwoBitRippleCarrySubtractor_tb is
end;

architecture arch of thirtyTwoBitRippleCarrySubtractor_tb is
	signal a_tb			: std_logic_vector(31 downto 0);
	signal b_tb			: std_logic_vector(31 downto 0);
	signal cIn_tb		: std_logic;
	signal s_tb			: std_logic_vector(31 downto 0);
	signal cOut_tb		: std_logic;
	
component thirtyTwoBitRippleCarrySubtractor IS 
	port
	(
		A		:  in std_logic_vector(31 downto 0);
		B		:	in std_logic_vector(31 downto 0);
		Cin	:  in std_logic;
		S		:  out std_logic_vector(31 downto 0);
		Cout 	:  out std_logic
	);
end component;

	begin
		DUT1 : thirtyTwoBitRippleCarrySubtractor
			port map(
				A => a_tb,
				B => b_tb,		
				Cin => cIn_tb,	
				S => s_tb,
				Cout => cOut_tb
			);
			sim_process: process
		
			begin
					wait for 0 ns;
				a_tb <= "11111111111111111111111111111111";
				b_tb <= "00000000000000000000000000000001";
				cIn_tb <= '0';
					wait for 20 ns;
				
				a_tb <= "00000000000000000000000000000011";
				b_tb <= "00000000000000000011111111111111";
				cIn_tb <= '1';
					wait for 20 ns;
				
				a_tb <= "01010101010101010101010101010101";
				b_tb <= "10101010101010101010101010101010";
				cIn_tb <= '0';
					wait for 20 ns;
				
				a_tb <= "11111111000000000000001111111111";
				b_tb <= "00000000111111111111100000000001";
				cIn_tb <= '1';
					wait for 20 ns;
				
				a_tb <= "00000000111111111110111100000001";
				b_tb <= "00000000000000000001111111110101";
				cIn_tb <= '0';
					wait for 20 ns;
				
				a_tb <= "01111100000000000000000000000000";
				b_tb <= "00000000111111111111111111111001";
				cIn_tb <= '1';
					wait for 20 ns;			
				
				a_tb <= "01111111110000000000000000000001";
				b_tb <= "00000000010000000000000000000001";
				cIn_tb <= '0';
					wait for 20 ns;		

				a_tb <= "00000000000000100101010010000001";
				b_tb <= "00000000000000011010100100000001";
				cIn_tb <= '1';
					wait;

			end process sim_process;
end arch;