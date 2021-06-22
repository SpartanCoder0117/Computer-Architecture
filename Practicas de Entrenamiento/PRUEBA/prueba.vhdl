library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;

entity prueba00 is
port(
	Aa: in std_logic_vector (7 downto 0);
	Yy: out std_logic_vector(7 downto 0)
	);
end prueba00;

architecture prueba0 of prueba00 is
begin
Yy <= Aa; 
end prueba0;