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

library work;

entity ALU is
port(
	control						: in std_logic_vector(12 downto 0);
	A, B     					: in std_logic_vector(31 downto 0);
	C								: out std_logic_vector(63 downto 0)

);
end entity;

architecture behaviour of ALU is
signal wastedCarryIn, wastedCarryOut : std_logic := '0';
signal nothing : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
--component boothMultiplier()
--	port(
--	inputA, inputB  : in std_logic_vector(31 downto 0);
--	output			: out std_logic_vector(63 downto 0);
--	);
--end component boothMultiplier;
component divider is
	port(
		denom			: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		numer			: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		quotient		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		remain		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
end component divider;
component thirtyTwoBitRippleCarryAdder is
	port(
		A		:   in std_logic_vector(31 downto 0);
		B		:	in std_logic_vector(31 downto 0);
		Cin	:  in std_logic;
		S		:  out std_logic_vector(31 downto 0);
		Cout 	:  out std_logic
	);
end component thirtyTwoBitRippleCarryAdder;
component thirtyTwoBitRippleCarrySubtractor is
	port(
		A		:  in std_logic_vector(31 downto 0);
		B		:  in std_logic_vector(31 downto 0);
		Cin		:  in std_logic;
		S		:  out std_logic_vector(31 downto 0);
		Cout 	:  out std_logic
	);
end component thirtyTwoBitRippleCarrySubtractor;
component andGate is
	port(
		A, B : in std_logic_vector(31 downto 0);
		S : out std_logic_vector(31 downto 0)
	);
end component;
component orGate is
	port(
		A, B : in std_logic_vector(31 downto 0);
		S : out std_logic_vector(31 downto 0)
	);
end component;
component notGate is
	port(
		B : in std_logic_vector(31 downto 0);
		S : out std_logic_vector(31 downto 0)
	);
end component;
component negGate is
	port(
		B : in std_logic_vector(31 downto 0);
		S : out std_logic_vector(31 downto 0)
	);
end component;
component shiftRotateComponent is
	port(
		B 					: in std_logic_vector(31 downto 0);
		sL, sR, sR_A, rL, rR : out std_logic_vector(31 downto 0)
	);
end component;

signal addResult, subResult, mulResult, divResult1, divResult2 : std_logic_vector(31 downto 0);
signal shrResult, shraResult, shlResult, rorResult	: std_logic_vector(31 downto 0);
signal rolResult, andResult, orResult, negResult	: std_logic_vector(31 downto 0);
signal notResult									: std_logic_vector(31 downto 0);

begin

U0: thirtyTwoBitRippleCarryAdder	port map(
		A		=> A,
		B		=> B,
		Cin	=> wastedCarryIn,
		S		=> addResult,
		Cout	=> wastedCarryOut 	
	);
	
U1: andGate port map(
		A					=> A,
		B					=> B,
		S					=> andResult
	);

U2: orGate port map(
		A					=> A,
		B					=> B,
		S					=> orResult
	);

U3: notGate	port map(
		B					=> B,
		S					=> notResult
	);
	
U4: negGate port map(
		B					=> B,
		S					=> negResult
	);

U5: shiftRotateComponent port map(
		B			=> B,
		sL			=> shlResult,
		sR			=> shrResult,
		sR_A 		=> shraResult,
		rL			=> rolResult,
		rR			=> rorResult
	);

U6: thirtyTwoBitRippleCarrySubtractor	port map(
		A		=> A,
		B		=> B,
		Cin	=> wastedCarryIn,
		S		=> subResult,
		Cout	=> wastedCarryOut 	
	);	
	
U7 : divider port map(
		denom			=> A,
		numer			=> B,
		quotient		=> divResult1,
		remain		=> divResult2
	);

	
process(control)
begin
	case control is
		when "0000000000001" => C <= nothing & addResult;--ADD 2's complement
		when "0000000000010" => C <= nothing & subResult;--SUB 2's complement
		when "0000000000100" => C <= nothing & addResult;--mulResult--MUL 2's complement
		when "0000000001000" =>	C <= divResult1 & divResult2;--divResult--DIV 2's complement
		when "0000000010000" => C <= nothing & shlResult;--SHR 2's complement
		when "0000000100000" => C <= nothing & shrResult;--SHRA 2's complement
		when "0000001000000" => C <= nothing & shraResult;--SHL 2's complement
		when "0000010000000" => C <= nothing & rolResult;--ROR 2's complement
		when "0000100000000" => C <= nothing & rorResult;--ROL 2's complement
		when "0001000000000" => C <= nothing & andResult;--AND 2's complement
		when "0010000000000" => C <= nothing & orResult;--OR 2's complement
		when "0100000000000" => C <= nothing & negResult;--NEG 2's complement
		when others 			=> C <= nothing & notResult;--NOT 1's complement
	end case;
end process;
end behaviour;	