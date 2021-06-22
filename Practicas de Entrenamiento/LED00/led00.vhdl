library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;

entity led00 is
port(
	led: out std_logic;
	led1:out std_logic;
	led2: out std_logic);
end led00;

architecture led0 of led00 is
begin
 led <= '0';
 led1 <= '1';
 led2 <= '0';
end led0;