library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity coder00 is 
	port(
		intcont: in std_logic_vector(3 downto 0);
		outcoder: out std_logic_vector(6 downto 0)
	);
end coder00;

architecture behavior of coder00 is
begin
	process(intcont)
	begin
		case intcont is
			when "1110" =>
				outcoder <= "0000001"; --letra o
			when "1101" =>
				outcoder <= "0100000"; --letra g
			when "1011" =>
				outcoder <= "1000001"; --letra u
			when "0111" =>
				outcoder <= "1001000"; --letra h
				
			when others => null;
		end case;
	end process;
	
end behavior;