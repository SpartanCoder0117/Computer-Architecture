library ieee;
library lattice;
use ieee.std_logic_1164.all;
use lattice.components.all;
use packageadder00.all;

entity topadder4bit00 is
port(
	SL: in std_logic;
	Ai: in std_logic_vector(3 downto 0);
	Bi: in std_logic_vector(3 downto 0);
	So: out std_logic_vector(3 downto 0);
	LED: out std_logic
);
end topadder4bit00;


architecture topadder4bit0 of topadder4bit00 is
signal SB,SC,SA: std_logic_vector(3 downto 0);
signal Saa: std_logic;
begin

	S00: xor00 port map(Ax => SL,
						Bx => Bi(0),
						Yx => SB(0));
						
	S01: xor00 port map(Ax => SL,
						Bx => Bi(1),
						Yx => SB(1));
						
	S02: xor00 port map(Ax => SL,
						Bx => Bi(2),
						Yx => SB(2));
						
	S03: xor00 port map(Ax => SL,
						Bx => Bi(3),
						Yx => SB(3));
	
	S04: fa00 port map(C00 => SL,
						A00 => Ai(0),
						B00 => SB(0),
						S00 => SA(0),
						C01 => SC(0));
						
	S05: fa00 port map(C00 => SC(0),
						A00 => Ai(1),
						B00 => SB(1),
						S00 => SA(1),
						C01 => SC(1));
						
	S06: fa00 port map(C00 => SC(1),
						A00 => Ai(2),
						B00 => SB(2),
						S00 => SA(2),
						C01 => SC(2));
						
	S07: fa00 port map(C00 => SC(2),
						A00 => Ai(3),
						B00 => SB(3),
						S00 => SA(3),
						C01 => SC(3));						

	S08: and00 port map(Aa => Saa,
						Ba => SA(0),
						Ya => So(0));
						
	S09: and00 port map(Aa => Saa,
						Ba => SA(1),
						Ya => So(1));					

	S10: and00 port map(Aa => Saa,
						Ba => SA(2),
						Ya => So(2));
						
	S11: and00 port map(Aa => Saa,
						Ba => SA(3),
						Ya => So(3));
						
	S12: xnor00 port map(
						Anx => SC(2),
						Bnx => SC(3),
						Ynx => Saa);

	S13: xor00 port map(
						Ax => SC(2),
						Bx => SC(3),
						Yx => LED);


end topadder4bit0;