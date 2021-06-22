library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;
use packagekey00.all;

entity topkey00 is	port(
		clk0: inout std_logic;
		cdiv0: in std_logic_vector(4 downto 0);
		en0: in std_logic;
		inkey0: in std_logic_vector(3 downto 0);
		outr0: inout std_logic_vector(3 downto 0);
		outtransist0: out std_logic_vector(3 downto 0);
		outcoder0: out std_logic_vector(6 downto 0));
end topkey00;

architecture topkey0 of topkey00 is
begin

	k00: toposcdiv00 port map(outdiv0 => clk0,
							  indiv0 => cdiv0);

	k01: contring00 port map (clkr => clk0,
							  enable => en0,
							   outr => outr0);
							   
	k02: coder00 port map(clkc => clk0,
						  inkey => inkey0,
						  incont => outr0,
						  outcoder => outcoder0);

	outtransist0 <= "1110";

end topkey0;
