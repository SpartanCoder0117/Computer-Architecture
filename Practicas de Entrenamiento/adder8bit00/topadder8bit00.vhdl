library ieee;
library lattice;
use ieee.std_logic_1164.all;
use lattice.components.all;
use packageadder00.all;

entity topadder8bit00 is
port(
	SL: in std_logic;
	Ai: in std_logic_vector(7 downto 0);
	Bi: in std_logic_vector(7 downto 0);
	So: out std_logic_vector(7 downto 0);
	LED: out std_logic
);
end topadder8bit00;


architecture topadder8bit0 of topadder8bit00 is
signal SB,SC,SA: std_logic_vector(7 downto 0);
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
						
    S04: xor00 port map(Ax => SL,
						Bx => Bi(4),
						Yx => SB(4));
						
	S05: xor00 port map(Ax => SL,
						Bx => Bi(5),
						Yx => SB(5));
						
	S06: xor00 port map(Ax => SL,
						Bx => Bi(6),
						Yx => SB(6));
						
	S07: xor00 port map(Ax => SL,
						Bx => Bi(7),
						Yx => SB(7));
						

	S08: fa00 port map(C00 => SL,
						A00 => Ai(0),
						B00 => SB(0),
						S00 => SA(0),
						C01 => SC(0));
						
	S09: fa00 port map(C00 => SC(0),
						A00 => Ai(1),
						B00 => SB(1),
						S00 => SA(1),
						C01 => SC(1));
						
	S10: fa00 port map(C00 => SC(1),
						A00 => Ai(2),
						B00 => SB(2),
						S00 => SA(2),
						C01 => SC(2));
						
						
	S11: fa00 port map(C00 => SC(2),
						A00 => Ai(3),
						B00 => SB(3),
						S00 => SA(3),
						C01 => SC(3));
						
	S12: fa00 port map(C00 => SC(3),
						A00 => Ai(4),
						B00 => SB(4),
						S00 => SA(4),
						C01 => SC(4));
						
	S13: fa00 port map(C00 => SC(4),
						A00 => Ai(5),
						B00 => SB(5),
						S00 => SA(5),
						C01 => SC(5));
						
	S14: fa00 port map(C00 => SC(5),
						A00 => Ai(6),
						B00 => SB(6),
						S00 => SA(6),
						C01 => SC(6));		
   
    S15: fa00 port map(C00 => SC(6),
						A00 => Ai(7),
						B00 => SB(7),
						S00 => SA(7),
						C01 => SC(7));   
						
	S16: and00 port map(Aa => Saa,
						Ba => SA(0),
						Ya => So(0));
						
	S17: and00 port map(Aa => Saa,
						Ba => SA(1),
						Ya => So(1));					

	S18: and00 port map(Aa => Saa,
						Ba => SA(2),
						Ya => So(2));
						
	S19: and00 port map(Aa => Saa,
						Ba => SA(3),
						Ya => So(3));
						
	S20: and00 port map(Aa => Saa,
						Ba => SA(4),
						Ya => So(4));
						
	S21: and00 port map(Aa => Saa,
						Ba => SA(5),
						Ya => So(5));
						
	S22: and00 port map(Aa => Saa,
						Ba => SA(6),
						Ya => So(6));
						
	S23: and00 port map(Aa => Saa,
						Ba => SA(7),
						Ya => So(7));
						
    S24: xnor00 port map(
						Anx => SC(6),
						Bnx => SC(7),
						Ynx => Saa);

	S25: xor00 port map(
						Ax => SC(6),
						Bx => SC(7),
						Yx => LED);						


end topadder8bit0;