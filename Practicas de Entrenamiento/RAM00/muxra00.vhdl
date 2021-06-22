library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;

entity muxra00 is
	port(
		enablem: in std_logic;
		rwrm: in std_logic;
		inwordkeym: in std_logic_vector(6 downto 0);
		inwordramm: in std_logic_vector(6 downto 0);
		outwordm: out std_logic_vector(6 downto 0));
end muxra00;

architecture muxra0 of muxra00 is
signal control: std_logic_vector(1 downto 0);
begin
	control <= enablem & rwrm; --Concatena vector
		with control select
			outwordm <= inwordkeym when "10",
						inwordramm when "11",
						"1111111" when others;
end muxra0;
