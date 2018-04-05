library ieee;
use ieee.std_logic_1164.all;

library work;
entity selectAndEncodeSubComponent3 is
port(
	input 					: in std_logic_vector(31 downto 0);
	output					: out std_logic_vector(31 downto 0)
);
end entity;

architecture behaviour of selectAndEncodeSubComponent3 is

begin

--control of extention is on 0x00040000 (3rd bit of 4th "group")
output(31 downto 18) <= (others => input(18));
output(17 downto 0) <= input(17 downto 0);
end behaviour;

--CONFIRMED TO WORK