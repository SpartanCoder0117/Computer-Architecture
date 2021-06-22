library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;
use packageram00.all;

entity topram00 is
  port(
       clk0: inout std_logic;
	   cdiv0: in std_logic_vector(4 downto 0);
	   enable0: in std_logic;
	   reset0: in std_logic;
	   r0: in std_logic;
	   RW0: out std_logic;
	   RS0: out std_logic;
	   EN0: out std_logic;
	   inkey0: in std_logic_vector(3 downto 0);
	   outcrLed0: inout std_logic_vector(3 downto 0);
	   outcrK0: inout std_logic_vector(3 downto 0);
	   outcontW0: inout std_logic_vector(4 downto 0);
	   outcontR0: inout std_logic_vector(4 downto 0);
	   outWord0: out std_logic_vector(7 downto 0);
	   --outtransist0: out std_logic_vector(3 downto 0);
	   outFlagcc0: inout std_logic;
	   outFlagc0: inout std_logic;
       outFlag0: inout std_logic);
end topram00;

architecture topram0 of topram00 is
signal soutcr: std_logic_vector(3 downto 0);
signal swordconfig: std_logic_vector(7 downto 0);
signal soutcodercd: std_logic_vector(7 downto 0);
signal soutwordra: std_logic_vector(7 downto 0);
signal sRWc, sRSc, sENc: std_logic;
signal sRWd, sRSd, sENd: std_logic;
begin
outcrLed0 <= soutcr;
outcrK0 <= soutcr;
--outtransist0 <= "1110";

  RA00: toposc00 port map(oscout0 => clk0,
                          indiv0 => cdiv0);
  
  RA01: contring00 port map(clkcr => clk0,
                            enablecr => reset0,
							rwcr => r0,
                            outcr => soutcr);
  
  RA02: coder00 port map(clkcd => clk0,
                         enablecd => reset0,
						 rwcd => r0,
						 inkeycd => inkey0,
						 incontcd => soutcr,
						 outcontwcd => outcontW0,
						 outcodercd => soutcodercd,
                         outFlagcd => outFlag0);

  RA03: lcdconfig00 port map(clkc => clk0,
							 resetc => enable0,
							 inFlagc => outFlagcc0,
							 incontc => outcontW0,
							 comandoc => swordconfig,
							 outFlagc => outFlagc0,
							 RWc => sRWc,
							 RSc => sRSc,
							 ENc => sENc);
  
  RA04: lcdcontconfig00 port map(clkcc => clk0,
								 resetcc => enable0,
								 inFlagcc => outFlagc0,
								 outcc => outcontR0,
								 outFlagcc => outFlagcc0);
								 
  RA05: lcdmux00 port map(clklcdm => clk0,
                         resetlcdm => reset0,
						 inFlagcm => outFlagc0,
						 inwordconfigm => swordconfig,
						 inworddatam => soutcodercd,
						 RWcm => sRWc,
						 RScm => sRSc,
						 ENcm => sENc,
						 RWdm => sRWd,
						 RSdm => sRSd,
						 ENddm => sENd,
						 outwordlcdm => outWord0,
						 RWm => RW0,
						 RSm => RS0,
                         ENm => EN0);
						 
end topram0;