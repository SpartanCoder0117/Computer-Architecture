library ieee;
library lattice;
use ieee.std_logic_1164.all;
use lattice.components.all;

package packagefa00 is

	component ha00
	port(
	A0, B0 : in std_logic;
	S0, C0 : out std_logic
	);
	end component;
	
	component or00
	port(
	Ao : in std_logic;
	Bo : in std_logic;
	Yo : out std_logic
	);
	end component;
	
end packagefa00;