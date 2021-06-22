library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity nandg00 is
  port(
       clkgna: in std_logic;
	   inFlagna: in std_logic;
	   codopgna: in std_logic_vector(4 downto 0);
	   portAgna: in std_logic_vector(7 downto 0);
	   portBgna: in std_logic_vector(7 downto 0);
	   outgna: out std_logic_vector(15 downto 0);
       outFlagna: out std_logic);
end nandg00;

architecture nandg0 of nandg00 is
begin
  pnandg: process(clkgna)
  variable aux: bit:='0';
  begin
    if (clkgna'event and clkgna = '1') then
		if (codopgna = "00100") then
		  case inFlagna is
			when '1' =>
			   if (aux = '0') then
				 aux:='1';
				 outgna <= "00000000" & (portAgna nand portBgna);
				 outFlagna <= '1';
			   else
				 outFlagna <= '0';
			   end if;
			when '0' =>
			   outFlagna <= '0';
			when others => null;
		  end case;
		else
		  outgna <= (others => 'Z');
		  outFlagna <= 'Z';
		  aux:='0';
		end if;-- codop
	end if;-- clk
  end process pnandg;
end nandg0;