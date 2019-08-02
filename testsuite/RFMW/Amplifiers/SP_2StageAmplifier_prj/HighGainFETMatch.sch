<Qucs Schematic 0.0.6>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=HighGainFETMatch.dat>
  <DataDisplay=HighGainFETMatch.dpl>
  <OpenDisplay=1>
</Properties>
<Symbol>
  <Line -20 -20 0 40 #000080 2 1>
  <Line -20 -10 20 0 #00007f 2 1>
  <Line 0 -10 0 -40 #00007f 2 1>
  <Line -50 0 30 0 #000080 2 1>
  <Line -20 10 20 0 #00007f 2 1>
  <Line 0 50 0 -40 #00007f 2 1>
  <Ellipse -40 -30 60 60 #00007f 0 1 #c0c0c0 1 0>
  <.PortSym 0 -50 2>
  <.ID 20 24 SUB>
  <.PortSym 0 50 3>
  <.PortSym -50 0 1>
</Symbol>
<Components>
  <Port P1 1 260 310 12 4 0 1 "3" 1>
  <Port P2 1 60 160 -23 12 0 0 "1" 1>
  <Port P3 1 470 60 4 -44 0 2 "2" 1>
  <Sub SUB1 1 260 160 20 24 0 0 "HighGainFET.sch" 1>
  <C C1 1 210 60 -26 -49 1 0 "2 pF" 1>
  <R R1 1 160 110 -112 -26 1 1 "1098.812 Ohm" 1 "16.85" 0 "US" 0>
  <C C2 1 110 160 -26 17 0 0 "3.35 pF" 1>
  <L L3 1 160 260 10 -26 0 1 "0.6713 nH" 1>
  <L L1 1 260 260 10 -26 0 1 "177.5 pH" 1>
  <L L2 1 370 110 10 -26 0 1 "0.8238 nH" 1>
  <C C3 1 410 60 -26 -49 1 0 "0.2088 pF" 1>
</Components>
<Wires>
  <160 140 160 160 "" 0 0 0 "">
  <160 160 210 160 "" 0 0 0 "">
  <160 60 180 60 "" 0 0 0 "">
  <160 60 160 80 "" 0 0 0 "">
  <260 60 260 110 "" 0 0 0 "">
  <240 60 260 60 "" 0 0 0 "">
  <260 210 260 230 "" 0 0 0 "">
  <60 160 80 160 "" 0 0 0 "">
  <140 160 160 160 "" 0 0 0 "">
  <260 290 260 300 "" 0 0 0 "">
  <160 160 160 230 "" 0 0 0 "">
  <260 300 260 310 "" 0 0 0 "">
  <160 300 260 300 "" 0 0 0 "">
  <160 290 160 300 "" 0 0 0 "">
  <440 60 470 60 "" 0 0 0 "">
  <370 60 380 60 "" 0 0 0 "">
  <370 60 370 80 "" 0 0 0 "">
  <370 140 370 300 "" 0 0 0 "">
  <260 300 370 300 "" 0 0 0 "">
  <260 60 370 60 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>