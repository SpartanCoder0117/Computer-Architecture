library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity or00 is
	port(
		Ao: in std_logic;
		Bo: in std_logic;
		Yo: out std_logic);
end or00;

Architecture or0 of or00 is
begin
	Yo <= Ao xor Bo;
end or0;