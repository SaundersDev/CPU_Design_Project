LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY decoder4bits IS
	PORT (
		
		input  : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		output : OUT STD_LOGIC_VECTOR(3 downto 0)
		
	);
end entity decoder4bits;

architecture behavioural of decoder4bits is
begin
	
	output<=x"1" when input = "00"
		else x"2" when input = "01"
		else x"4" when input = "10"
		else x"8" when input = "11";

		
end architecture behavioural;