library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity sumador is
	port(
		Aa: in std_logic_vector(3 downto 0);
		Bb: in std_logic_vector(3 downto 0);
		Sel: in std_logic;
		sal: out std_logic_vector(3 downto 0)
	);
end sumador;

architecture behavior of sumador is
begin
		process(Sel)
		begin
			if(Sel = '0')then
				sal <= Aa + Bb;
			else
				sal <= Aa - Bb;
			end if;
		end process;
end behavior;