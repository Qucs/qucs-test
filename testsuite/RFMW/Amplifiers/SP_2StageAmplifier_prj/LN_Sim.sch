<Qucs Schematic 0.0.6>
<Properties>
  <View=0,0,800,800,1,242,0>
  <Grid=10,10,1>
  <DataSet=LN_Sim.dat>
  <DataDisplay=LN_Sim.dpl>
  <OpenDisplay=1>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 1 480 220 0 0 0 0>
  <Pac P1 1 560 130 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 560 160 0 0 0 0>
  <GND * 1 380 250 0 0 0 0>
  <Pac P2 1 380 220 -78 -26 1 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Eqn Eqn1 1 330 310 -23 14 0 0 "NFmin=10*log10(Fmin)" 1 "StabFact=Rollet(S)" 1 "dB_S21=dB(S[2,1])" 1 "yes" 0>
  <.SP SP1 1 540 260 0 51 0 0 "lin" 1 "1 GHz" 1 "20 GHz" 1 "191" 1 "yes" 0 "1" 0 "2" 0>
  <Sub SUB1 1 480 170 20 24 0 0 "LowNoiseFET.sch" 1>
</Components>
<Wires>
  <480 80 560 80 "" 0 0 0 "">
  <560 80 560 100 "" 0 0 0 "">
  <480 80 480 120 "" 0 0 0 "">
  <380 170 430 170 "" 0 0 0 "">
  <380 170 380 190 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 300 40 16 #000000 0 "Simulation of Low-Noise-FET w/o extra circuitry">
</Paintings>
