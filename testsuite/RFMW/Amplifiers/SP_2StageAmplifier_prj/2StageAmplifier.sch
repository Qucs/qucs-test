<Qucs Schematic 0.0.20>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=2StageAmplifier.dat>
  <DataDisplay=2StageAmplifier.dpl>
  <OpenDisplay=1>
  <Script=2StageAmplifier.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 5 120 250 0 0 0 0>
  <Pac P2 1 120 220 -78 -26 1 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <.SP SP1 1 280 260 0 77 0 0 "lin" 1 "1 GHz" 1 "20 GHz" 1 "191" 1 "yes" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn1 1 70 310 -23 14 0 0 "NFmin=10*log10(Fmin)" 1 "NF=10*log10(F)" 1 "StabFact=Rollet(S)" 1 "dB_S21=dB(S[2,1])" 1 "yes" 0>
  <Pac P1 1 460 110 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 5 460 140 0 0 0 0>
  <GND * 5 360 220 0 0 0 0>
  <Sub SUB1 1 360 170 20 24 0 0 "HighGainFETMatch.sch" 1>
  <Sub SUB2 1 240 170 -184 -62 0 0 "LowNoiseFETMatch.sch" 1>
  <GND * 5 240 220 0 0 0 0>
</Components>
<Wires>
  <360 60 360 120 "" 0 0 0 "">
  <360 60 460 60 "" 0 0 0 "">
  <460 60 460 80 "" 0 0 0 "">
  <120 170 190 170 "" 0 0 0 "">
  <120 170 120 190 "" 0 0 0 "">
  <240 110 290 110 "" 0 0 0 "">
  <240 110 240 120 "" 0 0 0 "">
  <290 170 310 170 "" 0 0 0 "">
  <290 110 290 170 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 40 20 16 #000000 0 "Simulation of overall 2-stage amplifier">
</Paintings>
