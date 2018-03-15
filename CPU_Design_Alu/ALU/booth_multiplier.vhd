library ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.STD_LOGIC_SIGNED.ALL;
use IEEE.std_logic_arith.all;

entity booth_multiplier IS
	PORT (
	A, B : in std_logic_vector(31 downto 0);
	C : out std_logic_vector(63 downto 0)
	);
end booth_multiplier;

architecture behaviour of booth_multiplier is
	shared variable previousQ, change	: std_logic;
	shared variable multiplicand 	: std_logic_vector(31 downto 0);
	shared variable multiplier 	: std_logic_vector(31 downto 0);
	shared variable result 			: std_logic_vector(31 downto 0);
	shared variable add 				: std_logic_vector(1 downto 0);

	
begin
	booth_multiplication: process (A, B)
	begin
		multiplicand := A;
		multiplier 	 := B;
		result 		 := (others => '0');

		previousQ := '0';

		if (multiplicand(31) = '1') then
			multiplicand := (NOT multiplicand) + 1;
			multiplier := (NOT multiplier) + 1;
		end if;
		
		for count in 0 to 15 loop
			if ((multiplier(1) = '0' AND multiplier(0) = '0' AND previousQ = '1') OR (multiplier(1) = '0' AND multiplier(0) = '1' AND previousQ = '0')) then 
				add := "00"; 
			elsif ((multiplier(1) = '0' AND multiplier(0) = '1' AND previousQ = '1')) then
				add := "01";  
			elsif ((multiplier(1) = '1' AND multiplier(0) = '0' AND previousQ = '0')) then
				add := "10";
			else
				add := "11";
			end if;
	
			if ((multiplier(1) = '1' AND multiplier(0) = '1' AND previousQ = '1') OR (multiplier(1) = '0' AND multiplier(0) = '0' AND previousQ = '0')) then
				change := '0';
			else
				change := '1';
			end if;
	
			if (change = '1') then
				if ( add = "00" ) then 
					result := result + multiplicand;
				
				elsif(add = "01") then
					result := result + multiplicand;
					result := result + multiplicand;
				
				elsif (add = "10") then 
					result := result - multiplicand;
					result := result - multiplicand;
				
				elsif(add = "11") then 
					result := result - multiplicand;
				
				end if;
			end if;
			

			previousQ := multiplier(1);
			
			multiplier(29 downto 0) := multiplier(31 downto 2);
			multiplier(31  downto 30) := result(1 downto 0);
			
			
			result(29 downto 0) := result(31 downto 2);
			result(31) := result(29);  
			result(30) := result(29);
		
		end loop;
			
			C(63 downto 32) <= result;
			C(31 downto 0) <= multiplier;
			
			
	end process;
	
 end behaviour;