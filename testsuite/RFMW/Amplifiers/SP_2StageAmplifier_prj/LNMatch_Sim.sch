<Qucs Schematic 0.0.6>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=LNMatch_Sim.dat>
  <DataDisplay=LNMatch_Sim.dpl>
  <OpenDisplay=1>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 1 220 220 0 0 0 0>
  <Pac P1 1 300 130 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 300 160 0 0 0 0>
  <GND * 1 120 250 0 0 0 0>
  <Pac P2 1 120 220 -78 -26 1 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <.SP SP1 1 280 260 0 51 0 0 "lin" 1 "1 GHz" 1 "20 GHz" 1 "191" 1 "yes" 0 "1" 0 "2" 0>
  <Sub SUB1 1 220 170 20 14 0 0 "LowNoiseFETMatch.sch" 1>
  <Eqn Eqn1 1 70 310 -23 14 0 0 "NFmin=10*log10(Fmin)" 1 "NF=10*log10(F)" 1 "StabFact=Rollet(S)" 1 "dB_S21=dB(S[2,1])" 1 "yes" 0>
</Components>
<Wires>
  <220 80 300 80 "" 0 0 0 "">
  <300 80 300 100 "" 0 0 0 "">
  <220 80 220 120 "" 0 0 0 "">
  <120 170 170 170 "" 0 0 0 "">
  <120 170 120 190 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 40 20 16 #000000 0 "Simulation of matched Low-Noise-FET (noise matching at\ninput and power matching at output)">
</Paintings>
