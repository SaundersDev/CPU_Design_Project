--this is setup libraries
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.STD_LOGIC_SIGNED.ALL;
use IEEE.std_logic_arith.all;

--this is setup Regsister entity with I/O declarations
entity booth_multiplier IS
	PORT (
	A, B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	C : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
	);
end booth_multiplier;

--Delcaring Register Architacture and define operation 
--of register entity
architecture behaviour of booth_multiplier is
	shared variable multiplicand, multiplier, Answer : std_LOGIC_VECTOR(31 downto 0);
	shared variable add : std_LOGIC_VECTOR(1 downto 0);
	shared variable prevQ, change: std_logic;
	
begin
	booth_multiplication: process (B)
	begin
		multiplicand := A;
		multiplier := B;
		Answer := (others => '0');
		prevQ := '0';
		
		--If negative number
		if (multiplicand(31) = '1') then
			multiplicand := (NOT multiplicand) + 1;
			multiplier := (NOT multiplier) + 1;
		end if;
		
		for count in 0 to 15 loop
			if ((multiplier(1) = '0' AND multiplier(0) = '0' AND prevQ = '1') OR (multiplier(1) = '0' AND multiplier(0) = '1' AND prevQ = '0')) then 
				add := "00";  --if signal for add 1 * multiplicand
			elsif ((multiplier(1) = '0' AND multiplier(0) = '1' AND prevQ = '1')) then
				add := "01";  --if signal for add 2 * multiplicand
			elsif ((multiplier(1) = '1' AND multiplier(0) = '0' AND prevQ = '0')) then
				add := "10";   -- signal for subtract -2 * multiplicand
			else
				add := "11";   -- signal for subtract -1 * multiplicand
			end if;
	
			if ((multiplier(1) = '1' AND multiplier(0) = '1' AND prevQ = '1') OR (multiplier(1) = '0' AND multiplier(0) = '0' AND prevQ = '0')) then
				change := '0';
			else
				change := '1';
			end if;
		
			--adding/subtracting multiplicand to Answer
			if (change = '1') then
				if ( add = "00" ) then --add *1
					Answer := Answer + multiplicand;
				elsif(add = "01") then -- add *2
					Answer := Answer + multiplicand;
					Answer := Answer + multiplicand;
				elsif (add = "10") then -- sub *2
					Answer := Answer - multiplicand;
					Answer := Answer - multiplicand;
				elsif(add = "11") then -- sub *1
					Answer := Answer - multiplicand;
				end if;
			end if;
			
			--shifting right
			prevQ := multiplier(1); --shift the multiplier into prevQ
			multiplier(29 downto 0) := multiplier(31 downto 2); --right shift by 2
			
			multiplier(31  downto 30) := Answer(1 downto 0); --shift Answer into prevQ
			Answer(29 downto 0) := Answer(31 downto 2); --right shift 2
			--sign extend
			Answer(31) := Answer(29);  
			Answer(30) := Answer(29);
		end loop;
			C(63 downto 32) <= Answer;
			C(31 downto 0) <= multiplier;
	end process;
	
 end behaviour;