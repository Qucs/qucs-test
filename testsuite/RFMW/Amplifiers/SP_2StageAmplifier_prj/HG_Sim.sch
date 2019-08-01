<Qucs Schematic 0.0.6>
<Properties>
  <View=0,0,800,800,1,242,0>
  <Grid=10,10,1>
  <DataSet=HG_Sim.dat>
  <DataDisplay=HG_Sim.dpl>
  <OpenDisplay=1>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Sub SUB1 1 500 170 20 24 0 0 "HighGainFET.sch" 1>
  <GND * 1 500 220 0 0 0 0>
  <Pac P2 1 580 130 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 580 160 0 0 0 0>
  <GND * 1 400 250 0 0 0 0>
  <Pac P1 1 400 220 -78 -26 1 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Eqn Eqn1 1 350 310 -23 14 0 0 "NFmin=10*log10(Fmin)" 1 "StabFact=Rollet(S)" 1 "dB_S21=dB(S[2,1])" 1 "yes" 0>
  <.SP SP1 1 560 260 0 51 0 0 "lin" 1 "1 GHz" 1 "20 GHz" 1 "191" 1 "yes" 0 "1" 0 "2" 0>
</Components>
<Wires>
  <500 80 580 80 "" 0 0 0 "">
  <580 80 580 100 "" 0 0 0 "">
  <500 80 500 120 "" 0 0 0 "">
  <400 170 450 170 "" 0 0 0 "">
  <400 170 400 190 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 320 40 16 #000000 0 "Simulation of High-Gain-FET w/o extra circuitry">
</Paintings>
