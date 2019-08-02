<Qucs Schematic 0.0.15>
<Properties>
  <View=-180,1,400,547,1,0,0>
  <Grid=10,10,1>
  <DataSet=TESTBENCH_SPST_SP.dat>
  <DataDisplay=TESTBENCH_SPST_SP.dpl>
  <OpenDisplay=1>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID -20 -16 SPDT>
  <Line -20 20 40 0 #000080 2 1>
  <Line 20 20 0 -40 #000080 2 1>
  <Line -20 -20 40 0 #000080 2 1>
  <Line -20 20 0 -40 #000080 2 1>
</Symbol>
<Components>
  <GND * 1 -40 320 0 0 0 3>
  <GND * 1 260 320 0 0 0 1>
  <.DC DC1 1 -130 50 0 43 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.SP SP1 1 40 50 0 74 0 0 "lin" 1 "0.1 GHz" 1 "100 GHz" 1 "96" 1 "yes" 1 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn1 1 220 60 -32 17 0 0 "S11_dB=dB(S[1,1])" 1 "S11_Deg=phase(S[1,1])" 1 "S12_dB=dB(S[1,2])" 1 "S12_Deg=phase(S[1,2])" 1 "S21_dB=dB(S[2,1])" 1 "S21_Deg=phase(S[2,1])" 1 "S22_dB=dB(S[2,2])" 1 "S22_Deg=phase(S[2,2])" 1 "yes" 0>
  <Sub SUB1 1 90 320 -26 13 0 0 "SUBCIRCUIT_MESFET_SPST.sch" 0 "0" 1>
  <Sub SUB2 1 140 450 13 -26 0 1 "SUBCIRCUIT_MESFET_SPST.sch" 0 "1" 1>
  <GND * 1 140 480 0 0 0 0>
  <Pac P3 1 -10 320 -26 40 0 0 "1" 0 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Pac P2 1 230 320 -26 40 1 2 "2" 0 "50" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
</Components>
<Wires>
  <20 320 60 320 "" 0 0 0 "">
  <140 320 140 420 "" 0 0 0 "">
  <120 320 140 320 "" 0 0 0 "">
  <140 320 200 320 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text -140 240 6 #000000 0 "RF MEMS for Radar Tutorial\nK. Van Caekenberghe\nIEEE International Radar Conference, Washington D.C., May 14, 2010\n(Tested on Qucs 0.0.15)">
</Paintings>
