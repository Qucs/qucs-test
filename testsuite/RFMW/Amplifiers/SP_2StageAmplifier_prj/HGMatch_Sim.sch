<Qucs Schematic 0.0.6>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=HGMatch_Sim.dat>
  <DataDisplay=HGMatch_Sim.dpl>
  <OpenDisplay=1>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 1 200 220 0 0 0 0>
  <Pac P1 1 280 130 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 280 160 0 0 0 0>
  <GND * 1 100 250 0 0 0 0>
  <Pac P2 1 100 220 -78 -26 1 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <.SP SP1 1 260 260 0 51 0 0 "lin" 1 "1 GHz" 1 "20 GHz" 1 "191" 1 "yes" 0 "1" 0 "2" 0>
  <Eqn Eqn1 1 50 310 -23 14 0 0 "NFmin=10*log10(Fmin)" 1 "NF=10*log10(F)" 1 "StabFact=Rollet(S)" 1 "dB_S21=dB(S[2,1])" 1 "yes" 0>
  <Sub SUB1 1 200 170 20 24 0 0 "HighGainFETMatch.sch" 1>
</Components>
<Wires>
  <200 80 280 80 "" 0 0 0 "">
  <280 80 280 100 "" 0 0 0 "">
  <200 80 200 120 "" 0 0 0 "">
  <100 170 150 170 "" 0 0 0 "">
  <100 170 100 190 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 20 20 16 #000000 0 "Simulation of matched High-Gain-FET (power matching at\ninput and output)">
</Paintings>
