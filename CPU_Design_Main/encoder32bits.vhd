LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY encoder32bits IS
	PORT (
		
		input  : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		output : OUT STD_LOGIC_VECTOR(4 downto 0)
		
	);
end entity encoder32bits;

architecture behavioural of encoder32bits is
begin
	
	output<="00000" when input = x"00000000"
		else "00001" when input = x"00000001"
		else "00010" when input = x"00000002"
		else "00011" when input = x"00000004"
		else "00100" when input = x"00000008"
		else "00101" when input = x"00000010"
		else "00110" when input = x"00000020"
		else "00111" when input = x"00000040"
		else "01000" when input = x"00000080"
		else "01001" when input = x"00000100"
		else "01010" when input = x"00000200"
		else "01011" when input = x"00000400"
		else "01100" when input = x"00000800"
		else "01101" when input = x"00001000"
		else "01110" when input = x"00002000"
		else "01111" when input = x"00004000"
		else "10000" when input = x"00008000"
		else "10001" when input = x"00010000"
		else "10010" when input = x"00020000"
		else "10011" when input = x"00040000"
		else "10100" when input = x"00080000"
		else "10101" when input = x"00100000"
		else "10110" when input = x"00200000"
		else "10111" when input = x"00400000";
	
end architecture behavioural;