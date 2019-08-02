<Qucs Schematic 0.0.6>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=LowNoiseFETStab.dat>
  <DataDisplay=LowNoiseFETStab.dpl>
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
  <.PortSym -50 0 1>
  <.PortSym 0 -50 2>
  <.PortSym 0 50 3>
  <.ID 20 14 SUB>
</Symbol>
<Components>
  <Sub SUB1 1 220 190 20 24 0 0 "LowNoiseFET.sch" 1>
  <C C1 1 170 90 -26 -49 1 0 "2 pF" 1>
  <L L1 1 220 290 10 -26 0 1 "95.475 pH" 1>
  <Port P1 1 90 190 -23 12 0 0 "1" 1>
  <Port P2 1 270 90 4 -44 0 2 "2" 1>
  <Port P3 1 220 340 12 4 0 1 "3" 1>
  <R R1 1 120 140 -98 -26 1 1 "992.19 Ohm" 1 "16.85" 0 "US" 0>
</Components>
<Wires>
  <120 170 120 190 "" 0 0 0 "">
  <120 190 170 190 "" 0 0 0 "">
  <120 90 140 90 "" 0 0 0 "">
  <120 90 120 110 "" 0 0 0 "">
  <220 90 220 140 "" 0 0 0 "">
  <200 90 220 90 "" 0 0 0 "">
  <220 240 220 260 "" 0 0 0 "">
  <90 190 120 190 "" 0 0 0 "">
  <220 90 270 90 "" 0 0 0 "">
  <220 320 220 340 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
