library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

package packageram00 is

  component toposc00
    port(
       indiv0: in std_logic_vector(4 downto 0);
       oscout0: inout std_logic);
  end component;
  
  component contring00
    port(
       clkcr: in std_logic;
	   enablecr: in std_logic;
	   rwcr: in std_logic;
       outcr: out std_logic_vector(3 downto 0));
  end component;
  
  component coder00
    port(
       clkcd: in std_logic;
	   enablecd: in std_logic;
	   rwcd: in std_logic;
	   inkeycd: in std_logic_vector(3 downto 0);
	   incontcd: in std_logic_vector(3 downto 0);
       outcodercd: out std_logic_vector(7 downto 0);
	   outcontwcd: inout std_logic_vector(4 downto 0);
	   outFlagcd: out std_logic);
  end component;
  
  component lcdconfig00
    port(
       clkc: in std_logic;
	   resetc: in std_logic;
	   inFlagc: in std_logic;
	   incontc: in std_logic_vector(4 downto 0);
	   comandoc: out std_logic_vector(7 downto 0);
	   outFlagc: out std_logic;
	   RWc: out std_logic;
	   RSc: out std_logic;
       ENc: out std_logic);
  end component;
  
  component lcdcontconfig00
    port(
       clkcc: in std_logic;
	   resetcc: in std_logic;
	   inFlagcc: in std_logic;
	   outcc: inout std_logic_vector(4 downto 0);
       outFlagcc: out std_logic);
  end component;
  
  component lcdmux00
    port(
       clklcdm: in std_logic;
	   resetlcdm: in std_logic;
	   inFlagcm: in std_logic;
	   inwordconfigm: in std_logic_vector(7 downto 0);
	   inworddatam: in std_logic_vector(7 downto 0);
	   RWcm: in std_logic;
	   RScm: in std_logic;
	   ENcm: in std_logic;
	   RWdm: in std_logic;
	   RSdm: in std_logic;
       ENddm: in std_logic;
	   outwordlcdm: out std_logic_vector(7 downto 0);
	   RWm: out std_logic;
	   RSm: out std_logic;
	   ENm: out std_logic);
  end component;

end packageram00;