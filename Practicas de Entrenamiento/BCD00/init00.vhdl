library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;


entity init00 is
port(
	clkinit: in std_logic;
	codopinit: in std_logic_vector(3 downto 0);
	inFlaginit: in std_logic;
	outac8init: out std_logic_vector(7 downto 0);
	outac12init: out std_logic_vector(11 downto 0);
	outFlag8init: out std_logic;
	outFlag12init: out std_logic
);
end init00;

architecture init0 of init00 is
begin
	pinit: process(clkinit)
	variable aux0: bit:='0';
	variable aux1: bit:='0';
	begin
	 if (clkinit'event and clkinit = '1') then
		if (codopinit = "0000") then
			case inFlaginit is
				when '0' =>
					case aux0 is
					when '0' =>
						outac8init <= "00001111";
						outac12init <= "000011110000";
						outFlag8init <= '1';
						outFlag12init <= '1';
						aux0:='1';
					when '1' =>
					 outFlag8init <= '0';
						outFlag12init <= '0';
					when others => null;
					end case;
				when '1' =>
				   case aux1 is
					when '0' =>
						outac8init <= "11110000";
						outac12init <= "111100001111";
						outFlag8init <= '1';
						outFlag12init <= '1';
						aux1:='1';
					when '1' =>
					 outFlag8init <= '0';
					outFlag12init <= '0';
					when others => null;
					end case;
				when others => null;
				end case;
				
		else
		  outac8init <= (others => 'Z');
		  outac12init <= (others => 'Z');
		  outFlag8init <= 'Z';
		  outFlag12init <= 'Z';
		  aux0:='0';
		  aux1:='0';
		end if;
	 end if;
	end process pinit;
end init0;	