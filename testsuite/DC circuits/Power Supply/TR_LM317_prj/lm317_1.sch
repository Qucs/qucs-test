<Qucs Schematic 0.0.11>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=lm317_1.dat>
  <DataDisplay=lm317_1.dpl>
  <OpenDisplay=1>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <Line 0 30 0 -10 #000080 2 1>
  <.PortSym 0 30 2 90>
  <.PortSym -50 -10 1 0>
  <Line -40 -20 80 0 #000080 2 1>
  <Line -40 -20 0 40 #000080 2 1>
  <Line -50 -10 10 0 #000080 2 1>
  <Line 40 -20 0 40 #000080 2 1>
  <Line 40 -10 10 0 #000080 2 1>
  <.PortSym 50 -10 3 180>
  <Line -40 20 80 0 #000080 2 1>
  <.ID -40 -56 LM317_>
</Symbol>
<Components>
  <SPICE X1 1 280 190 -26 -83 0 0 "lm317.cir" 1 "_net1,_net2,_net3" 0 "yes" 0>
  <GND * 1 280 250 0 0 0 0>
  <Port In 1 210 160 -23 12 0 0 "1" 1 "analog" 0>
  <Port Out 1 210 220 -23 12 0 0 "3" 1 "analog" 0>
  <Port Adj 1 350 160 4 -44 0 2 "2" 1 "analog" 0>
</Components>
<Wires>
  <210 220 250 220 "" 0 0 0 "">
  <210 160 250 160 "" 0 0 0 "">
  <310 160 350 160 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
