library ieee;
USE ieee.std_logic_1164.all; 



entity registerFile is 
	port
	(
		clk, clr 	: in std_logic;
		Rin			: in std_logic_vector(15 downto 0);
		BusMuxOut 	: in std_logic_vector(15 downto 0);
		BusMuxIn-R0, BusMuxIn-R1, BusMuxIn-R2, BusMuxIn-R3,
		BusMuxIn-R4, BusMuxIn-R5, BusMuxIn-R6, BusMuxIn-R7,
		BusMuxIn-R8, BusMuxIn-R9, BusMuxIn-R10, BusMuxIn-R11,
		BusMuxIn-R12, BusMuxIn-R13, BusMuxIn-R14, BusMuxIn-R15 : out std_logic_vector(15 downto 0)
	);
end registerFile;

architecture behaviour of registerFile IS
	

component reg_32
	port(
		clk			: in std_logic;
		clr			: in std_logic;
		Rin 		: in std_logic;
		BusMuxOut 	: in std_logic_vector(31 downto 0);
		BusMuxIn 	: out std_logic_vector(31 downto 0));
	);
end component;

begin
U0: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 		=> Rin(0),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxIn-R0
				);
U1: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 		=> Rin(1),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxIn-R1
				);
U2: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 		=> Rin(2),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxIn-R2
				);
U3: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 		=> Rin(3),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxIn-R3
				);
U4: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 		=> Rin(4),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxIn-R4
				);
U5: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 		=> Rin(5),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxIn-R5
				);
U6: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 		=> Rin(6),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxIn-R6
				);
U7: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 		=> Rin(7),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxIn-R7
				);
U8: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 		=> Rin(8),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxIn-R8
				);
U9: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 		=> Rin(9),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxIn-R9
				);
U10: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 		=> Rin(10),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxIn-R10
				);				
U11: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 		=> Rin(11),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxIn-R11
				);
U12: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 		=> Rin(12),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxIn-R12
				);
U13: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 		=> Rin(13),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxIn-R13
				);
U14: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 		=> Rin(14),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxIn-R14
				);
U15: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 		=> Rin(15),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxIn-R15
				);
end behaviour; 
