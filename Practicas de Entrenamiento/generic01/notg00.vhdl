library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity notg00 is
  port(
       clkgnot: in std_logic;
	   inFlagnot: in std_logic;
	   codopgnot: in std_logic_vector(4 downto 0);
	   portAgnot: in std_logic_vector(7 downto 0);
	   --portBgnot: in std_logic_vector(7 downto 0);
	   outgnot: out std_logic_vector(15 downto 0);
       outFlagnot: out std_logic);
end notg00;

architecture notg0 of notg00 is
begin
  pnotg: process(clkgnot)
  variable aux: bit:='0';
  begin
    if (clkgnot'event and clkgnot = '1') then
		if (codopgnot = "00011") then
		  case inFlagnot is
			when '1' =>
			   if (aux = '0') then
				 aux:='1';
				 outgnot <= "00000000" & not(portAgnot);
				 outFlagnot <= '1';
			   else
				 outFlagnot <= '0';
			   end if;
			when '0' =>
			   outFlagnot <= '0';
			when others => null;
		  end case;
		else
		  outgnot <= (others => 'Z');
		  outFlagnot <= 'Z';
		  aux:='0';
		end if;-- codop
	end if;-- clk
  end process pnotg;
end notg0;