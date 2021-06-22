
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.9.0.99.2

-- ldbanno -n VHDL -o compuertas00_compuertas00_vho.vho -w -neg -gui compuertas00_compuertas00.ncd 
-- Netlist created on Tue Aug 22 19:33:19 2017
-- Netlist written on Tue Aug 22 19:33:26 2017
-- Design is for device LCMXO2-7000HE
-- Design is for package TQFP144
-- Design is for performance grade 5

-- entity lut4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut4 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut4 : ENTITY IS TRUE;

  end lut4;

  architecture Structure of lut4 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"7E18")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40001
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40001 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40001 : ENTITY IS TRUE;

  end lut40001;

  architecture Structure of lut40001 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"6390")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity selmux2
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity selmux2 is
    port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF selmux2 : ENTITY IS TRUE;

  end selmux2;

  architecture Structure of selmux2 is
  begin
    INST1: MUX21
      port map (D0=>D0, D1=>D1, SD=>SD, Z=>Z);
  end Structure;

-- entity Sc_7_0_7_SLICE_0
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Sc_7_0_7_SLICE_0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Sc_7_0_7_SLICE_0";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_M0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
          OFX0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Sc_7_0_7_SLICE_0 : ENTITY IS TRUE;

  end Sc_7_0_7_SLICE_0;

  architecture Structure of Sc_7_0_7_SLICE_0 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal OFX0_out 	: std_logic := 'X';

    signal Sc_7_0_7_SLICE_0_Sc_7_0_7_SLICE_0_K1_H1: Std_logic;
    signal Sc_7_0_7_SLICE_0_Sc_7_0_7_GATE_H0: Std_logic;
    component lut4
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40001
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component selmux2
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    Sc_7_0_7_SLICE_0_K1: lut4
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, 
                Z=>Sc_7_0_7_SLICE_0_Sc_7_0_7_SLICE_0_K1_H1);
    Sc_7_0_7_GATE: lut40001
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, 
                Z=>Sc_7_0_7_SLICE_0_Sc_7_0_7_GATE_H0);
    Sc_7_0_7_SLICE_0_K0K1MUX: selmux2
      port map (D0=>Sc_7_0_7_SLICE_0_Sc_7_0_7_GATE_H0, 
                D1=>Sc_7_0_7_SLICE_0_Sc_7_0_7_SLICE_0_K1_H1, SD=>M0_ipd, 
                Z=>OFX0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, M0_ipd, OFX0_out)
    VARIABLE OFX0_zd         	: std_logic := 'X';
    VARIABLE OFX0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    OFX0_zd 	:= OFX0_out;

    VitalPathDelay01 (
      OutSignal => OFX0, OutSignalName => "OFX0", OutTemp => OFX0_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_OFX0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_OFX0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_OFX0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_OFX0,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_OFX0,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_OFX0,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_OFX0,
                           PathCondition => TRUE),
                     7 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_OFX0,
                           PathCondition => TRUE),
                     8 => (InputChangeTime => M0_ipd'last_event,
                           PathDelay => tpd_M0_OFX0,
                           PathCondition => TRUE)),
      GlitchData => OFX0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Sc_7_0_0_SLICE_1
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Sc_7_0_0_SLICE_1 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Sc_7_0_0_SLICE_1";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_M0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
          OFX0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Sc_7_0_0_SLICE_1 : ENTITY IS TRUE;

  end Sc_7_0_0_SLICE_1;

  architecture Structure of Sc_7_0_0_SLICE_1 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal OFX0_out 	: std_logic := 'X';

    signal Sc_7_0_0_SLICE_1_Sc_7_0_0_SLICE_1_K1_H1: Std_logic;
    signal Sc_7_0_0_SLICE_1_Sc_7_0_0_GATE_H0: Std_logic;
    component lut4
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40001
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component selmux2
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    Sc_7_0_0_SLICE_1_K1: lut4
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, 
                Z=>Sc_7_0_0_SLICE_1_Sc_7_0_0_SLICE_1_K1_H1);
    Sc_7_0_0_GATE: lut40001
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, 
                Z=>Sc_7_0_0_SLICE_1_Sc_7_0_0_GATE_H0);
    Sc_7_0_0_SLICE_1_K0K1MUX: selmux2
      port map (D0=>Sc_7_0_0_SLICE_1_Sc_7_0_0_GATE_H0, 
                D1=>Sc_7_0_0_SLICE_1_Sc_7_0_0_SLICE_1_K1_H1, SD=>M0_ipd, 
                Z=>OFX0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, M0_ipd, OFX0_out)
    VARIABLE OFX0_zd         	: std_logic := 'X';
    VARIABLE OFX0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    OFX0_zd 	:= OFX0_out;

    VitalPathDelay01 (
      OutSignal => OFX0, OutSignalName => "OFX0", OutTemp => OFX0_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_OFX0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_OFX0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_OFX0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_OFX0,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_OFX0,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_OFX0,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_OFX0,
                           PathCondition => TRUE),
                     7 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_OFX0,
                           PathCondition => TRUE),
                     8 => (InputChangeTime => M0_ipd'last_event,
                           PathDelay => tpd_M0_OFX0,
                           PathCondition => TRUE)),
      GlitchData => OFX0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40002
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40002 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40002 : ENTITY IS TRUE;

  end lut40002;

  architecture Structure of lut40002 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"3AAC")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40003
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40003 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40003 : ENTITY IS TRUE;

  end lut40003;

  architecture Structure of lut40003 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"4A86")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity Sc_7_0_1_SLICE_2
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Sc_7_0_1_SLICE_2 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Sc_7_0_1_SLICE_2";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_M0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
          OFX0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Sc_7_0_1_SLICE_2 : ENTITY IS TRUE;

  end Sc_7_0_1_SLICE_2;

  architecture Structure of Sc_7_0_1_SLICE_2 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal OFX0_out 	: std_logic := 'X';

    signal Sc_7_0_1_SLICE_2_Sc_7_0_1_SLICE_2_K1_H1: Std_logic;
    signal Sc_7_0_1_SLICE_2_Sc_7_0_1_GATE_H0: Std_logic;
    component selmux2
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40003
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    Sc_7_0_1_SLICE_2_K1: lut40002
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, 
                Z=>Sc_7_0_1_SLICE_2_Sc_7_0_1_SLICE_2_K1_H1);
    Sc_7_0_1_GATE: lut40003
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, 
                Z=>Sc_7_0_1_SLICE_2_Sc_7_0_1_GATE_H0);
    Sc_7_0_1_SLICE_2_K0K1MUX: selmux2
      port map (D0=>Sc_7_0_1_SLICE_2_Sc_7_0_1_GATE_H0, 
                D1=>Sc_7_0_1_SLICE_2_Sc_7_0_1_SLICE_2_K1_H1, SD=>M0_ipd, 
                Z=>OFX0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, M0_ipd, OFX0_out)
    VARIABLE OFX0_zd         	: std_logic := 'X';
    VARIABLE OFX0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    OFX0_zd 	:= OFX0_out;

    VitalPathDelay01 (
      OutSignal => OFX0, OutSignalName => "OFX0", OutTemp => OFX0_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_OFX0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_OFX0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_OFX0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_OFX0,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_OFX0,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_OFX0,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_OFX0,
                           PathCondition => TRUE),
                     7 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_OFX0,
                           PathCondition => TRUE),
                     8 => (InputChangeTime => M0_ipd'last_event,
                           PathDelay => tpd_M0_OFX0,
                           PathCondition => TRUE)),
      GlitchData => OFX0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40004
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40004 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40004 : ENTITY IS TRUE;

  end lut40004;

  architecture Structure of lut40004 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"71E8")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40005
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40005 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40005 : ENTITY IS TRUE;

  end lut40005;

  architecture Structure of lut40005 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"6930")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity Sc_7_0_2_SLICE_3
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Sc_7_0_2_SLICE_3 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Sc_7_0_2_SLICE_3";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_M0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
          OFX0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Sc_7_0_2_SLICE_3 : ENTITY IS TRUE;

  end Sc_7_0_2_SLICE_3;

  architecture Structure of Sc_7_0_2_SLICE_3 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal OFX0_out 	: std_logic := 'X';

    signal Sc_7_0_2_SLICE_3_Sc_7_0_2_SLICE_3_K1_H1: Std_logic;
    signal Sc_7_0_2_SLICE_3_Sc_7_0_2_GATE_H0: Std_logic;
    component selmux2
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40004
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40005
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    Sc_7_0_2_SLICE_3_K1: lut40004
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, 
                Z=>Sc_7_0_2_SLICE_3_Sc_7_0_2_SLICE_3_K1_H1);
    Sc_7_0_2_GATE: lut40005
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, 
                Z=>Sc_7_0_2_SLICE_3_Sc_7_0_2_GATE_H0);
    Sc_7_0_2_SLICE_3_K0K1MUX: selmux2
      port map (D0=>Sc_7_0_2_SLICE_3_Sc_7_0_2_GATE_H0, 
                D1=>Sc_7_0_2_SLICE_3_Sc_7_0_2_SLICE_3_K1_H1, SD=>M0_ipd, 
                Z=>OFX0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, M0_ipd, OFX0_out)
    VARIABLE OFX0_zd         	: std_logic := 'X';
    VARIABLE OFX0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    OFX0_zd 	:= OFX0_out;

    VitalPathDelay01 (
      OutSignal => OFX0, OutSignalName => "OFX0", OutTemp => OFX0_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_OFX0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_OFX0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_OFX0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_OFX0,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_OFX0,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_OFX0,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_OFX0,
                           PathCondition => TRUE),
                     7 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_OFX0,
                           PathCondition => TRUE),
                     8 => (InputChangeTime => M0_ipd'last_event,
                           PathDelay => tpd_M0_OFX0,
                           PathCondition => TRUE)),
      GlitchData => OFX0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40006
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40006 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40006 : ENTITY IS TRUE;

  end lut40006;

  architecture Structure of lut40006 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"72E4")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40007
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40007 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40007 : ENTITY IS TRUE;

  end lut40007;

  architecture Structure of lut40007 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"48B4")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity Sc_7_0_3_SLICE_4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Sc_7_0_3_SLICE_4 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Sc_7_0_3_SLICE_4";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_M0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
          OFX0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Sc_7_0_3_SLICE_4 : ENTITY IS TRUE;

  end Sc_7_0_3_SLICE_4;

  architecture Structure of Sc_7_0_3_SLICE_4 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal OFX0_out 	: std_logic := 'X';

    signal Sc_7_0_3_SLICE_4_Sc_7_0_3_SLICE_4_K1_H1: Std_logic;
    signal Sc_7_0_3_SLICE_4_Sc_7_0_3_GATE_H0: Std_logic;
    component selmux2
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40006
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40007
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    Sc_7_0_3_SLICE_4_K1: lut40006
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, 
                Z=>Sc_7_0_3_SLICE_4_Sc_7_0_3_SLICE_4_K1_H1);
    Sc_7_0_3_GATE: lut40007
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, 
                Z=>Sc_7_0_3_SLICE_4_Sc_7_0_3_GATE_H0);
    Sc_7_0_3_SLICE_4_K0K1MUX: selmux2
      port map (D0=>Sc_7_0_3_SLICE_4_Sc_7_0_3_GATE_H0, 
                D1=>Sc_7_0_3_SLICE_4_Sc_7_0_3_SLICE_4_K1_H1, SD=>M0_ipd, 
                Z=>OFX0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, M0_ipd, OFX0_out)
    VARIABLE OFX0_zd         	: std_logic := 'X';
    VARIABLE OFX0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    OFX0_zd 	:= OFX0_out;

    VitalPathDelay01 (
      OutSignal => OFX0, OutSignalName => "OFX0", OutTemp => OFX0_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_OFX0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_OFX0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_OFX0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_OFX0,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_OFX0,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_OFX0,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_OFX0,
                           PathCondition => TRUE),
                     7 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_OFX0,
                           PathCondition => TRUE),
                     8 => (InputChangeTime => M0_ipd'last_event,
                           PathDelay => tpd_M0_OFX0,
                           PathCondition => TRUE)),
      GlitchData => OFX0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40008
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40008 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40008 : ENTITY IS TRUE;

  end lut40008;

  architecture Structure of lut40008 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"74E2")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40009
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40009 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40009 : ENTITY IS TRUE;

  end lut40009;

  architecture Structure of lut40009 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"28D2")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity Sc_7_0_4_SLICE_5
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Sc_7_0_4_SLICE_5 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Sc_7_0_4_SLICE_5";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_M0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
          OFX0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Sc_7_0_4_SLICE_5 : ENTITY IS TRUE;

  end Sc_7_0_4_SLICE_5;

  architecture Structure of Sc_7_0_4_SLICE_5 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal OFX0_out 	: std_logic := 'X';

    signal Sc_7_0_4_SLICE_5_Sc_7_0_4_SLICE_5_K1_H1: Std_logic;
    signal Sc_7_0_4_SLICE_5_Sc_7_0_4_GATE_H0: Std_logic;
    component selmux2
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40008
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40009
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    Sc_7_0_4_SLICE_5_K1: lut40008
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, 
                Z=>Sc_7_0_4_SLICE_5_Sc_7_0_4_SLICE_5_K1_H1);
    Sc_7_0_4_GATE: lut40009
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, 
                Z=>Sc_7_0_4_SLICE_5_Sc_7_0_4_GATE_H0);
    Sc_7_0_4_SLICE_5_K0K1MUX: selmux2
      port map (D0=>Sc_7_0_4_SLICE_5_Sc_7_0_4_GATE_H0, 
                D1=>Sc_7_0_4_SLICE_5_Sc_7_0_4_SLICE_5_K1_H1, SD=>M0_ipd, 
                Z=>OFX0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, M0_ipd, OFX0_out)
    VARIABLE OFX0_zd         	: std_logic := 'X';
    VARIABLE OFX0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    OFX0_zd 	:= OFX0_out;

    VitalPathDelay01 (
      OutSignal => OFX0, OutSignalName => "OFX0", OutTemp => OFX0_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_OFX0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_OFX0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_OFX0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_OFX0,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_OFX0,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_OFX0,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_OFX0,
                           PathCondition => TRUE),
                     7 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_OFX0,
                           PathCondition => TRUE),
                     8 => (InputChangeTime => M0_ipd'last_event,
                           PathDelay => tpd_M0_OFX0,
                           PathCondition => TRUE)),
      GlitchData => OFX0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Sc_7_0_5_SLICE_6
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Sc_7_0_5_SLICE_6 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Sc_7_0_5_SLICE_6";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_M0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
          OFX0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Sc_7_0_5_SLICE_6 : ENTITY IS TRUE;

  end Sc_7_0_5_SLICE_6;

  architecture Structure of Sc_7_0_5_SLICE_6 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal OFX0_out 	: std_logic := 'X';

    signal Sc_7_0_5_SLICE_6_Sc_7_0_5_SLICE_6_K1_H1: Std_logic;
    signal Sc_7_0_5_SLICE_6_Sc_7_0_5_GATE_H0: Std_logic;
    component selmux2
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40003
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    Sc_7_0_5_SLICE_6_K1: lut40002
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, 
                Z=>Sc_7_0_5_SLICE_6_Sc_7_0_5_SLICE_6_K1_H1);
    Sc_7_0_5_GATE: lut40003
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, 
                Z=>Sc_7_0_5_SLICE_6_Sc_7_0_5_GATE_H0);
    Sc_7_0_5_SLICE_6_K0K1MUX: selmux2
      port map (D0=>Sc_7_0_5_SLICE_6_Sc_7_0_5_GATE_H0, 
                D1=>Sc_7_0_5_SLICE_6_Sc_7_0_5_SLICE_6_K1_H1, SD=>M0_ipd, 
                Z=>OFX0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, M0_ipd, OFX0_out)
    VARIABLE OFX0_zd         	: std_logic := 'X';
    VARIABLE OFX0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    OFX0_zd 	:= OFX0_out;

    VitalPathDelay01 (
      OutSignal => OFX0, OutSignalName => "OFX0", OutTemp => OFX0_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_OFX0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_OFX0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_OFX0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_OFX0,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_OFX0,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_OFX0,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_OFX0,
                           PathCondition => TRUE),
                     7 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_OFX0,
                           PathCondition => TRUE),
                     8 => (InputChangeTime => M0_ipd'last_event,
                           PathDelay => tpd_M0_OFX0,
                           PathCondition => TRUE)),
      GlitchData => OFX0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40010
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40010 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40010 : ENTITY IS TRUE;

  end lut40010;

  architecture Structure of lut40010 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"7E24")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40011
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40011 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40011 : ENTITY IS TRUE;

  end lut40011;

  architecture Structure of lut40011 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"5984")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity Sc_7_0_6_SLICE_7
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Sc_7_0_6_SLICE_7 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Sc_7_0_6_SLICE_7";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_M0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
          OFX0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Sc_7_0_6_SLICE_7 : ENTITY IS TRUE;

  end Sc_7_0_6_SLICE_7;

  architecture Structure of Sc_7_0_6_SLICE_7 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal OFX0_out 	: std_logic := 'X';

    signal Sc_7_0_6_SLICE_7_Sc_7_0_6_SLICE_7_K1_H1: Std_logic;
    signal Sc_7_0_6_SLICE_7_Sc_7_0_6_GATE_H0: Std_logic;
    component selmux2
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40010
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40011
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    Sc_7_0_6_SLICE_7_K1: lut40010
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, 
                Z=>Sc_7_0_6_SLICE_7_Sc_7_0_6_SLICE_7_K1_H1);
    Sc_7_0_6_GATE: lut40011
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, 
                Z=>Sc_7_0_6_SLICE_7_Sc_7_0_6_GATE_H0);
    Sc_7_0_6_SLICE_7_K0K1MUX: selmux2
      port map (D0=>Sc_7_0_6_SLICE_7_Sc_7_0_6_GATE_H0, 
                D1=>Sc_7_0_6_SLICE_7_Sc_7_0_6_SLICE_7_K1_H1, SD=>M0_ipd, 
                Z=>OFX0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, M0_ipd, OFX0_out)
    VARIABLE OFX0_zd         	: std_logic := 'X';
    VARIABLE OFX0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    OFX0_zd 	:= OFX0_out;

    VitalPathDelay01 (
      OutSignal => OFX0, OutSignalName => "OFX0", OutTemp => OFX0_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_OFX0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_OFX0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_OFX0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_OFX0,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_OFX0,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_OFX0,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_OFX0,
                           PathCondition => TRUE),
                     7 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_OFX0,
                           PathCondition => TRUE),
                     8 => (InputChangeTime => M0_ipd'last_event,
                           PathDelay => tpd_M0_OFX0,
                           PathCondition => TRUE)),
      GlitchData => OFX0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf : ENTITY IS TRUE;

  end xo2iobuf;

  architecture Structure of xo2iobuf is
  begin
    INST5: OBZPD
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity gnd
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity gnd is
    port (PWR0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gnd : ENTITY IS TRUE;

  end gnd;

  architecture Structure of gnd is
  begin
    INST1: VLO
      port map (Z=>PWR0);
  end Structure;

-- entity Sc_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Sc_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Sc_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Sc0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Sc0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Sc_0_B : ENTITY IS TRUE;

  end Sc_0_B;

  architecture Structure of Sc_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Sc0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    Sc_pad_0: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Sc0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Sc0_out)
    VARIABLE Sc0_zd         	: std_logic := 'X';
    VARIABLE Sc0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Sc0_zd 	:= Sc0_out;

    VitalPathDelay01 (
      OutSignal => Sc0, OutSignalName => "Sc0", OutTemp => Sc0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Sc0,
                           PathCondition => TRUE)),
      GlitchData => Sc0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf0012
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf0012 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf0012 : ENTITY IS TRUE;

  end xo2iobuf0012;

  architecture Structure of xo2iobuf0012 is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity Ac_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ac_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ac_0_B";

      tipd_Ac0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ac0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ac0 	: VitalDelayType := 0 ns;
      tpw_Ac0_posedge	: VitalDelayType := 0 ns;
      tpw_Ac0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ac0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ac_0_B : ENTITY IS TRUE;

  end Ac_0_B;

  architecture Structure of Ac_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ac0_ipd 	: std_logic := 'X';

    component xo2iobuf0012
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ac_pad_0: xo2iobuf0012
      port map (Z=>PADDI_out, PAD=>Ac0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ac0_ipd, Ac0, tipd_Ac0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ac0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ac0_Ac0          	: x01 := '0';
    VARIABLE periodcheckinfo_Ac0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ac0_ipd,
        TestSignalName => "Ac0",
        Period => tperiod_Ac0,
        PulseWidthHigh => tpw_Ac0_posedge,
        PulseWidthLow => tpw_Ac0_negedge,
        PeriodData => periodcheckinfo_Ac0,
        Violation => tviol_Ac0_Ac0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ac0_ipd'last_event,
                           PathDelay => tpd_Ac0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Sc_7_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Sc_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Sc_7_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Sc7	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Sc7: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Sc_7_B : ENTITY IS TRUE;

  end Sc_7_B;

  architecture Structure of Sc_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Sc7_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    Sc_pad_7: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Sc7_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Sc7_out)
    VARIABLE Sc7_zd         	: std_logic := 'X';
    VARIABLE Sc7_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Sc7_zd 	:= Sc7_out;

    VitalPathDelay01 (
      OutSignal => Sc7, OutSignalName => "Sc7", OutTemp => Sc7_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Sc7,
                           PathCondition => TRUE)),
      GlitchData => Sc7_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Sc_6_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Sc_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Sc_6_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Sc6	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Sc6: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Sc_6_B : ENTITY IS TRUE;

  end Sc_6_B;

  architecture Structure of Sc_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Sc6_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    Sc_pad_6: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Sc6_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Sc6_out)
    VARIABLE Sc6_zd         	: std_logic := 'X';
    VARIABLE Sc6_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Sc6_zd 	:= Sc6_out;

    VitalPathDelay01 (
      OutSignal => Sc6, OutSignalName => "Sc6", OutTemp => Sc6_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Sc6,
                           PathCondition => TRUE)),
      GlitchData => Sc6_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Sc_5_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Sc_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Sc_5_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Sc5	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Sc5: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Sc_5_B : ENTITY IS TRUE;

  end Sc_5_B;

  architecture Structure of Sc_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Sc5_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    Sc_pad_5: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Sc5_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Sc5_out)
    VARIABLE Sc5_zd         	: std_logic := 'X';
    VARIABLE Sc5_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Sc5_zd 	:= Sc5_out;

    VitalPathDelay01 (
      OutSignal => Sc5, OutSignalName => "Sc5", OutTemp => Sc5_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Sc5,
                           PathCondition => TRUE)),
      GlitchData => Sc5_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Sc_4_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Sc_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Sc_4_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Sc4	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Sc4: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Sc_4_B : ENTITY IS TRUE;

  end Sc_4_B;

  architecture Structure of Sc_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Sc4_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    Sc_pad_4: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Sc4_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Sc4_out)
    VARIABLE Sc4_zd         	: std_logic := 'X';
    VARIABLE Sc4_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Sc4_zd 	:= Sc4_out;

    VitalPathDelay01 (
      OutSignal => Sc4, OutSignalName => "Sc4", OutTemp => Sc4_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Sc4,
                           PathCondition => TRUE)),
      GlitchData => Sc4_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Sc_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Sc_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Sc_3_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Sc3	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Sc3: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Sc_3_B : ENTITY IS TRUE;

  end Sc_3_B;

  architecture Structure of Sc_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Sc3_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    Sc_pad_3: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Sc3_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Sc3_out)
    VARIABLE Sc3_zd         	: std_logic := 'X';
    VARIABLE Sc3_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Sc3_zd 	:= Sc3_out;

    VitalPathDelay01 (
      OutSignal => Sc3, OutSignalName => "Sc3", OutTemp => Sc3_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Sc3,
                           PathCondition => TRUE)),
      GlitchData => Sc3_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Sc_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Sc_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Sc_2_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Sc2	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Sc2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Sc_2_B : ENTITY IS TRUE;

  end Sc_2_B;

  architecture Structure of Sc_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Sc2_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    Sc_pad_2: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Sc2_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Sc2_out)
    VARIABLE Sc2_zd         	: std_logic := 'X';
    VARIABLE Sc2_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Sc2_zd 	:= Sc2_out;

    VitalPathDelay01 (
      OutSignal => Sc2, OutSignalName => "Sc2", OutTemp => Sc2_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Sc2,
                           PathCondition => TRUE)),
      GlitchData => Sc2_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Sc_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Sc_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Sc_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Sc1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Sc1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Sc_1_B : ENTITY IS TRUE;

  end Sc_1_B;

  architecture Structure of Sc_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Sc1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    Sc_pad_1: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Sc1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Sc1_out)
    VARIABLE Sc1_zd         	: std_logic := 'X';
    VARIABLE Sc1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Sc1_zd 	:= Sc1_out;

    VitalPathDelay01 (
      OutSignal => Sc1, OutSignalName => "Sc1", OutTemp => Sc1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Sc1,
                           PathCondition => TRUE)),
      GlitchData => Sc1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Selc_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Selc_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Selc_2_B";

      tipd_Selc2  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Selc2_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Selc2 	: VitalDelayType := 0 ns;
      tpw_Selc2_posedge	: VitalDelayType := 0 ns;
      tpw_Selc2_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Selc2: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Selc_2_B : ENTITY IS TRUE;

  end Selc_2_B;

  architecture Structure of Selc_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Selc2_ipd 	: std_logic := 'X';

    component xo2iobuf0012
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Selc_pad_2: xo2iobuf0012
      port map (Z=>PADDI_out, PAD=>Selc2_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Selc2_ipd, Selc2, tipd_Selc2);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Selc2_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Selc2_Selc2          	: x01 := '0';
    VARIABLE periodcheckinfo_Selc2	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Selc2_ipd,
        TestSignalName => "Selc2",
        Period => tperiod_Selc2,
        PulseWidthHigh => tpw_Selc2_posedge,
        PulseWidthLow => tpw_Selc2_negedge,
        PeriodData => periodcheckinfo_Selc2,
        Violation => tviol_Selc2_Selc2,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Selc2_ipd'last_event,
                           PathDelay => tpd_Selc2_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Selc_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Selc_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Selc_1_B";

      tipd_Selc1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Selc1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Selc1 	: VitalDelayType := 0 ns;
      tpw_Selc1_posedge	: VitalDelayType := 0 ns;
      tpw_Selc1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Selc1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Selc_1_B : ENTITY IS TRUE;

  end Selc_1_B;

  architecture Structure of Selc_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Selc1_ipd 	: std_logic := 'X';

    component xo2iobuf0012
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Selc_pad_1: xo2iobuf0012
      port map (Z=>PADDI_out, PAD=>Selc1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Selc1_ipd, Selc1, tipd_Selc1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Selc1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Selc1_Selc1          	: x01 := '0';
    VARIABLE periodcheckinfo_Selc1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Selc1_ipd,
        TestSignalName => "Selc1",
        Period => tperiod_Selc1,
        PulseWidthHigh => tpw_Selc1_posedge,
        PulseWidthLow => tpw_Selc1_negedge,
        PeriodData => periodcheckinfo_Selc1,
        Violation => tviol_Selc1_Selc1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Selc1_ipd'last_event,
                           PathDelay => tpd_Selc1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Selc_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Selc_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Selc_0_B";

      tipd_Selc0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Selc0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Selc0 	: VitalDelayType := 0 ns;
      tpw_Selc0_posedge	: VitalDelayType := 0 ns;
      tpw_Selc0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Selc0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Selc_0_B : ENTITY IS TRUE;

  end Selc_0_B;

  architecture Structure of Selc_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Selc0_ipd 	: std_logic := 'X';

    component xo2iobuf0012
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Selc_pad_0: xo2iobuf0012
      port map (Z=>PADDI_out, PAD=>Selc0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Selc0_ipd, Selc0, tipd_Selc0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Selc0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Selc0_Selc0          	: x01 := '0';
    VARIABLE periodcheckinfo_Selc0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Selc0_ipd,
        TestSignalName => "Selc0",
        Period => tperiod_Selc0,
        PulseWidthHigh => tpw_Selc0_posedge,
        PulseWidthLow => tpw_Selc0_negedge,
        PeriodData => periodcheckinfo_Selc0,
        Violation => tviol_Selc0_Selc0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Selc0_ipd'last_event,
                           PathDelay => tpd_Selc0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bc_7_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bc_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bc_7_B";

      tipd_Bc7  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bc7_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bc7 	: VitalDelayType := 0 ns;
      tpw_Bc7_posedge	: VitalDelayType := 0 ns;
      tpw_Bc7_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bc7: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bc_7_B : ENTITY IS TRUE;

  end Bc_7_B;

  architecture Structure of Bc_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bc7_ipd 	: std_logic := 'X';

    component xo2iobuf0012
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bc_pad_7: xo2iobuf0012
      port map (Z=>PADDI_out, PAD=>Bc7_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bc7_ipd, Bc7, tipd_Bc7);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bc7_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bc7_Bc7          	: x01 := '0';
    VARIABLE periodcheckinfo_Bc7	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bc7_ipd,
        TestSignalName => "Bc7",
        Period => tperiod_Bc7,
        PulseWidthHigh => tpw_Bc7_posedge,
        PulseWidthLow => tpw_Bc7_negedge,
        PeriodData => periodcheckinfo_Bc7,
        Violation => tviol_Bc7_Bc7,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bc7_ipd'last_event,
                           PathDelay => tpd_Bc7_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bc_6_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bc_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bc_6_B";

      tipd_Bc6  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bc6_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bc6 	: VitalDelayType := 0 ns;
      tpw_Bc6_posedge	: VitalDelayType := 0 ns;
      tpw_Bc6_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bc6: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bc_6_B : ENTITY IS TRUE;

  end Bc_6_B;

  architecture Structure of Bc_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bc6_ipd 	: std_logic := 'X';

    component xo2iobuf0012
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bc_pad_6: xo2iobuf0012
      port map (Z=>PADDI_out, PAD=>Bc6_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bc6_ipd, Bc6, tipd_Bc6);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bc6_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bc6_Bc6          	: x01 := '0';
    VARIABLE periodcheckinfo_Bc6	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bc6_ipd,
        TestSignalName => "Bc6",
        Period => tperiod_Bc6,
        PulseWidthHigh => tpw_Bc6_posedge,
        PulseWidthLow => tpw_Bc6_negedge,
        PeriodData => periodcheckinfo_Bc6,
        Violation => tviol_Bc6_Bc6,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bc6_ipd'last_event,
                           PathDelay => tpd_Bc6_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bc_5_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bc_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bc_5_B";

      tipd_Bc5  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bc5_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bc5 	: VitalDelayType := 0 ns;
      tpw_Bc5_posedge	: VitalDelayType := 0 ns;
      tpw_Bc5_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bc5: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bc_5_B : ENTITY IS TRUE;

  end Bc_5_B;

  architecture Structure of Bc_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bc5_ipd 	: std_logic := 'X';

    component xo2iobuf0012
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bc_pad_5: xo2iobuf0012
      port map (Z=>PADDI_out, PAD=>Bc5_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bc5_ipd, Bc5, tipd_Bc5);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bc5_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bc5_Bc5          	: x01 := '0';
    VARIABLE periodcheckinfo_Bc5	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bc5_ipd,
        TestSignalName => "Bc5",
        Period => tperiod_Bc5,
        PulseWidthHigh => tpw_Bc5_posedge,
        PulseWidthLow => tpw_Bc5_negedge,
        PeriodData => periodcheckinfo_Bc5,
        Violation => tviol_Bc5_Bc5,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bc5_ipd'last_event,
                           PathDelay => tpd_Bc5_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bc_4_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bc_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bc_4_B";

      tipd_Bc4  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bc4_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bc4 	: VitalDelayType := 0 ns;
      tpw_Bc4_posedge	: VitalDelayType := 0 ns;
      tpw_Bc4_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bc4: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bc_4_B : ENTITY IS TRUE;

  end Bc_4_B;

  architecture Structure of Bc_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bc4_ipd 	: std_logic := 'X';

    component xo2iobuf0012
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bc_pad_4: xo2iobuf0012
      port map (Z=>PADDI_out, PAD=>Bc4_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bc4_ipd, Bc4, tipd_Bc4);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bc4_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bc4_Bc4          	: x01 := '0';
    VARIABLE periodcheckinfo_Bc4	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bc4_ipd,
        TestSignalName => "Bc4",
        Period => tperiod_Bc4,
        PulseWidthHigh => tpw_Bc4_posedge,
        PulseWidthLow => tpw_Bc4_negedge,
        PeriodData => periodcheckinfo_Bc4,
        Violation => tviol_Bc4_Bc4,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bc4_ipd'last_event,
                           PathDelay => tpd_Bc4_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bc_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bc_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bc_3_B";

      tipd_Bc3  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bc3_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bc3 	: VitalDelayType := 0 ns;
      tpw_Bc3_posedge	: VitalDelayType := 0 ns;
      tpw_Bc3_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bc3: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bc_3_B : ENTITY IS TRUE;

  end Bc_3_B;

  architecture Structure of Bc_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bc3_ipd 	: std_logic := 'X';

    component xo2iobuf0012
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bc_pad_3: xo2iobuf0012
      port map (Z=>PADDI_out, PAD=>Bc3_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bc3_ipd, Bc3, tipd_Bc3);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bc3_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bc3_Bc3          	: x01 := '0';
    VARIABLE periodcheckinfo_Bc3	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bc3_ipd,
        TestSignalName => "Bc3",
        Period => tperiod_Bc3,
        PulseWidthHigh => tpw_Bc3_posedge,
        PulseWidthLow => tpw_Bc3_negedge,
        PeriodData => periodcheckinfo_Bc3,
        Violation => tviol_Bc3_Bc3,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bc3_ipd'last_event,
                           PathDelay => tpd_Bc3_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bc_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bc_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bc_2_B";

      tipd_Bc2  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bc2_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bc2 	: VitalDelayType := 0 ns;
      tpw_Bc2_posedge	: VitalDelayType := 0 ns;
      tpw_Bc2_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bc2: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bc_2_B : ENTITY IS TRUE;

  end Bc_2_B;

  architecture Structure of Bc_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bc2_ipd 	: std_logic := 'X';

    component xo2iobuf0012
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bc_pad_2: xo2iobuf0012
      port map (Z=>PADDI_out, PAD=>Bc2_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bc2_ipd, Bc2, tipd_Bc2);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bc2_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bc2_Bc2          	: x01 := '0';
    VARIABLE periodcheckinfo_Bc2	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bc2_ipd,
        TestSignalName => "Bc2",
        Period => tperiod_Bc2,
        PulseWidthHigh => tpw_Bc2_posedge,
        PulseWidthLow => tpw_Bc2_negedge,
        PeriodData => periodcheckinfo_Bc2,
        Violation => tviol_Bc2_Bc2,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bc2_ipd'last_event,
                           PathDelay => tpd_Bc2_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bc_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bc_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bc_1_B";

      tipd_Bc1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bc1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bc1 	: VitalDelayType := 0 ns;
      tpw_Bc1_posedge	: VitalDelayType := 0 ns;
      tpw_Bc1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bc1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bc_1_B : ENTITY IS TRUE;

  end Bc_1_B;

  architecture Structure of Bc_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bc1_ipd 	: std_logic := 'X';

    component xo2iobuf0012
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bc_pad_1: xo2iobuf0012
      port map (Z=>PADDI_out, PAD=>Bc1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bc1_ipd, Bc1, tipd_Bc1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bc1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bc1_Bc1          	: x01 := '0';
    VARIABLE periodcheckinfo_Bc1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bc1_ipd,
        TestSignalName => "Bc1",
        Period => tperiod_Bc1,
        PulseWidthHigh => tpw_Bc1_posedge,
        PulseWidthLow => tpw_Bc1_negedge,
        PeriodData => periodcheckinfo_Bc1,
        Violation => tviol_Bc1_Bc1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bc1_ipd'last_event,
                           PathDelay => tpd_Bc1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bc_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bc_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bc_0_B";

      tipd_Bc0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bc0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bc0 	: VitalDelayType := 0 ns;
      tpw_Bc0_posedge	: VitalDelayType := 0 ns;
      tpw_Bc0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bc0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bc_0_B : ENTITY IS TRUE;

  end Bc_0_B;

  architecture Structure of Bc_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bc0_ipd 	: std_logic := 'X';

    component xo2iobuf0012
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bc_pad_0: xo2iobuf0012
      port map (Z=>PADDI_out, PAD=>Bc0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bc0_ipd, Bc0, tipd_Bc0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bc0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bc0_Bc0          	: x01 := '0';
    VARIABLE periodcheckinfo_Bc0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bc0_ipd,
        TestSignalName => "Bc0",
        Period => tperiod_Bc0,
        PulseWidthHigh => tpw_Bc0_posedge,
        PulseWidthLow => tpw_Bc0_negedge,
        PeriodData => periodcheckinfo_Bc0,
        Violation => tviol_Bc0_Bc0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bc0_ipd'last_event,
                           PathDelay => tpd_Bc0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ac_7_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ac_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ac_7_B";

      tipd_Ac7  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ac7_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ac7 	: VitalDelayType := 0 ns;
      tpw_Ac7_posedge	: VitalDelayType := 0 ns;
      tpw_Ac7_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ac7: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ac_7_B : ENTITY IS TRUE;

  end Ac_7_B;

  architecture Structure of Ac_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ac7_ipd 	: std_logic := 'X';

    component xo2iobuf0012
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ac_pad_7: xo2iobuf0012
      port map (Z=>PADDI_out, PAD=>Ac7_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ac7_ipd, Ac7, tipd_Ac7);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ac7_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ac7_Ac7          	: x01 := '0';
    VARIABLE periodcheckinfo_Ac7	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ac7_ipd,
        TestSignalName => "Ac7",
        Period => tperiod_Ac7,
        PulseWidthHigh => tpw_Ac7_posedge,
        PulseWidthLow => tpw_Ac7_negedge,
        PeriodData => periodcheckinfo_Ac7,
        Violation => tviol_Ac7_Ac7,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ac7_ipd'last_event,
                           PathDelay => tpd_Ac7_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ac_6_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ac_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ac_6_B";

      tipd_Ac6  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ac6_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ac6 	: VitalDelayType := 0 ns;
      tpw_Ac6_posedge	: VitalDelayType := 0 ns;
      tpw_Ac6_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ac6: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ac_6_B : ENTITY IS TRUE;

  end Ac_6_B;

  architecture Structure of Ac_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ac6_ipd 	: std_logic := 'X';

    component xo2iobuf0012
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ac_pad_6: xo2iobuf0012
      port map (Z=>PADDI_out, PAD=>Ac6_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ac6_ipd, Ac6, tipd_Ac6);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ac6_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ac6_Ac6          	: x01 := '0';
    VARIABLE periodcheckinfo_Ac6	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ac6_ipd,
        TestSignalName => "Ac6",
        Period => tperiod_Ac6,
        PulseWidthHigh => tpw_Ac6_posedge,
        PulseWidthLow => tpw_Ac6_negedge,
        PeriodData => periodcheckinfo_Ac6,
        Violation => tviol_Ac6_Ac6,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ac6_ipd'last_event,
                           PathDelay => tpd_Ac6_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ac_5_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ac_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ac_5_B";

      tipd_Ac5  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ac5_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ac5 	: VitalDelayType := 0 ns;
      tpw_Ac5_posedge	: VitalDelayType := 0 ns;
      tpw_Ac5_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ac5: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ac_5_B : ENTITY IS TRUE;

  end Ac_5_B;

  architecture Structure of Ac_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ac5_ipd 	: std_logic := 'X';

    component xo2iobuf0012
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ac_pad_5: xo2iobuf0012
      port map (Z=>PADDI_out, PAD=>Ac5_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ac5_ipd, Ac5, tipd_Ac5);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ac5_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ac5_Ac5          	: x01 := '0';
    VARIABLE periodcheckinfo_Ac5	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ac5_ipd,
        TestSignalName => "Ac5",
        Period => tperiod_Ac5,
        PulseWidthHigh => tpw_Ac5_posedge,
        PulseWidthLow => tpw_Ac5_negedge,
        PeriodData => periodcheckinfo_Ac5,
        Violation => tviol_Ac5_Ac5,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ac5_ipd'last_event,
                           PathDelay => tpd_Ac5_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ac_4_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ac_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ac_4_B";

      tipd_Ac4  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ac4_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ac4 	: VitalDelayType := 0 ns;
      tpw_Ac4_posedge	: VitalDelayType := 0 ns;
      tpw_Ac4_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ac4: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ac_4_B : ENTITY IS TRUE;

  end Ac_4_B;

  architecture Structure of Ac_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ac4_ipd 	: std_logic := 'X';

    component xo2iobuf0012
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ac_pad_4: xo2iobuf0012
      port map (Z=>PADDI_out, PAD=>Ac4_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ac4_ipd, Ac4, tipd_Ac4);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ac4_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ac4_Ac4          	: x01 := '0';
    VARIABLE periodcheckinfo_Ac4	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ac4_ipd,
        TestSignalName => "Ac4",
        Period => tperiod_Ac4,
        PulseWidthHigh => tpw_Ac4_posedge,
        PulseWidthLow => tpw_Ac4_negedge,
        PeriodData => periodcheckinfo_Ac4,
        Violation => tviol_Ac4_Ac4,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ac4_ipd'last_event,
                           PathDelay => tpd_Ac4_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ac_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ac_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ac_3_B";

      tipd_Ac3  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ac3_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ac3 	: VitalDelayType := 0 ns;
      tpw_Ac3_posedge	: VitalDelayType := 0 ns;
      tpw_Ac3_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ac3: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ac_3_B : ENTITY IS TRUE;

  end Ac_3_B;

  architecture Structure of Ac_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ac3_ipd 	: std_logic := 'X';

    component xo2iobuf0012
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ac_pad_3: xo2iobuf0012
      port map (Z=>PADDI_out, PAD=>Ac3_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ac3_ipd, Ac3, tipd_Ac3);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ac3_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ac3_Ac3          	: x01 := '0';
    VARIABLE periodcheckinfo_Ac3	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ac3_ipd,
        TestSignalName => "Ac3",
        Period => tperiod_Ac3,
        PulseWidthHigh => tpw_Ac3_posedge,
        PulseWidthLow => tpw_Ac3_negedge,
        PeriodData => periodcheckinfo_Ac3,
        Violation => tviol_Ac3_Ac3,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ac3_ipd'last_event,
                           PathDelay => tpd_Ac3_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ac_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ac_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ac_2_B";

      tipd_Ac2  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ac2_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ac2 	: VitalDelayType := 0 ns;
      tpw_Ac2_posedge	: VitalDelayType := 0 ns;
      tpw_Ac2_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ac2: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ac_2_B : ENTITY IS TRUE;

  end Ac_2_B;

  architecture Structure of Ac_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ac2_ipd 	: std_logic := 'X';

    component xo2iobuf0012
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ac_pad_2: xo2iobuf0012
      port map (Z=>PADDI_out, PAD=>Ac2_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ac2_ipd, Ac2, tipd_Ac2);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ac2_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ac2_Ac2          	: x01 := '0';
    VARIABLE periodcheckinfo_Ac2	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ac2_ipd,
        TestSignalName => "Ac2",
        Period => tperiod_Ac2,
        PulseWidthHigh => tpw_Ac2_posedge,
        PulseWidthLow => tpw_Ac2_negedge,
        PeriodData => periodcheckinfo_Ac2,
        Violation => tviol_Ac2_Ac2,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ac2_ipd'last_event,
                           PathDelay => tpd_Ac2_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ac_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ac_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ac_1_B";

      tipd_Ac1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ac1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ac1 	: VitalDelayType := 0 ns;
      tpw_Ac1_posedge	: VitalDelayType := 0 ns;
      tpw_Ac1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ac1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ac_1_B : ENTITY IS TRUE;

  end Ac_1_B;

  architecture Structure of Ac_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ac1_ipd 	: std_logic := 'X';

    component xo2iobuf0012
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ac_pad_1: xo2iobuf0012
      port map (Z=>PADDI_out, PAD=>Ac1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ac1_ipd, Ac1, tipd_Ac1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ac1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ac1_Ac1          	: x01 := '0';
    VARIABLE periodcheckinfo_Ac1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ac1_ipd,
        TestSignalName => "Ac1",
        Period => tperiod_Ac1,
        PulseWidthHigh => tpw_Ac1_posedge,
        PulseWidthLow => tpw_Ac1_negedge,
        PeriodData => periodcheckinfo_Ac1,
        Violation => tviol_Ac1_Ac1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ac1_ipd'last_event,
                           PathDelay => tpd_Ac1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity compuertas00
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity compuertas00 is
    port (Ac: in Std_logic_vector (7 downto 0); 
          Bc: in Std_logic_vector (7 downto 0); 
          Selc: in Std_logic_vector (2 downto 0); 
          Sc: out Std_logic_vector (7 downto 0));



  end compuertas00;

  architecture Structure of compuertas00 is
    signal Selc_c_1: Std_logic;
    signal Selc_c_2: Std_logic;
    signal Ac_c_7: Std_logic;
    signal Bc_c_7: Std_logic;
    signal Selc_c_0: Std_logic;
    signal Sc_c_7: Std_logic;
    signal Ac_c_0: Std_logic;
    signal Bc_c_0: Std_logic;
    signal Sc_c_0: Std_logic;
    signal Bc_c_1: Std_logic;
    signal Ac_c_1: Std_logic;
    signal Sc_c_1: Std_logic;
    signal Ac_c_2: Std_logic;
    signal Bc_c_2: Std_logic;
    signal Sc_c_2: Std_logic;
    signal Ac_c_3: Std_logic;
    signal Bc_c_3: Std_logic;
    signal Sc_c_3: Std_logic;
    signal Ac_c_4: Std_logic;
    signal Bc_c_4: Std_logic;
    signal Sc_c_4: Std_logic;
    signal Bc_c_5: Std_logic;
    signal Ac_c_5: Std_logic;
    signal Sc_c_5: Std_logic;
    signal Bc_c_6: Std_logic;
    signal Ac_c_6: Std_logic;
    signal Sc_c_6: Std_logic;
    signal VCCI: Std_logic;
    component Sc_7_0_7_SLICE_0
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
            OFX0: out Std_logic);
    end component;
    component Sc_7_0_0_SLICE_1
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
            OFX0: out Std_logic);
    end component;
    component Sc_7_0_1_SLICE_2
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
            OFX0: out Std_logic);
    end component;
    component Sc_7_0_2_SLICE_3
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
            OFX0: out Std_logic);
    end component;
    component Sc_7_0_3_SLICE_4
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
            OFX0: out Std_logic);
    end component;
    component Sc_7_0_4_SLICE_5
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
            OFX0: out Std_logic);
    end component;
    component Sc_7_0_5_SLICE_6
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
            OFX0: out Std_logic);
    end component;
    component Sc_7_0_6_SLICE_7
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; M0: in Std_logic; 
            OFX0: out Std_logic);
    end component;
    component Sc_0_B
      port (PADDO: in Std_logic; Sc0: out Std_logic);
    end component;
    component Ac_0_B
      port (PADDI: out Std_logic; Ac0: in Std_logic);
    end component;
    component Sc_7_B
      port (PADDO: in Std_logic; Sc7: out Std_logic);
    end component;
    component Sc_6_B
      port (PADDO: in Std_logic; Sc6: out Std_logic);
    end component;
    component Sc_5_B
      port (PADDO: in Std_logic; Sc5: out Std_logic);
    end component;
    component Sc_4_B
      port (PADDO: in Std_logic; Sc4: out Std_logic);
    end component;
    component Sc_3_B
      port (PADDO: in Std_logic; Sc3: out Std_logic);
    end component;
    component Sc_2_B
      port (PADDO: in Std_logic; Sc2: out Std_logic);
    end component;
    component Sc_1_B
      port (PADDO: in Std_logic; Sc1: out Std_logic);
    end component;
    component Selc_2_B
      port (PADDI: out Std_logic; Selc2: in Std_logic);
    end component;
    component Selc_1_B
      port (PADDI: out Std_logic; Selc1: in Std_logic);
    end component;
    component Selc_0_B
      port (PADDI: out Std_logic; Selc0: in Std_logic);
    end component;
    component Bc_7_B
      port (PADDI: out Std_logic; Bc7: in Std_logic);
    end component;
    component Bc_6_B
      port (PADDI: out Std_logic; Bc6: in Std_logic);
    end component;
    component Bc_5_B
      port (PADDI: out Std_logic; Bc5: in Std_logic);
    end component;
    component Bc_4_B
      port (PADDI: out Std_logic; Bc4: in Std_logic);
    end component;
    component Bc_3_B
      port (PADDI: out Std_logic; Bc3: in Std_logic);
    end component;
    component Bc_2_B
      port (PADDI: out Std_logic; Bc2: in Std_logic);
    end component;
    component Bc_1_B
      port (PADDI: out Std_logic; Bc1: in Std_logic);
    end component;
    component Bc_0_B
      port (PADDI: out Std_logic; Bc0: in Std_logic);
    end component;
    component Ac_7_B
      port (PADDI: out Std_logic; Ac7: in Std_logic);
    end component;
    component Ac_6_B
      port (PADDI: out Std_logic; Ac6: in Std_logic);
    end component;
    component Ac_5_B
      port (PADDI: out Std_logic; Ac5: in Std_logic);
    end component;
    component Ac_4_B
      port (PADDI: out Std_logic; Ac4: in Std_logic);
    end component;
    component Ac_3_B
      port (PADDI: out Std_logic; Ac3: in Std_logic);
    end component;
    component Ac_2_B
      port (PADDI: out Std_logic; Ac2: in Std_logic);
    end component;
    component Ac_1_B
      port (PADDI: out Std_logic; Ac1: in Std_logic);
    end component;
  begin
    Sc_7_0_7_SLICE_0I: Sc_7_0_7_SLICE_0
      port map (D1=>Selc_c_1, C1=>Selc_c_2, B1=>Ac_c_7, A1=>Bc_c_7, 
                D0=>Selc_c_1, C0=>Selc_c_2, B0=>Ac_c_7, A0=>Bc_c_7, 
                M0=>Selc_c_0, OFX0=>Sc_c_7);
    Sc_7_0_0_SLICE_1I: Sc_7_0_0_SLICE_1
      port map (D1=>Selc_c_1, C1=>Selc_c_2, B1=>Ac_c_0, A1=>Bc_c_0, 
                D0=>Selc_c_1, C0=>Selc_c_2, B0=>Ac_c_0, A0=>Bc_c_0, 
                M0=>Selc_c_0, OFX0=>Sc_c_0);
    Sc_7_0_1_SLICE_2I: Sc_7_0_1_SLICE_2
      port map (D1=>Bc_c_1, C1=>Ac_c_1, B1=>Selc_c_2, A1=>Selc_c_1, D0=>Bc_c_1, 
                C0=>Ac_c_1, B0=>Selc_c_2, A0=>Selc_c_1, M0=>Selc_c_0, 
                OFX0=>Sc_c_1);
    Sc_7_0_2_SLICE_3I: Sc_7_0_2_SLICE_3
      port map (D1=>Selc_c_2, C1=>Selc_c_1, B1=>Ac_c_2, A1=>Bc_c_2, 
                D0=>Selc_c_2, C0=>Selc_c_1, B0=>Ac_c_2, A0=>Bc_c_2, 
                M0=>Selc_c_0, OFX0=>Sc_c_2);
    Sc_7_0_3_SLICE_4I: Sc_7_0_3_SLICE_4
      port map (D1=>Ac_c_3, C1=>Selc_c_1, B1=>Selc_c_2, A1=>Bc_c_3, D0=>Ac_c_3, 
                C0=>Selc_c_1, B0=>Selc_c_2, A0=>Bc_c_3, M0=>Selc_c_0, 
                OFX0=>Sc_c_3);
    Sc_7_0_4_SLICE_5I: Sc_7_0_4_SLICE_5
      port map (D1=>Ac_c_4, C1=>Selc_c_1, B1=>Bc_c_4, A1=>Selc_c_2, D0=>Ac_c_4, 
                C0=>Selc_c_1, B0=>Bc_c_4, A0=>Selc_c_2, M0=>Selc_c_0, 
                OFX0=>Sc_c_4);
    Sc_7_0_5_SLICE_6I: Sc_7_0_5_SLICE_6
      port map (D1=>Bc_c_5, C1=>Ac_c_5, B1=>Selc_c_2, A1=>Selc_c_1, D0=>Bc_c_5, 
                C0=>Ac_c_5, B0=>Selc_c_2, A0=>Selc_c_1, M0=>Selc_c_0, 
                OFX0=>Sc_c_5);
    Sc_7_0_6_SLICE_7I: Sc_7_0_6_SLICE_7
      port map (D1=>Selc_c_1, C1=>Bc_c_6, B1=>Selc_c_2, A1=>Ac_c_6, 
                D0=>Selc_c_1, C0=>Bc_c_6, B0=>Selc_c_2, A0=>Ac_c_6, 
                M0=>Selc_c_0, OFX0=>Sc_c_6);
    Sc_0_I: Sc_0_B
      port map (PADDO=>Sc_c_0, Sc0=>Sc(0));
    Ac_0_I: Ac_0_B
      port map (PADDI=>Ac_c_0, Ac0=>Ac(0));
    Sc_7_I: Sc_7_B
      port map (PADDO=>Sc_c_7, Sc7=>Sc(7));
    Sc_6_I: Sc_6_B
      port map (PADDO=>Sc_c_6, Sc6=>Sc(6));
    Sc_5_I: Sc_5_B
      port map (PADDO=>Sc_c_5, Sc5=>Sc(5));
    Sc_4_I: Sc_4_B
      port map (PADDO=>Sc_c_4, Sc4=>Sc(4));
    Sc_3_I: Sc_3_B
      port map (PADDO=>Sc_c_3, Sc3=>Sc(3));
    Sc_2_I: Sc_2_B
      port map (PADDO=>Sc_c_2, Sc2=>Sc(2));
    Sc_1_I: Sc_1_B
      port map (PADDO=>Sc_c_1, Sc1=>Sc(1));
    Selc_2_I: Selc_2_B
      port map (PADDI=>Selc_c_2, Selc2=>Selc(2));
    Selc_1_I: Selc_1_B
      port map (PADDI=>Selc_c_1, Selc1=>Selc(1));
    Selc_0_I: Selc_0_B
      port map (PADDI=>Selc_c_0, Selc0=>Selc(0));
    Bc_7_I: Bc_7_B
      port map (PADDI=>Bc_c_7, Bc7=>Bc(7));
    Bc_6_I: Bc_6_B
      port map (PADDI=>Bc_c_6, Bc6=>Bc(6));
    Bc_5_I: Bc_5_B
      port map (PADDI=>Bc_c_5, Bc5=>Bc(5));
    Bc_4_I: Bc_4_B
      port map (PADDI=>Bc_c_4, Bc4=>Bc(4));
    Bc_3_I: Bc_3_B
      port map (PADDI=>Bc_c_3, Bc3=>Bc(3));
    Bc_2_I: Bc_2_B
      port map (PADDI=>Bc_c_2, Bc2=>Bc(2));
    Bc_1_I: Bc_1_B
      port map (PADDI=>Bc_c_1, Bc1=>Bc(1));
    Bc_0_I: Bc_0_B
      port map (PADDI=>Bc_c_0, Bc0=>Bc(0));
    Ac_7_I: Ac_7_B
      port map (PADDI=>Ac_c_7, Ac7=>Ac(7));
    Ac_6_I: Ac_6_B
      port map (PADDI=>Ac_c_6, Ac6=>Ac(6));
    Ac_5_I: Ac_5_B
      port map (PADDI=>Ac_c_5, Ac5=>Ac(5));
    Ac_4_I: Ac_4_B
      port map (PADDI=>Ac_c_4, Ac4=>Ac(4));
    Ac_3_I: Ac_3_B
      port map (PADDI=>Ac_c_3, Ac3=>Ac(3));
    Ac_2_I: Ac_2_B
      port map (PADDI=>Ac_c_2, Ac2=>Ac(2));
    Ac_1_I: Ac_1_B
      port map (PADDI=>Ac_c_1, Ac1=>Ac(1));
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, MACHXO2;
  configuration Structure_CON of compuertas00 is
    for Structure
    end for;
  end Structure_CON;


