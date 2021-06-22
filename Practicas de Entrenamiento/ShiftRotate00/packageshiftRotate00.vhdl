Library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.componentes.all;

package packageshiftRotate00 is 

	component toposcdiv00
		port(
		cdiv0: in std_logic_vector(4 downto 0);
		oscout0: inout std_logic);
	end component;
		
	component shiftRotate00
		port(
			clksl: in std_logic;
			enable: in std_logic;
			insl: in std_logic_vector(7 downto 0);
			sel: in std_logic_vector(3 downto 0);
			outsl: out std_logic_vector(7 downto 0)
		);
	end component;
end packageshiftRotate00;