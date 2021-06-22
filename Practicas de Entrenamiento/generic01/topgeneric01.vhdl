library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;
use packagegeneric01.all;

entity topgeneric01 is
  port(
       clk0: inout std_logic;
	   cdiv0: in std_logic_vector(4 downto 0);
	   enableg0: in std_logic;
	   codopg0: in std_logic_vector(4 downto 0);
	   inFlagg0: inout std_logic;
	   outFlagg0: inout std_logic;
	   outLED0: inout std_logic;
	   portgA0: in std_logic_vector(7 downto 0);
	   portgB0: in std_logic_vector(7 downto 0);
       outg0: out std_logic_vector(15 downto 0));
end topgeneric01;

architecture topgeneric0 of topgeneric01 is
signal soutg: std_logic_vector(15 downto 0);
signal soutmg: std_logic_vector(15 downto 0);
signal sadd: std_logic_vector(15 downto 0);
signal smult: std_logic_vector(15 downto 0);
signal sSL, soverflow, soutoverflow: std_logic;
begin

  G00: toposc00 port map(oscout0 => clk0,
                         indiv0 => cdiv0);
  
  G01: andg00 port map(clkga => clk0,
                       codopga => codopg0,
					   portAga => portgA0,
					   portBga => portgB0,
					   inFlaga => outFlagg0,
					   outga => soutg,
                       outFlaga => inFlagg0);
  
  G02: xorg00 port map(clkgx => clk0,
                       codopgx => codopg0,
					   portAgx => portgA0,
					   portBgx => portgB0,
					   inFlagx => outFlagg0,
					   outgx => soutg,
                       outFlagx => inFlagg0);
					   
  G03: topadder8bit00 port map(SL => sSL,
                               Ai => portgA0,
							   Bi => portgB0,
							   So => sadd,
                               LED => soverflow);


  G04: addg00 port map(clkgadd => clk0,
                       codopgadd => codopg0,
					   inLEDadd => soverflow,
					   inadd => sadd,
					   inFlagadd => outFlagg0,
					   outgadd => soutg,
					   outoverflowadd  => soutoverflow,
					   outSL => sSL,
                       outFlagadd => inFlagg0);

  G05: substg00 port map(clkgsub => clk0,
                       codopgsub => codopg0,
					   inLEDsub => soverflow,
                       insub => sadd,
					   inFlagsub => outFlagg0,
					   outgsub => soutg,
					   outoverflowsub => soutoverflow,
					   outSLsub => sSL,
                       outFlagsub => inFlagg0);
  
  G06: uc00 port map(clkuc => clk0,
                     enableuc => enableg0,
					 overflowuc => soutoverflow,
					 inuc => soutg,
					 inFlaguc => inFlagg0,
					 outoverfuc => outLED0,
					 outuc => outg0,
                     outFlaguc => outFlagg0);
					 
  G07: org00 port map(clkgo => clk0,
                       codopgo => codopg0,
					   portAgo => portgA0,
					   portBgo => portgB0,
					   inFlago => outFlagg0,
					   outgo => soutg,
                       outFlago => inFlagg0);

  G08: nandg00 port map(clkgna => clk0,
                       codopgna => codopg0,
					   portAgna => portgA0,
					   portBgna => portgB0,
					   inFlagna => outFlagg0,
					   outgna => soutg,
                       outFlagna => inFlagg0);	

  G09: norg00 port map(clkgnor => clk0,
                       codopgnor => codopg0,
					   portAgnor => portgA0,
					   portBgnor => portgB0,
					   inFlagnor => outFlagg0,
					   outgnor => soutg,
                       outFlagnor => inFlagg0);	

  G10: xnorg00 port map(clkgxnor => clk0,
                       codopgxnor => codopg0,
					   portAgxnor => portgA0,
					   portBgxnor => portgB0,
					   inFlagxnor => outFlagg0,
					   outgxnor => soutg,
                       outFlagxnor => inFlagg0);
					   
  G11: notg00 port map(clkgnot => clk0,
                       codopgnot => codopg0,
					   portAgnot => portgA0,
					   --portBgnot => portgB0,
					   inFlagnot => outFlagg0,
					   outgnot => soutg,
                       outFlagnot => inFlagg0);
					   
 G12: topmult8bit00 port map(  Am8 => portgA0,
							   Bm8 => portgB0,
							   Rm8 => smult); 

 G13: multg00 port map(clkgmult => clk0,
                       codopgmult => codopg0,
					   inmult => smult,
					   inFlagmult => outFlagg0,
					   outgmult => soutmg,
                       outFlagmult => inFlagg0);


end topgeneric0;