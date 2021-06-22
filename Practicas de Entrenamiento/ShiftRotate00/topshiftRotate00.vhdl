Library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.componentes.all;
use packageshiftRotate00.all;

entity topshiftRotate00 is 
port(
	clk0: inout std_logic;
	cdiv00: in std_logic_vector(4 downto 0);
	en0: in std_logic;
	insl0: in std_logic_vector(7 downto 0);
	sel0: in std_logic_vector(3 downto 0);
	outsl0: out std_logic_vector (7 downto 0)
	);
end topshiftRotate00;
 
architecture topshiftRotate0 of topshiftRotate00 is 
begin
	SR00: toposcdiv00 port map(cdiv0 => cdiv00,
								oscout0 => clk0);
	SR01: shiftRotate00 port map(clksl => clk0,
								enable => en0,
								insl => insl0,
								sel => sel0,
								outsl => outsl0);
end topshiftRotate0;