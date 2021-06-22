library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity multg00 is
  port(
       clkgmult: in std_logic;
	   inFlagmult: in std_logic;
	   --inLEDmult: in std_logic;
	   codopgmult: in std_logic_vector(4 downto 0);
	   inmult: in std_logic_vector(15 downto 0);
	   outgmult: out std_logic_vector(15 downto 0);
	   --outSL: out std_logic;
	   --outoverflowmult: out std_logic;
       outFlagmult: out std_logic);
end multg00;

architecture multg0 of multg00 is
begin
  pmultg: process(clkgmult)
  variable aux: bit:='0';
  begin
    if (clkgmult'event and clkgmult = '1') then
		if (codopgmult = "01001") then
		  case inFlagmult is
			when '1' =>
			   if (aux = '0') then
				 aux:='1';
				 outFlagmult <= '0';
				-- outSL <= '0';
			   else
				 outFlagmult <= '1';
				 outgmult <= inmult;
				 --outoverflowmult <= inLEDmult;
			   end if;
			when '0' =>
			   outFlagmult <= '0';
			when others => null;
		  end case;
		else
		  outgmult <= (others => 'Z');
		  outFlagmult <= 'Z';
		  --outSL <= 'Z';
		  --outoverflowmult <= 'Z';
		  aux:='0';
		end if;-- codop
	end if;-- clk
  end process pmultg;
end multg0;