<Qucs Schematic 0.0.6>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=HGStab_Sim.dat>
  <DataDisplay=HGStab_Sim.dpl>
  <OpenDisplay=1>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 1 220 200 0 0 0 0>
  <Pac P1 1 300 110 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 300 140 0 0 0 0>
  <GND * 1 120 230 0 0 0 0>
  <Pac P2 1 120 200 -78 -26 1 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Eqn Eqn1 1 70 290 -23 14 0 0 "NFmin=10*log10(Fmin)" 1 "StabFact=Rollet(S)" 1 "dB_S21=dB(S[2,1])" 1 "yes" 0>
  <.SP SP1 1 280 240 0 51 0 0 "lin" 1 "1 GHz" 1 "20 GHz" 1 "191" 1 "yes" 0 "1" 0 "2" 0>
  <Sub SUB1 1 220 150 20 24 0 0 "HighGainFETStab.sch" 1>
</Components>
<Wires>
  <220 60 300 60 "" 0 0 0 "">
  <300 60 300 80 "" 0 0 0 "">
  <220 60 220 100 "" 0 0 0 "">
  <120 150 170 150 "" 0 0 0 "">
  <120 150 120 170 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 40 20 16 #000000 0 "Simulation of stabilised High-Gain-FET">
</Paintings>
