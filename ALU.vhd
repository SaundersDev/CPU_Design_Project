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
component thirtyTwoBitRippleCarryAdder()
	port(
		A		:   in std_logic_vector(31 downto 0);
		B		:	in std_logic_vector(31 downto 0);
		Cin	:  in std_logic;
		S		:  out std_logic_vector(31 downto 0);
		Cout 	:  out std_logic
	);
end component thirtyTwoBitRippleCarryAdder;
component andGate()
	port(
		A, B : in std_logic_vector(31 downto 0);
		S : out std_logic_vector(31 downto 0);
	);
end component;
component orGate()
	port(
		A, B : in std_logic_vector(31 downto 0);
		S : out std_logic_vector(31 downto 0);
	);
end component;
component notGate()
	port(
		B : in std_logic_vector(31 downto 0);
		S : out std_logic_vector(31 downto 0);
	);
end component;
component negGate()
	port(
		B : in std_logic_vector(31 downto 0);
		S : out std_logic_vector(31 downto 0);
	);
end component;
component shiftRotateComponent()
	port(
		B 					: in std_logic_vector(31 downto 0);
		sL, sR, sR_A, rL, rR : out std_logic_vector(31 downto 0);
	);
end component;

signal addResult, subResult, mulResult, divResult 	: std_logic_vector(31 downto 0);
signal shrResult, shraResult, shlResult, rorResult	: std_logic_vector(31 downto 0);
signal rolResult, andResult, orResult, negResult	: std_logic_vector(31 downto 0);
signal notResult	: std_logic_vector(31 downto 0);

begin
U0: thirtyTwoBitRippleCarryAdder	port map(
		A		=> A,
		B		=> B,
				=> Cin,
		addResult => S,
				=> Cout 	
	);

U1: andGate port map(
		A					=> A,
		B					=> B,
		andResult		=> S
	);

U2: orGate port map(
		A					=> A,
		B					=> B,
		orResult		=> S
	);

U3: notGate	port map(
		A					=> A,
		B					=> B,
		notResult		=> S
	);
	
U4: negGate port map(
		A					=> A,
		B					=> B,
		negResult		=> S
	);

U5: shiftRotateComponent port map(
		A			=> A,
		B			=> B,
		shlResult=> sL,
		shrResult=> sR,
		shraResult = sR_A,
		rolResult=> rL,
		rorResult=> rR
	);
	
process(B,control)
begin
	case control is
		when "0000000000001" => result <= addResult--ADD 2's complement
		when "0000000000010" => result <= subResult--SUB 2's complement
		when "0000000000100" => result <= mulResult--MUL 2's complement
		when "0000000001000" =>	result <= divResult--DIV 2's complement
		when "0000000010000" => result <= shrResult--SHR 2's complement
		when "0000000100000" => result <= shraResult--SHRA 2's complement
		when "0000001000000" => result <= shlResult--SHL 2's complement
		when "0000010000000" => result <= rorResult--ROR 2's complement
		when "0000100000000" => result <= rolResult--ROL 2's complement
		when "0001000000000" => result <= andResult--AND 2's complement
		when "0010000000000" => result <= orResult--OR 2's complement
		when "0100000000000" => result <= negResult--NEG 2's complement
		when "1000000000000" => result <= notResult--NOT 1's complement
	end case;
end process;
end behaviour;	