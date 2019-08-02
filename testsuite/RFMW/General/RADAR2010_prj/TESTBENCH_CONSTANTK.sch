<Qucs Schematic 0.0.15>
<Properties>
  <View=-250,-241,732,806,0.711302,0,0>
  <Grid=10,10,1>
  <DataSet=TESTBENCH_CONSTANTK.dat>
  <DataDisplay=TESTBENCH_CONSTANTK.dpl>
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
  <.DC DC1 1 -200 -20 0 43 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <GND * 1 -180 220 0 0 0 3>
  <GND * 1 20 320 0 0 0 0>
  <R R1 5 -50 220 -26 15 0 0 "26 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R2 5 20 290 15 -26 0 1 "35.1 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R3 5 90 220 -26 15 0 0 "26 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 220 220 0 0 0 1>
  <Pac P2 1 190 220 -26 40 1 2 "2" 0 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Eqn Eqn2 1 290 -10 -32 17 0 0 "S11_dB=dB(S[1,1])" 1 "S11_Deg=rad2deg(unwrap(phase(S[1,1])))" 1 "S12_dB=dB(S[1,2])" 1 "S12_Deg=rad2deg(unwrap(phase(S[1,2])))" 1 "S21_dB=dB(S[2,1])" 1 "S21_Deg=rad2deg(unwrap(phase(S[2,1])))" 1 "S22_dB=dB(S[2,2])" 1 "S22_Deg=rad2deg(unwrap(phase(S[2,2])))" 1 "yes" 0>
  <GND * 1 20 500 0 0 0 0>
  <Pac P1 1 -150 220 -26 40 0 0 "1" 0 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 -180 400 0 0 0 3>
  <GND * 1 220 400 0 0 0 1>
  <Pac P3 1 -150 400 -26 18 0 0 "3" 0 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Pac P4 1 190 400 -26 18 1 2 "4" 0 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Eqn Eqn3 1 420 250 -32 17 0 0 "S33_dB=dB(S[3,3])" 1 "S33_Deg=rad2deg(unwrap(phase(S[3,3])))" 1 "S34_dB=dB(S[3,4])" 1 "S34_Deg=rad2deg(unwrap(phase(S[3,4])))" 1 "S43_dB=dB(S[4,3])" 1 "S43_Deg=rad2deg(unwrap(phase(S[4,3])))" 1 "S44_dB=dB(S[4,4])" 1 "S44_Deg=rad2deg(unwrap(phase(S[4,4])))" 1 "yes" 0>
  <.SP SP1 1 -30 -20 0 74 0 0 "lin" 1 "0.1 GHz" 1 "20 GHz" 1 "19901" 1 "yes" 1 "1" 0 "2" 0 "no" 0 "no" 0>
  <C C2 5 20 470 17 -26 0 1 "0.005 pF" 1 "" 0 "neutral" 0>
  <L L4 5 90 400 -26 10 0 0 "0.0375 nH" 1 "" 0>
  <L L3 5 -50 400 -26 10 0 0 "0.0375 nH" 1 "" 0>
</Components>
<Wires>
  <-120 220 -80 220 "" 0 0 0 "">
  <-20 220 20 220 "" 0 0 0 "">
  <20 220 60 220 "" 0 0 0 "">
  <20 220 20 260 "" 0 0 0 "">
  <120 220 160 220 "" 0 0 0 "">
  <-20 400 20 400 "" 0 0 0 "">
  <-120 400 -80 400 "" 0 0 0 "">
  <120 400 160 400 "" 0 0 0 "">
  <20 400 60 400 "" 0 0 0 "">
  <20 400 20 440 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 100 320 6 #000000 0 "RF MEMS for Radar Tutorial\nK. Van Caekenberghe\nIEEE International Radar Conference, Washington D.C., May 14, 2010\n(Tested on Qucs 0.0.15)">
</Paintings>
