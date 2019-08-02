<Qucs Schematic 0.0.6>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=HighGainFETStab.dat>
  <DataDisplay=HighGainFETStab.dpl>
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
  <Port P1 1 120 180 -23 12 0 0 "1" 1>
  <Port P2 1 300 80 4 -44 0 2 "2" 1>
  <Port P3 1 250 330 12 4 0 1 "3" 1>
  <Sub SUB1 1 250 180 20 24 0 0 "HighGainFET.sch" 1>
  <C C1 1 200 80 -26 -49 1 0 "1.9999 pF" 1>
  <R R1 1 150 130 -104 -26 1 1 "1.0988 kOhm" 1 "16.85" 0 "US" 0>
  <L L1 1 250 280 10 -26 0 1 "177.45 pH" 1>
</Components>
<Wires>
  <150 160 150 180 "" 0 0 0 "">
  <150 180 200 180 "" 0 0 0 "">
  <150 80 170 80 "" 0 0 0 "">
  <150 80 150 100 "" 0 0 0 "">
  <250 80 250 130 "" 0 0 0 "">
  <230 80 250 80 "" 0 0 0 "">
  <250 230 250 250 "" 0 0 0 "">
  <120 180 150 180 "" 0 0 0 "">
  <250 80 300 80 "" 0 0 0 "">
  <250 310 250 330 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
