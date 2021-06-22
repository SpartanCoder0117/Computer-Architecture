library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity ucg00 is
	port(
		clkuc: in std_logic;
		enableuc: in std_logic;
		inuc: in std_logic_vector(7 downto 0);
		inFlaguc: in std_logic;
		outuc: out std_logic_vector(7 downto 0);
		outFlaguc: out std_logic);
end ucg00;	



architecture ucg0 of ocg00 is
begin
if (clkuc'event and clkuc = '1') then
	case enableuc is
	when '0' =>
		outuc <= (others => '0');
		outFlaguc <= '0';
	when '1' =>
		
	when others => null;
	end case;
end if;
end ucg0;