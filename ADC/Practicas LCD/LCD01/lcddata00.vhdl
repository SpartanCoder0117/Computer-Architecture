library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity lcddata00 is
  port(
       clkdd: in std_logic;
	   resetdd: in std_logic;
	   inFlagdd: in std_logic;
	   inFlagcf: in std_logic;
	   indirdd: in std_logic_vector(4 downto 0);
	   outworddd: out std_logic_vector(7 downto 0);
       outFlagdd: out std_logic);
end lcddata00;

architecture lcddata0 of lcddata00 is
type arraydata is array(0 to 63) of std_logic_vector(7 downto 0);
constant worddata: arraydata:=("00100000",-- espacio
							   "01001010",--J
							   "01101111",--o
							   "01110011",--s
							   "01110101",--u
							   "01100101",--e
							   "00101110",--.
							   "00100000",-- espacio
                               others => "10100101");
begin
 pdata: process(clkdd, indirdd)
 begin
	if(clkdd'event and clkdd = '1') then
		case resetdd is
			when '0' =>
				outworddd <= "00100010";
				outFlagdd <= '0';
			when '1' =>
				case inFlagcf is
				    when '0' => 
					    outworddd <= (others => '0');
				        outFlagdd <= '0';
					when '1' => 
					     if (inFlagdd = '1') then
						   outworddd <= worddata(conv_integer(indirdd));
						 end if; 
					when others => null;
				end case;
			when others => null;
		end case;
	end if;
 end process pdata;
end lcddata0;