library ieee;
library lattice;
use ieee.std_logic_1164.all;
use lattice.components.all;

entity compuertas00 is
port(
	Ac: in std_logic_vector (7 downto 0);
	Bc: in std_logic_vector (7 downto 0);
	Selc: in std_logic_vector (2 downto 0);
	Sc: out std_logic_vector(7 downto 0)
	);
end compuertas00;

architecture compuertas0 of compuertas00 is
begin
	process (Ac,Bc,Selc) is
	begin
		case Selc is
		when "001" => Sc <= (Ac and Bc);
		when "011" => Sc <= (Ac or Bc);
		when "010" => Sc <= (not Ac);
		when "110" => Sc <= (Ac xor Bc);
		when "111" => Sc <= (Ac nand Bc);
		when "101" => Sc <= (Ac nor Bc);
		when "100" => Sc <= (Ac xnor Bc);
		when others => Sc <= "00000000";
		end case;
	end process;	
end compuertas0;