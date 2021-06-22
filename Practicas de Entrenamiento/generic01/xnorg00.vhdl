library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity xnorg00 is
  port(
       clkgxnor: in std_logic;
	   inFlagxnor: in std_logic;
	   codopgxnor: in std_logic_vector(4 downto 0);
	   portAgxnor: in std_logic_vector(7 downto 0);
	   portBgxnor: in std_logic_vector(7 downto 0);
	   outgxnor: out std_logic_vector(15 downto 0);
       outFlagxnor: out std_logic);
end xnorg00;

architecture xnorg0 of xnorg00 is
begin
  pxnorg: process(clkgxnor)
  variable aux: bit:='0';
  begin
    if (clkgxnor'event and clkgxnor = '1') then
		if (codopgxnor = "00110") then
		  case inFlagxnor is
			when '1' =>
			   if (aux = '0') then
				 aux:='1';
				 outgxnor <= "00000000" & (portAgxnor xnor portBgxnor);
				 outFlagxnor <= '1';
			   else
				 outFlagxnor <= '0';
			   end if;
			when '0' =>
			   outFlagxnor <= '0';
			when others => null;
		  end case;
		else
		  outgxnor <= (others => 'Z');
		  outFlagxnor <= 'Z';
		  aux:='0';
		end if;-- codop
	end if;-- clk
  end process pxnorg;
end xnorg0;