library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;


entity coder00 is
	port(
		clkcd: in std_logic;
		enablecd: in std_logic;
		rwcd: in std_logic;
		inkeycd: in std_logic_vector (3 downto 0);
		incontcd: in std_logic_vector (3 downto 0);
		outcodercd: out std_logic_vector (6 downto 0);
		outcontwcd: inout std_logic_vector (4 downto 0);
		outflagcd: out std_logic);
end coder00;

architecture coder0 of coder00 is
begin
pcoder: process (clkcd,incontcd)
variable aux0: bit:='0';
variable aux1: bit:='0';
variable aux2: bit:='0';
variable aux3: bit:='0';
	begin
	if(clkcd' event and clkcd='1') then
	if (enablecd = '0') then
		outcodercd <= (others => '1');
		outcontwcd <= (others => '1');
		outflagcd <= '0';
	elsif ((enablecd = '1') and (rwcd = '1')) then
		outcontwcd <= outcontwcd;
	elsif ((enablecd = '1') and (rwcd = '0')) then	
		case incontcd is
		when "1000" => --FILA 1
			case inkeycd is
			  when "0000" =>
				aux0:='0';
			      outcontwcd <= outcontwcd ;
				  outflagcd <= '0';
			  when "0001" =>
				if (aux0 = '0') then
				  aux0:= '1';
				  outcodercd <= "1001111"; --1
				  outcontwcd <= outcontwcd + '1' ;
				  outflagcd <= '1';
				end if;
			  when "0010" =>
				if (aux0 = '0') then
				  aux0:= '1';
				  outcodercd <= "0010010"; --2
				  outcontwcd <= outcontwcd + '1' ;
				  outflagcd <= '1';
				end if;
			  when "0100" =>
				if (aux0 = '0') then
				  aux0:= '1';
				  outcodercd <= "0000110"; --3
				  outcontwcd <= outcontwcd + '1' ;
				  outflagcd <= '1';
				end if;
			  when "1000" =>
				if (aux0 = '0') then
				  aux0:= '1';
				  outcodercd <= "0001000"; --A
				  outcontwcd <= outcontwcd + '1' ;
				  outflagcd <= '1';
				end if;
			  when others => null;
			end case;
			
		when "0100" => --FILA 2
			case inkeycd is
			  when "0000" =>
				aux1:='0';
				 outcontwcd <= outcontwcd ;
				 outflagcd <= '0';
			  when "0001" =>
				if (aux1 = '0') then
				  aux1:= '1';
				  outcodercd <= "1001100"; --4
				  outcontwcd <= outcontwcd + '1' ;
				  outflagcd <= '1';
				end if;
			  when "0010" =>
				if (aux1 = '0') then
				  aux1:= '1';
				  outcodercd <= "0100100"; --5
				  outcontwcd <= outcontwcd + '1' ;
				  outflagcd <= '1';
				end if;
			  when "0100" =>
				if (aux1 = '0') then
				  aux1:= '1';
				  outcodercd <= "0100000"; --6
				  outcontwcd <= outcontwcd + '1' ;
				  outflagcd <= '1';
				end if;
			  when "1000" =>
				if (aux1 = '0') then
				  aux1:= '1';
				  outcodercd <= "1100000"; --b
				  outcontwcd <= outcontwcd + '1' ;
				  outflagcd <= '1';
				end if;
			  when others => null;
			end case;
			
		when "0010" =>		--FILA 3
			case inkeycd is
			  when "0000" =>
				aux2:='0';
				 outcontwcd <= outcontwcd ;
				  outflagcd <= '0';
			  when "0001" =>
				if (aux2 = '0') then
				  aux2:= '1';
				  outcodercd <= "0001111"; --7
				  outcontwcd <= outcontwcd + '1' ;
				  outflagcd <= '1';
				end if;
			  when "0010" =>
				if (aux2 = '0') then
				  aux2:= '1';
				  outcodercd <= "0000000"; --8
				  outcontwcd <= outcontwcd + '1' ;
				  outflagcd <= '1';
				end if;
			  when "0100" =>
				if (aux2 = '0') then
				  aux2:= '1';
				  outcodercd <= "0001100"; --9
				  outcontwcd <= outcontwcd + '1' ;
				  outflagcd <= '1';
				end if;
			  when "1000" =>
				if (aux2 = '0') then
				  aux2:= '1';
				  outcodercd <= "0110001"; --c
				  outcontwcd <= outcontwcd + '1' ;
				  outflagcd <= '1';
				end if;
			  when others => null;
			end case;
			
		when "0001" => --Fila 4
		case inkeycd is
			  when "0000" =>
				aux3:='0';
				 outcontwcd <= outcontwcd ;
				  outflagcd <= '0';
			  when "0001" =>
				if (aux3 = '0') then
				  aux3:= '1';
				  outcodercd <= "0000001"; --0
				  outcontwcd <= outcontwcd + '1' ;
				  outflagcd <= '1';
				end if;
			  when "0010" =>
				if (aux3 = '0') then
				  aux1:= '1';
				  outcodercd <= "1100010"; --*
				  outcontwcd <= outcontwcd + '1' ;
				  outflagcd <= '1';
				end if;
			  when "0100" =>
				if (aux3 = '0') then
				  aux3:= '1';
				  outcodercd <= "0011100"; --+
				  outcontwcd <= outcontwcd + '1' ;
				  outflagcd <= '1';
				end if;
			  when "1000" =>
				if (aux3 = '0') then
				  aux3:= '1';
				  outcodercd <= "1111110"; ---
				  outcontwcd <= outcontwcd + '1' ;
				  outflagcd <= '1';
				end if;
			  when others => null;
			end case;
		when others => null;
		end case; --incont
		end if; --enable y rwcd
		end if; -- clk
	end process pcoder;

end coder0;