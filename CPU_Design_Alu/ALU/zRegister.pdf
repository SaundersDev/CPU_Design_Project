library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

entity zRegister is
	port(
	C : in std_logic_vector(63 downto 0);
	
	Zhigh, Zlow : out std_logic_vector(31 downto 0)
	);
end zRegister;

architecture behaviour of zRegister is
begin
	Zhigh <= C(63 downto 32);
	Zlow <= C(31 downto 0);
end behaviour;