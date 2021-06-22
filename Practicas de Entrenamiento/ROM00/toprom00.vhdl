library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;
use packagerom00.all;

entity toprom00 is
	port(
		clk0: inout std_Logic;
		cdiv0: in std_logic_vector(4 downto 0);
		enable0: in std_logic;
		outcontrro0: inout std_logic_vector(3 downto 0);
		outtransist0: out std_logic_vector(3 downto 0);
		outwordro0: out std_logic_vector(6 downto 0)
);
	
end toprom00;

architecture toprom0 of toprom00 is
begin
outtransist0 <= "1110";

RO00: toposc00 port map(outdiv0 => clk0,
						indiv0 => cdiv0); 


RO01: contReadRo00 port map(
							clkrro => clk0,
							enablerro => enable0,
							outcontrro => outcontrro0
							);


RO02: rom00 port map(clkro => clk0,
					enablero => enable0,
					indirReadRo => outcontrro0,
					outwordro => outwordro0			
);


end toprom0;
