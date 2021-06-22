library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity substg00 is
  port(
       clkgsub: in std_logic;
	   inFlagsub: in std_logic;
	   inLEDsub: in std_logic;
	   codopgsub: in std_logic_vector(4 downto 0);
	   insub: in std_logic_vector(15 downto 0);
	   outgsub: out std_logic_vector(15 downto 0);
	   outSLsub: out std_logic;
	   outoverflowsub: out std_logic;
       outFlagsub: out std_logic);
end substg00;

architecture substg0 of substg00 is
begin
  psubstg: process(clkgsub)
  variable aux: bit:='0';
  begin
    if (clkgsub'event and clkgsub = '1') then
		if (codopgsub = "01000") then
		  case inFlagsub is
			when '1' =>
			   if (aux = '0') then
				 aux:='1';
				 outFlagsub <= '0';
				 outSLsub <= '1';
			   else
				 outFlagsub <= '1';
				 outgsub <= insub;
				 outoverflowsub <= inLEDsub;
			   end if;
			when '0' =>
			   outFlagsub <= '0';
			when others => null;
		  end case;
		else
		  outgsub <= (others => 'Z');
		  outFlagsub <= 'Z';
		  outSLsub <= 'Z';
		  outoverflowsub <= 'Z';
		  aux:='0';
		end if;-- codop
	end if;-- clk
  end process psubstg;
end substg0;