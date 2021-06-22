library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

package packagerom00 is

	component toposc00
		port(
		indiv0: in std_logic_vector(4 downto 0);
		outdiv0: inout std_logic);
	end component;
	
	component contReadRo00
		port(
		clkrro: in std_logic;
		enablerro: in std_logic;
		outcontrro: inout std_logic_vector(3 downto 0)
	);
	end component;
	
	component rom00 is
		port(
		clkro: in std_logic;
		enablero: in std_logic;
		indirReadRo: in std_logic_vector(3 downto 0);
		outwordro: out std_logic_vector(6 downto 0));
	end component;


end packagerom00;