library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity shiftL00 is
	port(
		clks: in std_logic;
		enable: in std_logic;
		limite: in std_logic_vector(2 downto 0);
		ins: std_logic_vector (7 downto 0);
		outs: out std_logic_vector (7 downto 0));
end shiftL00;

architecture shiftL0 of shiftL00 is
signal sins: std_logic_vector(7 downto 0);
signal scont: std_logic_vector();
begin
	ps: process(clks)
	begin
		if(clks'event and clks = '1')then
			case enable is
			when '0' => 
			  sins <= ins;
			  outs <= (others => '0'); --"00000000"
			when '1' =>
			sins(0)<='0';
			sins(7 downto 1) <= sins (6 downto 0);
			outs<=sins;
			else
			
			when others => null;
			end case;
		end if;
	end process ps;

end shiftL0;
