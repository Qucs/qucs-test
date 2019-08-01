<Qucs Schematic 0.0.6>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=LNStab_Sim.dat>
  <DataDisplay=LNStab_Sim.dpl>
  <OpenDisplay=1>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 1 250 240 0 0 0 0>
  <Pac P1 1 330 150 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 330 180 0 0 0 0>
  <GND * 1 150 270 0 0 0 0>
  <Pac P2 1 150 240 -78 -26 1 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Eqn Eqn1 1 100 330 -23 14 0 0 "NFmin=10*log10(Fmin)" 1 "StabFact=Rollet(S)" 1 "dB_S21=dB(S[2,1])" 1 "yes" 0>
  <.SP SP1 1 310 280 0 51 0 0 "lin" 1 "1 GHz" 1 "20 GHz" 1 "191" 1 "yes" 0 "1" 0 "2" 0>
  <Sub SUB1 1 250 190 20 14 0 0 "LowNoiseFETStab.sch" 1>
</Components>
<Wires>
  <250 100 330 100 "" 0 0 0 "">
  <330 100 330 120 "" 0 0 0 "">
  <250 100 250 140 "" 0 0 0 "">
  <150 190 200 190 "" 0 0 0 "">
  <150 190 150 210 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 70 60 16 #000000 0 "Simulation of stabilised Low-Noise-FET">
</Paintings>
