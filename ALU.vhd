--logical AND
--logical OR
--Negate (2's complement)
--NOT (1's Complement)

--shift right
--shift right arithmetic
--shift left
--shift left arithmetic
--rotate right
--rotate left


--addition
--subtraction
--multiplication
--division
-- A has Adding, subtracting, multiplying and dividing
-- B has 
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity ALU is
port(
	control						: in std_logic_vector(12 downto 0);
   A, B     					: in std_logic_vector(31 downto 0);
	C								: out std_logic_vector(64 downto 0);
	zero, carry, overflow	: out std_logic
);
end entity;

architecture behavioural of ALU is
component boothMultiplier()
	port(
	inputA, inputB  : in std_logic_vector(31 downto 0);
	output			: out std_logic_vector(63 downto 0);
	);
end component boothMultiplier;	
component aluAddert()
	port(
	inputA, inputB  							: in std_logic_vector(31 downto 0);
	adderOutput, subtracterOutput			: out std_logic_vector(31 downto 0);
	);
end component boothMultiplier;
signal addResult, subResult, mulResult, divResult 	: std_logic_vector(31 downto 0);
signal shrResult, shraResult, shlResult, rorResult	: std_logic_vector(31 downto 0);
signal rolResult, andResult, orResult, negResult	: std_logic_vector(31 downto 0);
signal notResult	: std_logic_vector(31 downto 0);

begin
addResult <= adderOutput;
subResult <= subtracterOutput;
--mulResult <= 
--divResult <= 
shrResult <= B(30 downto 0) := B(31 downto 1)
--B srl 1;



--shraResult<= B() sra 1;
shlResult <= B(31 downto 1) := B(30 downto 0);
--rorResult <= B ror 1;
--rolResult <= B rol 1;

andResult <= A AND B;
orResult  <= A OR B;
negResult <= "00000000000000000000000000000000"
notResult <= A NOT B; --1's complement
process(B,control)
begin
	case control is
		when "0000000000001" => result <= addResult--ADD 2's complement
		when "0000000000010" => result <= addResult--SUB 2's complement
		when "0000000000100" => result <= addResult--MUL 2's complement
		when "0000000001000" =>	result <= addResult--DIV 2's complement
		when "0000000010000" => result <= addResult--SHR 2's complement
		when "0000000100000" => result <= addResult--SHRA 2's complement
		when "0000001000000" => result <= addResult--SHL 2's complement
		when "0000010000000" => result <= addResult--ROR 2's complement
		when "0000100000000" => result <= addResult--ROL 2's complement
		when "0001000000000" => result <= addResult--AND 2's complement
		when "0010000000000" => result <= addResult--OR 2's complement
		when "0100000000000" => result <= addResult--NEG 2's complement
		when "1000000000000" => result <= addResult--NOT 1's complement
	end case;
end process;
end behaviour;	