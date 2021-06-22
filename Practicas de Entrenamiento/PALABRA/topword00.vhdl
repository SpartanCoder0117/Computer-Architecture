library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;
use packagediv00.all;
use packageword00.all;

entity topword00 is 
	port(
		clk0: inout std_logic;
		cdiv0: in std_logic_vector(3 downto 0);
		en0: in std_logic;
		outtrans: inout std_logic_vector(3 downto 0);
		outcoder0: out std_logic_vector(6 downto 0)
	);
end topword00;

architecture behavior of topword00 is
begin
	W00: toposcdiv00 port map(outdiv0 => clk0,
								indiv0 => cdiv0);
								
	W01: contring00 port map(clkr => clk0,
							 enable => en0,
							 outr => outtrans);
							 
	W02: coder00 port map(intcont => outtrans,
						  outcoder => outcoder0
						);
end behavior;