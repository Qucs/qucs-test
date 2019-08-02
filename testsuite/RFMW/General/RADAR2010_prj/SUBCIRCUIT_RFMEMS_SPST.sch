<Qucs Schematic 0.0.15>
<Properties>
  <View=-180,68,407,415,1.66099,0,0>
  <Grid=10,10,1>
  <DataSet=SUBCIRCUIT_RFMEMS_SPST.dat>
  <DataDisplay=SUBCIRCUIT_RFMEMS_SPST.dpl>
  <OpenDisplay=1>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <Line -30 0 10 0 #000080 2 1>
  <.PortSym -30 0 1 0>
  <Line -20 0 10 0 #000080 2 1>
  <Ellipse -16 -5 10 10 #000080 0 1 #000080 1 1>
  <Line 20 0 10 0 #000080 2 1>
  <Line 10 0 10 0 #000080 2 1>
  <Ellipse 5 -5 10 10 #000080 0 1 #000080 1 1>
  <Arrow -10 0 20 -10 4 4 #000080 2 1 0>
  <.PortSym 30 0 2 180>
  <.ID -60 24 RFMEMS_SPST "1=STATE=0==">
</Symbol>
<Components>
  <C C1 5 10 220 -26 17 0 0 "7.5e-15" 1 "" 0 "neutral" 0>
  <R R1 5 10 340 -26 15 0 0 "R" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Port P2 1 120 280 4 -35 0 2 "2" 0 "analog" 0>
  <Port P1 1 -110 280 -23 12 0 0 "1" 0 "analog" 0>
  <Eqn Eqn1 1 -104 143 -32 17 0 0 "R=(STATE==1) ? 4 : 1e15" 1 "yes" 0>
</Components>
<Wires>
  <40 280 120 280 "" 0 0 0 "">
  <-110 280 -20 280 "" 0 0 0 "">
  <-20 280 -20 340 "" 0 0 0 "">
  <40 280 40 340 "" 0 0 0 "">
  <40 220 40 280 "" 0 0 0 "">
  <-20 220 -20 280 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 70 137 6 #000000 0 "Ohmic Cantilever RF MEMS SPDT Switch\nRF MEMS for Radar Tutorial\nK. Van Caekenberghe\nIEEE International Radar Conference, Washington D.C., May 14, 2010\n(Tested on Qucs 0.0.15)">
</Paintings>
