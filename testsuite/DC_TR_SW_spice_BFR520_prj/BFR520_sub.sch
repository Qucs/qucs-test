<Qucs Schematic 0.0.17>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=BFR520_sub.dat>
  <DataDisplay=BFR520_sub.dpl>
  <OpenDisplay=1>
  <Script=BFR520_sub.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <Line -20 20 0 -40 #000080 2 1>
  <.PortSym 10 -50 1 0>
  <.PortSym 10 40 3 0>
  <.PortSym -40 0 2 0>
  <.ID 30 -26 BFR520_>
  <Line -40 0 20 0 #000000 2 1>
  <Line -20 -10 30 -10 #000000 2 1>
  <Line 10 -50 0 30 #000000 2 1>
  <Arrow -20 10 30 10 5 5 #000000 2 1 0>
  <Line 10 20 0 20 #000000 2 1>
</Symbol>
<Components>
  <Port P1 1 160 210 -23 12 0 0 "1" 1 "analog" 0>
  <Port P2 1 160 270 -23 12 0 0 "2" 1 "analog" 0>
  <Port P3 1 160 330 -23 12 0 0 "3" 1 "analog" 0>
  <SPICE X1 1 400 250 -26 -77 0 0 "BFR520.cir" 1 "_net1,_net2,_net3" 0 "yes" 0 "none" 0>
</Components>
<Wires>
  <430 220 500 220 "B" 510 190 50 "">
  <300 220 370 220 "C" 350 190 21 "">
  <300 280 370 280 "E" 350 250 19 "">
  <160 210 160 210 "C" 190 180 0 "">
  <160 270 160 270 "B" 190 240 0 "">
  <160 330 160 330 "E" 190 300 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
