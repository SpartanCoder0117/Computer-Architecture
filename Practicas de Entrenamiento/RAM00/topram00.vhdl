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
		enable0: in std_logic;
		cdiv0:in std_logic_vector(4 downto 0);
		rw0:in std_logic;
		inkey0:in std_logic_vector(3 downto 0);
		outcrLed0: inout std_logic_vector(3 downto 0); --Salida led anillo
		outcrK0: inout std_logic_vector(3 downto 0); -- Salida teclado
		outcontW0: inout std_logic_vector(4 downto 0);
		outcontR0: inout std_logic_vector(4 downto 0);
		outWord0: out std_logic_vector(6 downto 0);
		outtransist0: out std_logic_vector(3 downto 0);
		outFlag0: inout std_logic
	);
end entity ; -- topram00
architecture topram0 of topram00 is
signal soutcr: std_logic_vector(3 downto 0);
signal soutcodercd:std_logic_vector(6 downto 0);
signal soutwordra:std_logic_vector(6 downto 0);
begin
	RA00: toposcdiv00 port map(
		outdiv0=>clk0,
		indiv0=>cdiv0
	);
	RA01: contring00 port map(
		clkr=>clk0,
		enable=>enable0,
		rw=>rw0,
		outr=>soutcr
	);
	RA02: coder00 port map(
		clkcd=>clk0,
		enablecd=>enable0,
		rwcd=>rw0,
		inkeycd=>inkey0,
		incontcd=>soutcr,
		outcontwcd=>outcontW0,
		outcodercd=>soutcodercd,
		outFlagcd =>outFlag0
	);
	RA03: ram00 port map(
		clkra=>clk0,
		enablera=>enable0,
		rwra=>rw0,
		indirWra=>outcontW0,
		indirRra=>outcontR0,
		inwordra=>soutcodercd,
		outwordra=>soutwordra,
		inFlagra=>outFlag0
	);
	RA04: mux00 port map(
		rwrm=>rw0,
		enablem=>enable0,
		inwordkeym=>soutcodercd,
		inwordramm=>soutwordra,
		outwordm=>outWord0
	);
	RA05: contReadRa00 port map(
		clkrd=>clk0,
		enablerd=>enable0,
		rwrd=>rw0,
		incontWrd=>outcontW0,
		outcontRrd=>outcontR0
	);
	outcrLed0<=soutcr;
	outcrK0<=soutcr;
	outtransist0<="1110";--Son displays de catodo
end architecture ; -- topram0