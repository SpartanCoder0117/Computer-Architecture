library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

package packagegeneric01 is

  component toposc00
    port(
       indiv0: in std_logic_vector(4 downto 0);
       oscout0: inout std_logic);
  end component;
  
  component topadder8bit00
    port(
       SL: in std_logic;
	   Ai: in std_logic_vector(7 downto 0);
	   Bi: in std_logic_vector(7 downto 0);
	   So: out std_logic_vector(15 downto 0);
       LED: out std_logic);
  end component;
  
  component andg00
    port(
       clkga: in std_logic;
	   inFlaga: in std_logic;
	   codopga: in std_logic_vector(4 downto 0);
	   portAga: in std_logic_vector(7 downto 0);
	   portBga: in std_logic_vector(7 downto 0);
	   outga: out std_logic_vector(15 downto 0);
       outFlaga: out std_logic);
  end component;
  
  component xorg00
    port(
       clkgx: in std_logic;
	   inFlagx: in std_logic;
	   codopgx: in std_logic_vector(4 downto 0);
	   portAgx: in std_logic_vector(7 downto 0);
	   portBgx: in std_logic_vector(7 downto 0);
	   outgx: out std_logic_vector(15 downto 0);
       outFlagx: out std_logic);
  end component;
  
  component addg00
    port(
       clkgadd: in std_logic;
	   inFlagadd: in std_logic;
	   inLEDadd: in std_logic;
	   codopgadd: in std_logic_vector(4 downto 0);
	   inadd: in std_logic_vector(15 downto 0);
	   outgadd: out std_logic_vector(15 downto 0);
	   outSL: out std_logic;
	   outoverflowadd: out std_logic;
       outFlagadd: out std_logic);
  end component;
  
  component substg00
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
  end component;
  
  component org00
   port(
       clkgo: in std_logic;
	   inFlago: in std_logic;
	   codopgo: in std_logic_vector(4 downto 0);
	   portAgo: in std_logic_vector(7 downto 0);
	   portBgo: in std_logic_vector(7 downto 0);
	   outgo: out std_logic_vector(15 downto 0);
       outFlago: out std_logic);
  
  end component;
  
  component uc00
    port(
       clkuc: in std_logic;
	   enableuc: in std_logic;
	   overflowuc: in std_logic;
	   inuc: in std_logic_vector(15 downto 0);
	   inFlaguc: in std_logic;
	   outuc: out std_logic_vector(15 downto 0);
	   outoverfuc: out std_logic;
       outFlaguc: out std_logic);
  end component;

component nandg00
port(
       clkgna: in std_logic;
	   inFlagna: in std_logic;
	   codopgna: in std_logic_vector(4 downto 0);
	   portAgna: in std_logic_vector(7 downto 0);
	   portBgna: in std_logic_vector(7 downto 0);
	   outgna: out std_logic_vector(15 downto 0);
       outFlagna: out std_logic);


end component;

component norg00
port(
       clkgnor: in std_logic;
	   inFlagnor: in std_logic;
	   codopgnor: in std_logic_vector(4 downto 0);
	   portAgnor: in std_logic_vector(7 downto 0);
	   portBgnor: in std_logic_vector(7 downto 0);
	   outgnor: out std_logic_vector(15 downto 0);
       outFlagnor: out std_logic);


end component;

component xnorg00
 port(
       clkgxnor: in std_logic;
	   inFlagxnor: in std_logic;
	   codopgxnor: in std_logic_vector(4 downto 0);
	   portAgxnor: in std_logic_vector(7 downto 0);
	   portBgxnor: in std_logic_vector(7 downto 0);
	   outgxnor: out std_logic_vector(15 downto 0);
       outFlagxnor: out std_logic);


end component;


component notg00
port(
       clkgnot: in std_logic;
	   inFlagnot: in std_logic;
	   codopgnot: in std_logic_vector(4 downto 0);
	   portAgnot: in std_logic_vector(7 downto 0);
	   --portBgnot: in std_logic_vector(7 downto 0);
	   outgnot: out std_logic_vector(15 downto 0);
       outFlagnot: out std_logic);

end component;

component topmult8bit00
port(
       Am8: in std_logic_vector(7 downto 0);
	   Bm8: in std_logic_vector(7 downto 0);
       Rm8: out std_logic_vector(15 downto 0));
end component;


component multg00
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

end component;

end packagegeneric01;