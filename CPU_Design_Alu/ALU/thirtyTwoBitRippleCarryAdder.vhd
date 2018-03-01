library ieee;
USE ieee.std_logic_1164.all; 



entity thirtyTwoBitRippleCarryAdder is 
	port
	(
		A		:   in std_logic_vector(31 downto 0);
		B		:	in std_logic_vector(31 downto 0);
		Cin	:  in std_logic;
		S		:  out std_logic_vector(31 downto 0);
		Cout 	:  out std_logic
	);
end thirtyTwoBitRippleCarryAdder;

architecture bdf_type OF thirtyTwoBitRippleCarryAdder IS
	
signal c0, c1, c2, c3, c4, c5, c6, c7, c8,
		 c9, c10, c11, c12, c13, c14, c15, c16,
		 c17, c18, c19, c20, c21, c22, c23, c24,
		 c25, c26, c27, c28, c29, c30				: STD_LOGIC;

component fullAdder
	port(
		A :	IN  STD_LOGIC;
		B :	IN  STD_LOGIC;
		Cin :	IN  STD_LOGIC;
		S :	OUT  STD_LOGIC;
		Cout: OUT  STD_LOGIC);
		end component;

begin
U0: fullAdder PORT MAP(A => 	A(0),
									  B => 	B(0),
									  Cin =>	Cin,
									  S	=> S(0),
									  Cout => c0
									  );
									  
U1: fullAdder PORT MAP(A => 	A(1),
									  B => 	B(1),
									  Cin =>	c0,
									  S	=> S(1),
									  Cout => c1
									  );
									  
U2: fullAdder PORT MAP(A => 	A(2),
									  B => 	B(2),
									  Cin =>	c1,
									  S	=> S(2),
									  Cout => c2
									  );
									  
U3: fullAdder PORT MAP(A => 	A(3),
									  B => 	B(3),
									  Cin =>	c2,
									  S	=> S(3),
									  Cout => c3
									  );
									  
U4: fullAdder PORT MAP(A => 	A(4),
									  B => 	B(4),
									  Cin =>	c3,
									  S	=> S(4),
									  Cout => c4
									  );
									  
U5: fullAdder PORT MAP(A => 	A(5),
									  B => 	B(5),
									  Cin =>	c4,
									  S	=> S(5),
									  Cout => c5
									  );
									  
U6: fullAdder PORT MAP(A => 	A(6),
									  B => 	B(6),
									  Cin =>	c5,
									  S	=> S(6),
									  Cout => c6
									  );
									  
U7: fullAdder PORT MAP(A => 	A(7),
									  B => 	B(7),
									  Cin =>	c6,
									  S	=> S(7),
									  Cout => c7
									  );
									  
U8: fullAdder PORT MAP(A => 	A(8),
									  B => 	B(8),
									  Cin =>	c7,
									  S	=> S(8),
									  Cout => c8
									  );
									  
U9: fullAdder PORT MAP(A => 	A(9),
									  B => 	B(9),
									  Cin =>	c8,
									  S	=> S(9),
									  Cout => c9
									  );
									  
U10: fullAdder PORT MAP(A => 	A(10),
									  B => 	B(10),
									  Cin =>	c9,
									  S	=> S(10),
									  Cout => c10
									  );
									  
U11: fullAdder PORT MAP(A => 	A(11),
									  B => 	B(11),
									  Cin =>	c10,
									  S	=> S(11),
									  Cout => c11
									  );
									  
U12: fullAdder PORT MAP(A => 	A(12),
									  B => 	B(12),
									  Cin =>	c11,
									  S	=> S(12),
									  Cout => c12
									  );
									  
U13: fullAdder PORT MAP(A => 	A(13),
									  B => 	B(13),
									  Cin =>	c12,
									  S	=> S(13),
									  Cout => c13
									  );
									  
U14: fullAdder PORT MAP(A => 	A(14),
									  B => 	B(14),
									  Cin =>	c13,
									  S	=> S(14),
									  Cout => c14
									  );
									  
U15: fullAdder PORT MAP(A => 	A(15),
									  B => 	B(15),
									  Cin =>	c14,
									  S	=> S(15),
									  Cout => c15
									  );
									  
U16: fullAdder PORT MAP(A => 	A(16),
									  B => 	B(16),
									  Cin =>	c15,
									  S	=> S(16),
									  Cout => c16
									  );
									  
U17: fullAdder PORT MAP(A => 	A(17),
									  B => 	B(17),
									  Cin =>	c16,
									  S	=> S(17),
									  Cout => c17
									  );
									  
U18: fullAdder PORT MAP(A => 	A(18),
									  B => 	B(18),
									  Cin =>	c17,
									  S	=> S(18),
									  Cout => c18
									  );
									  
U19: fullAdder PORT MAP(A => 	A(19),
									  B => 	B(19),
									  Cin =>	c18,
									  S	=> S(19),
									  Cout => c19
									  );
									  
U20: fullAdder PORT MAP(A => 	A(20),
									  B => 	B(20),
									  Cin =>	c19,
									  S	=> S(20),
									  Cout => c20
									  );
									  
U21: fullAdder PORT MAP(A => 	A(21),
									  B => 	B(21),
									  Cin =>	c20,
									  S	=> S(21),
									  Cout => c21
									  );
									  
U22: fullAdder PORT MAP(A => 	A(22),
									  B => 	B(22),
									  Cin =>	c21,
									  S	=> S(22),
									  Cout => c22
									  );
									  
U23: fullAdder PORT MAP(A => 	A(23),
									  B => 	B(23),
									  Cin =>	c22,
									  S	=> S(23),
									  Cout => c23
									  );
									  
U24: fullAdder PORT MAP(A => 	A(24),
									  B => 	B(24),
									  Cin =>	c23,
									  S	=> S(24),
									  Cout => c24
									  );
									  
U25: fullAdder PORT MAP(A => 	A(25),
									  B => 	B(25),
									  Cin =>	c24,
									  S	=> S(25),
									  Cout => c25
									  );
									  
U26: fullAdder PORT MAP(A => 	A(26),
									  B => 	B(26),
									  Cin =>	c25,
									  S	=> S(26),
									  Cout => c26
									  );
									  
U27: fullAdder PORT MAP(A => 	A(27),
									  B => 	B(27),
									  Cin =>	c26,
									  S	=> S(27),
									  Cout => c27
									  );
									  
U28: fullAdder PORT MAP(A => 	A(28),
									  B => 	B(28),
									  Cin =>	c27,
									  S	=> S(28),
									  Cout => c28
									  );
									  
U29: fullAdder PORT MAP(A => 	A(29),
									  B => 	B(29),
									  Cin =>	c28,
									  S	=> S(29),
									  Cout => c29
									  );
									  
U30: fullAdder PORT MAP(A => 	A(30),
									  B => 	B(30),
									  Cin =>	c29,
									  S	=> S(30),
									  Cout => c30
									  );
									  
U31: fullAdder PORT MAP(A => 	A(31),
									  B => 	B(31),
									  Cin =>	c30,
									  S	=> S(31),
									  Cout => Cout
									  );
end bdf_type; 
