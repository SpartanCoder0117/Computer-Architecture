library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity org00 is
  port(
       clkgo: in std_logic;
	   inFlago: in std_logic;
	   codopgo: in std_logic_vector(4 downto 0);
	   portAgo: in std_logic_vector(7 downto 0);
	   portBgo: in std_logic_vector(7 downto 0);
	   outgo: out std_logic_vector(15 downto 0);
       outFlago: out std_logic);
end org00;

architecture org0 of org00 is
begin
  porg: process(clkgo)
  variable aux: bit:='0';
  begin
    if (clkgo'event and clkgo = '1') then
		if (codopgo = "00001") then
		  case inFlago is
			when '1' =>
			   if (aux = '0') then
				 aux:='1';
				 outgo <= "00000000" & (portAgo or portBgo);
				 outFlago <= '1';
			   else
				 outFlago <= '0';
			   end if;
			when '0' =>
			   outFlago <= '0';
			when others => null;
		  end case;
		else
		  outgo <= (others => 'Z');
		  outFlago <= 'Z';
		  aux:='0';
		end if;-- codop
	end if;-- clk
  end process porg;
end org0;