library IEEE;
use ieee.std_logic_1164.all;
 
entity shiftRotateComponent is
	port(
		B	 	: in std_logic_vector(31 downto 0);
		sL, sR, sR_A, rL, rR			: out std_logic_vector(31 downto 0)
	);
end shiftRotateComponent;
 
architecture behaviour of shiftRotateComponent is
	signal tempsL, tempsR, tempsRA, temprL, temprR : std_logic_vector(31 downto 0);
 
	begin
	tempsL(31 downto 1) <= B(30 downto 0);
	tempsL(0) <= '0';
	sL <= tempsL;

	tempsR(30 downto 0) <= B(31 downto 1);
	tempsR(31) <= '0';
	sR <= tempsR;

	tempsRA(30 downto 0) <= B(31 downto 1);
	tempsRA(31) <= B(31);
	sR_A <= tempsRA;

	temprL(31 downto 1) <= B(30 downto 0);
	temprL(0) <= B(31);
	rL <= temprL;

	temprR(30 downto 0) <= B(31 downto 1);
	temprR(31) <= B(0);
	rR <= temprR;

end behaviour;