<Qucs Schematic 0.0.11>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=lm317_2.dat>
  <DataDisplay=lm317_2.dpl>
  <OpenDisplay=1>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <Line 0 30 0 -10 #000080 2 1>
  <Line -40 -20 80 0 #000080 2 1>
  <Line -40 -20 0 40 #000080 2 1>
  <Line -50 -10 10 0 #000080 2 1>
  <Line 40 -20 0 40 #000080 2 1>
  <Line 40 -10 10 0 #000080 2 1>
  <Line -40 20 80 0 #000080 2 1>
  <.PortSym -50 -10 1 0>
  <.PortSym 50 -10 2 180>
  <.PortSym 0 30 3 90>
  <.ID -40 -56 LM317_>
</Symbol>
<Components>
  <GND * 1 270 260 0 0 0 0>
  <Port In 1 200 170 -23 12 0 0 "1" 1 "analog" 0>
  <Port Adj 1 200 230 -23 12 0 0 "3" 1 "analog" 0>
  <Port Out 1 340 170 4 -44 0 2 "2" 1 "analog" 0>
  <SPICE X1 1 270 200 -26 -83 0 0 "lm317_2.cir" 1 "_netIN,_netOUT,_netADJ" 0 "yes" 0>
</Components>
<Wires>
  <200 230 240 230 "" 0 0 0 "">
  <200 170 240 170 "" 0 0 0 "">
  <300 170 340 170 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
