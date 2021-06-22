library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity norg00 is
  port(
       clkgnor: in std_logic;
	   inFlagnor: in std_logic;
	   codopgnor: in std_logic_vector(4 downto 0);
	   portAgnor: in std_logic_vector(7 downto 0);
	   portBgnor: in std_logic_vector(7 downto 0);
	   outgnor: out std_logic_vector(15 downto 0);
       outFlagnor: out std_logic);
end norg00;

architecture norg0 of norg00 is
begin
  pnorg: process(clkgnor)
  variable aux: bit:='0';
  begin
    if (clkgnor'event and clkgnor = '1') then
		if (codopgnor = "00101") then
		  case inFlagnor is
			when '1' =>
			   if (aux = '0') then
				 aux:='1';
				 outgnor <= "00000000" & (portAgnor nor portBgnor);
				 outFlagnor <= '1';
			   else
				 outFlagnor <= '0';
			   end if;
			when '0' =>
			   outFlagnor <= '0';
			when others => null;
		  end case;
		else
		  outgnor <= (others => 'Z');
		  outFlagnor <= 'Z';
		  aux:='0';
		end if;-- codop
	end if;-- clk
  end process pnorg;
end norg0;