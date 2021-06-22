library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity addg00 is
  port(
       clkgadd: in std_logic;
	   inFlagadd: in std_logic;
	   inLEDadd: in std_logic;
	   codopgadd: in std_logic_vector(4 downto 0);
	   inadd: in std_logic_vector(15 downto 0);
	   outgadd: out std_logic_vector(15 downto 0);
	   outSL: out std_logic;
	   outoverflowadd: out std_logic;
       outFlagadd: out std_logic);
end addg00;

architecture addg0 of addg00 is
begin
  paddg: process(clkgadd)
  variable aux: bit:='0';
  begin
    if (clkgadd'event and clkgadd = '1') then
		if (codopgadd = "00111") then
		  case inFlagadd is
			when '1' =>
			   if (aux = '0') then
				 aux:='1';
				 outFlagadd <= '0';
				 outSL <= '0';
			   else
				 outFlagadd <= '1';
				 outgadd <= inadd;
				 outoverflowadd <= inLEDadd;
			   end if;
			when '0' =>
			   outFlagadd <= '0';
			when others => null;
		  end case;
		else
		  outgadd <= (others => 'Z');
		  outFlagadd <= 'Z';
		  outSL <= 'Z';
		  outoverflowadd <= 'Z';
		  aux:='0';
		end if;-- codop
	end if;-- clk
  end process paddg;
end addg0;