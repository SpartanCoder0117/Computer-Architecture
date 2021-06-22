library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity lcdcontdata00 is
  port(
       clkcd: in std_logic;
	   resetcd: in std_logic;
	   inFlagcd: in std_logic;
	   outcd: inout std_logic_vector(4 downto 0);
	   RWcd: out std_logic;
	   RScd: out std_logic;
	   ENcd: out std_logic;
       outFlagcd: out std_logic);
end lcdcontdata00;

architecture lcdcontdata0 of lcdcontdata00 is
begin
  pcd: process(clkcd)
  variable aux: bit:='0';
  begin
    if (clkcd'event and clkcd = '1') then
	  case resetcd is
	    when '0' =>
		  outcd <= (others => '0');
		when '1' =>
		  case inFlagcd is
		    when '0' =>
			  outcd <= "00000";
			when '1' =>
			  if ((aux = '0') and (outcd < "11010")) then
			    aux:='1';
				outFlagcd <= '1';
				RWcd <= '0';
				RScd <= '1';
				ENcd <= '1';
			  elsif (aux = '1') then
			    aux:='0';
				outcd <= outcd + '1';
				outFlagcd <= '0';
				RWcd <= '0';
				RScd <= '1';
				ENcd <= '0';
			  end if;
			when others => null;
		  end case;
		when others => null;
	  end case;
	end if;
  end process pcd;
end lcdcontdata0;