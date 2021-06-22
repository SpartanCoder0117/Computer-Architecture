library ieee;
library lattice;
use ieee.std_logic_1164.all;
use lattice.components.all;

entity and00 is
port(
	Aa : in std_logic;	
	Ba : in std_logic;
	ya : out std_logic);
end and00;

architecture and0 of and00 is
begin

Ya<= Aa and Ba;

end and0;