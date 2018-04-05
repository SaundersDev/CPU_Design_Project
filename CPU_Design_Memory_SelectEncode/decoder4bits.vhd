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
	
	output<="0001" when input = "00"
		else "0010" when input = "01"
		else "0100" when input = "10"
		else "1000" when input = "11";

		
end architecture behavioural;