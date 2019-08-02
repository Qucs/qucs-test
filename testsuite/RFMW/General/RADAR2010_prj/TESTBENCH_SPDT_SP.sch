<Qucs Schematic 0.0.15>
<Properties>
  <View=-190,-9,782,453,1.00309,0,0>
  <Grid=10,10,1>
  <DataSet=TESTBENCH_SPDT_SP.dat>
  <DataDisplay=TESTBENCH_SPDT_SP.dpl>
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
  <GND * 1 -40 300 0 0 0 3>
  <GND * 1 220 270 0 0 0 1>
  <GND * 1 220 330 0 0 0 1>
  <Pac P2 1 190 270 -26 -84 0 2 "2" 0 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Pac P3 1 190 330 -26 40 1 2 "3" 0 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Pac P1 1 -10 300 -26 40 0 0 "1" 0 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <.DC DC1 1 -140 40 0 43 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Eqn Eqn1 1 310 50 -32 17 0 0 "S11_dB=dB(S[1,1])" 1 "S12_dB=dB(S[1,2])" 1 "S13_dB=dB(S[1,3])" 1 "S21_dB=dB(S[2,1])" 1 "S22_dB=dB(S[2,2])" 1 "S23_dB=dB(S[2,3])" 1 "S31_dB=dB(S[3,1])" 1 "S32_dB=dB(S[3,2])" 1 "S33_dB=dB(S[3,3])" 1 "yes" 0>
  <.SP SP1 1 40 40 0 74 0 0 "lin" 1 "0.1 GHz" 1 "10 GHz" 1 "100" 1 "yes" 1 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn3 1 470 50 -32 17 0 0 "S11_Deg=rad2deg(unwrap(phase(S[1,1])))" 1 "S12_Deg=rad2deg(unwrap(phase(S[1,2])))" 1 "S13_Deg=rad2deg(unwrap(phase(S[1,3])))" 1 "S21_Deg=rad2deg(unwrap(phase(S[2,1])))" 1 "S22_Deg=rad2deg(unwrap(phase(S[2,2])))" 1 "S23_Deg=rad2deg(unwrap(phase(S[2,3])))" 1 "S31_Deg=rad2deg(unwrap(phase(S[3,1])))" 1 "S32_Deg=rad2deg(unwrap(phase(S[3,2])))" 1 "S33_Deg=rad2deg(unwrap(phase(S[3,2])))" 1 "yes" 0>
  <Sub SPDT1 1 90 300 -26 48 0 0 "SUBCIRCUIT_RFMEMS_SPDT.sch" 1 "0" 1>
</Components>
<Wires>
  <120 330 160 330 "" 0 0 0 "">
  <120 270 160 270 "" 0 0 0 "">
  <20 300 60 300 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 380 320 6 #000000 0 "RF MEMS for Radar Tutorial\nK. Van Caekenberghe\nIEEE International Radar Conference, Washington D.C., May 14, 2010\n(Tested on Qucs 0.0.15)">
</Paintings>
