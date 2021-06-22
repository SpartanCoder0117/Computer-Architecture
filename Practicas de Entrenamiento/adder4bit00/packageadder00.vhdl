library ieee;
library lattice;
use ieee.std_logic_1164.all;
use lattice.components.all;

package packageadder00 is

	component xor00
	port(
	Ax : in std_logic;
	Bx : in std_logic;
	Yx : out std_logic
	);
	end component;
	
	component fa00
	port(
		C00, A00, B00: in std_logic;
		S00, C01: out std_logic
	);
	end component;
	
	component xnor00
	port(
	Anx : in std_logic;
	Bnx : in std_logic;
	Ynx : out std_logic
   );
	end component;
	
	component and00
	port(
	Aa : in std_logic;	
	Ba : in std_logic;
	ya : out std_logic);
	end component;

end packageadder00;