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
-- incPC
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

library work;

entity ALU is
port(
	control						: in std_logic_vector(13 downto 0);
	A, B     					: in std_logic_vector(31 downto 0);
	C								: out std_logic_vector(63 downto 0)

);
end entity;

architecture behaviour of ALU is
signal 	wastedCarryInAdd, wastedCarryOutAdd,
			wastedCarryInNeg, wastedCarryInSub,
			wastedCarryOutNeg, wastedCarryOutSub,
			wastedCarryInPC, wastedCarryOutPC	: std_logic := '0';
			
			
signal nothing 		: std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
signal everything		: std_logic_vector(31 downto 0):= "11111111111111111111111111111111";
signal chooseSignage : std_logic_vector(31 downto 0);


component booth_multiplier is
	port(
		A, B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		C : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
	);
end component booth_multiplier;

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
		A		:  in std_logic_vector(31 downto 0);
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
		Cin	:  in std_logic;
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
		B		:	in std_logic_vector(31 downto 0);
		Cin	:	in std_logic;
		S		:	out std_logic_vector(31 downto 0);
		Cout 	:	out std_logic
	);
end component;

component shiftLeft is
	port(
		A, B		: in std_logic_vector(31 downto 0);
		S		: out std_logic_vector(31 downto 0)
	);
end component;

component shiftRight is
	port(
		A, B	 	: in std_logic_vector(31 downto 0);
		S		: out std_logic_vector(31 downto 0)
	);
end component;

component shiftRightArithmetic is
	port(
		A, B	 	: in std_logic_vector(31 downto 0);
		S		: out std_logic_vector(31 downto 0)
	);
end component;

component rotateLeft is
	port(
		A, B	 	: in std_logic_vector(31 downto 0);
		S		: out std_logic_vector(31 downto 0)
	);
end component;

component rotateRight is
	port(
		A, B		: in std_logic_vector(31 downto 0);
		S		: out std_logic_vector(31 downto 0)
	);
end component;

component pcIncrement is
	port(
		B		:	in std_logic_vector(31 downto 0);
		Cin	:	in std_logic;
		S		:	out std_logic_vector(31 downto 0);
		Cout 	:	out std_logic
	);
end component;

signal addResult, subResult 				: std_logic_vector(31 downto 0);
signal divResult1, divResult2 			: std_logic_vector(31 downto 0);
signal shlResult								: std_logic_vector(31 downto 0);
signal shrResult, shraResult				: std_logic_vector(31 downto 0);
signal rolResult, rorResult				: std_logic_vector(31 downto 0);
signal andResult, orResult					: std_logic_vector(31 downto 0);
signal notResult, negResult, pcResult	: std_logic_vector(31 downto 0);
signal mulResult	: std_logic_vector(63 downto 0);


begin

U0: thirtyTwoBitRippleCarryAdder	port map(
		A		=> A,
		B		=> B,
		Cin	=> wastedCarryInAdd,
		S		=> addResult,					
		Cout	=> wastedCarryOutAdd 	
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
		B				=> B,
		Cin 			=> wastedCarryInNeg,
		S				=> negResult,
		Cout			=> wastedCarryOutNeg
	);

U5: shiftLeft port map(
		A => A,
		B	=> B,
		S => shlResult
	);

U6: shiftRight port map(
		A => A,
		B	=> B,
		S => shrResult
	);

U7: shiftRightArithmetic port map(
		A => A,
		B	=> B,
		S => shraResult
	);

U8: rotateLeft port map(
		A => A,		
		B	=> B,
		S => rolResult
	);

U9: rotateRight port map(
		A => A,
		B	=> B,
		S => rorResult
	);	
	
U10: thirtyTwoBitRippleCarrySubtractor	port map(
		A		=> A,
		B		=> B,
		Cin	=> wastedCarryInSub,
		S		=> subResult,
		Cout	=> wastedCarryOutSub 	
	);	
	
U11: divider port map(
		denom			=> A,
		numer			=> B,
		quotient		=> divResult1,
		remain		=> divResult2
	);
U12: booth_multiplier port map(
		A => A,
		B => B,
		C => mulResult
);
U13: pcIncrement port map(
		B		=> B,
		Cin	=> wastedCarryInPC,
		S		=> pcResult,
		Cout 	=> wastedCarryOutPC
	);

	
process(control, addResult, subResult, mulResult, divResult1, divResult2, shlResult, shrResult, shraResult, rolResult, rorResult, andResult, orResult, negResult)
begin
	if addResult(31) = '1' and control = "00000000000001" then
		chooseSignage <= everything;
	elsif addResult(31) = '0' and control = "00000000000001" then
		chooseSignage <= nothing;
	end if;
	
	if subResult(31) = '0' and control = "00000000000010" then
		chooseSignage <= everything;
	elsif subResult(31) = '1' and control = "00000000000010" then
		chooseSignage <= nothing;
	end if;
	
	
--	C <= nothing & shlResult;
	case control is
		when "00000000000001" => C <= chooseSignage & addResult;		--ADD 2's complement
		when "00000000000010" => C <= chooseSignage & subResult;		--SUB 2's complement
		when "00000000000100" => C <= mulResult;			 		--MUL 2's complement
		when "00000000001000" =>	C <= divResult1 & divResult2;	--divResult--DIV 2's complement
		when "00000000010000" => C <= nothing & shlResult;		--SHL 2's complement
		when "00000000100000" => C <= nothing & shrResult;		--SHR 2's complement
		when "00000001000000" => C <= nothing & shraResult;		--SHRA 2's complement
		when "00000010000000" => C <= nothing & rolResult;		--ROR 2's complement
		when "00000100000000" => C <= nothing & rorResult;		--ROL 2's complement
		when "00001000000000" => C <= nothing & andResult;		--AND 2's complement
		when "00010000000000" => C <= nothing & orResult;		--OR 2's complement
		when "00100000000000" => C <= nothing & negResult;		--NEG 2's complement
		when "01000000000000" => C <= nothing & pcResult;		--PC 2's complement
		when others 			=> C <= nothing & notResult;		--NOT 1's complement
	end case;
end process;

end behaviour;	