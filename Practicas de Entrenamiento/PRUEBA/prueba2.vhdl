library ieee;
library lattice;
use ieee.std_logic_1164.all;
use lattice.components.all;

entity entidad is
port(
	A: in std_logic_vector (7 downto 0);
	S: out std_logic_vector(7 downto 0)
	);
end entidad;

architecture arq_entidad of entidad is
begin
S <= A; 
end arq_entidad;