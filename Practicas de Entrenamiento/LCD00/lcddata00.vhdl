library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity lcddata00 is
  port(
       clkdata: in std_logic;
	   resetdata: in std_logic;
	   inFlagcfdata: in std_logic;
	   inFlagcontdata: in std_logic;
	   outworddata: out std_logic_vector(7 downto 0);
	   indirread: in std_logic_vector(4 downto 0);
       outFlagdata: out std_logic);
end lcddata00;

architecture lcddata0 of lcddata00 is
type arraydata is array(0 to 64) of std_logic_vector(7 downto 0);
constant worddata: arraydata:=("01000001",--A
                               "01101100",--l
							   "01100101",--e
							   "01111000",--x
							   "00100000",-- espacio
							   "01000010",--B
							   "01110101",--u
							   "01100101",--e
							   "01101110",--n
							   "01100100",--d
							   "01101001",--i
							   "01100001",--a
							   "00100000",-- espacio
							   "01000101",--E
							   "00101110",--.
							   "00100000",-- espacio
                               others => "10100101");
begin
  pdata: process (clkdata, indirread)--resetdata, inFlagcfdata, inFlagcontdata)
  begin
    if (clkdata'event and clkdata = '1') then
		case resetdata is
		  when '0' =>
		    outworddata <= (others => '0');
			outFlagdata <= '0';
		  when '1' =>
		    case inFlagcfdata is
			  when '0' =>
		    outworddata <= (others => '0');
			outFlagdata <= '0';
			  when '1' =>
			    if (inFlagcontdata = '1') then
				  outworddata <= worddata(conv_integer(indirread));
				  outFlagdata <= '1';
				end if;
			  when others => null;
			end case;
		  when others => null;
		end case;
    end if;--clk
  end process pdata;
end lcddata0;