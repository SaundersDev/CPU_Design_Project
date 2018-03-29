library ieee;
USE ieee.std_logic_1164.all; 



entity registerFile is 
	port
	(
		clk, clr 	: in std_logic;
		Rin			: in std_logic_vector(15 downto 0);
		BusMuxOut 	: in std_logic_vector(31 downto 0);
		BusMuxInR0, BusMuxInR1, BusMuxInR2, BusMuxInR3,
		BusMuxInR4, BusMuxInR5, BusMuxInR6, BusMuxInR7,
		BusMuxInR8, BusMuxInR9, BusMuxInR10, BusMuxInR11,
		BusMuxInR12, BusMuxInR13, BusMuxInR14, BusMuxInR15 : out std_logic_vector(31 downto 0)
	);
end registerFile;

architecture behaviour of registerFile IS
	

component reg_32
	port(
		clk			: in std_logic;
		clr			: in std_logic;
		Rin 		: in std_logic;
		BusMuxOut 	: in std_logic_vector(31 downto 0);
		BusMuxIn 	: out std_logic_vector(31 downto 0)
	);
end component;

begin
U0: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 			=> Rin(0),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxInR0
				);
U1: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 			=> Rin(1),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxInR1
				);
U2: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 			=> Rin(2),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxInR2
				);
U3: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 			=> Rin(3),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxInR3
				);
U4: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 			=> Rin(4),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxInR4
				);
U5: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 			=> Rin(5),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxInR5
				);
U6: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 			=> Rin(6),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxInR6
				);
U7: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 			=> Rin(7),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxInR7
				);
U8: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 			=> Rin(8),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxInR8
				);
U9: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 			=> Rin(9),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxInR9
				);
U10: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 			=> Rin(10),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxInR10
				);				
U11: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 			=> Rin(11),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxInR11
				);
U12: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 			=> Rin(12),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxInR12
				);
U13: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 			=> Rin(13),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxInR13
				);
U14: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 			=> Rin(14),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxInR14
				);
U15: reg_32 PORT MAP(				
					clk			=> clk,
					clr			=> clr,
					Rin 			=> Rin(15),
					BusMuxOut 	=> BusMuxOut,
					BusMuxIn 	=> BusMuxInR15
				);
end behaviour; 
