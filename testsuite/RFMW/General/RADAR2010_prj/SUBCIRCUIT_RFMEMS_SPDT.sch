<Qucs Schematic 0.0.15>
<Properties>
  <View=-180,68,407,415,1.66099,0,0>
  <Grid=10,10,1>
  <DataSet=SUBCIRCUIT_RFMEMS_SPDT.dat>
  <DataDisplay=SUBCIRCUIT_RFMEMS_SPDT.dpl>
  <OpenDisplay=1>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID -20 44 RFMEMS_SPDT "1=STATE=0==">
  <Line -20 -40 40 0 #000080 2 1>
  <Line 20 -40 0 80 #000080 2 1>
  <Line -20 40 40 0 #000080 2 1>
  <Line -20 -40 0 80 #000080 2 1>
  <Line 20 -30 10 0 #000080 2 1>
  <Line 20 30 10 0 #000080 2 1>
  <Line -20 0 10 0 #000080 2 1>
  <Line -30 0 10 0 #000080 2 1>
  <Line 10 30 10 0 #000080 2 1>
  <Line 10 -30 10 0 #000080 2 1>
  <Ellipse 5 -35 10 10 #000080 0 1 #000080 1 1>
  <Ellipse 5 25 10 10 #000080 0 1 #000080 1 1>
  <Ellipse -16 -5 10 10 #000080 0 1 #000080 1 1>
  <Arrow -11 0 17 -25 5 5 #000080 2 1 0>
  <.PortSym -30 0 1 0>
  <.PortSym 30 -30 2 180>
  <.PortSym 30 30 3 180>
  <Text 11 -28 8 #000000 0 "0">
  <Text 11 15 8 #000000 0 "1">
</Symbol>
<Components>
  <Port P1 1 120 280 -32 -23 0 3 "1" 0 "analog" 0>
  <Port P3 1 340 280 4 -35 0 2 "3" 0 "analog" 0>
  <Port P2 1 -110 280 -23 12 0 0 "2" 0 "analog" 0>
  <R R1 5 10 340 -26 15 0 0 "R2" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R2 5 230 340 -26 15 0 0 "R3" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C1 5 10 220 -26 17 0 0 "7.5e-15" 1 "" 0 "neutral" 0>
  <C C2 5 230 220 -26 17 0 0 "7.5e-15" 1 "" 0 "neutral" 0>
  <GND * 1 -110 340 0 0 0 0>
  <L L1 1 -110 310 10 -26 0 1 "1 uH" 1 "" 0>
  <GND * 1 340 340 0 0 0 0>
  <L L2 1 340 310 10 -26 0 1 "1 uH" 1 "" 0>
  <GND * 1 120 340 0 0 0 0>
  <L L3 1 120 310 10 -26 0 1 "1 uH" 1 "" 0>
  <Eqn Eqn1 1 -104 123 -32 17 0 0 "R2=(STATE==0) ? 4 : 1e30" 1 "R3=(STATE==1) ? 4 : 1e30" 1 "yes" 0>
</Components>
<Wires>
  <40 280 120 280 "" 0 0 0 "">
  <120 280 200 280 "" 0 0 0 "">
  <260 280 340 280 "" 0 0 0 "">
  <-110 280 -20 280 "" 0 0 0 "">
  <-20 280 -20 340 "" 0 0 0 "">
  <40 280 40 340 "" 0 0 0 "">
  <200 280 200 340 "" 0 0 0 "">
  <260 280 260 340 "" 0 0 0 "">
  <260 220 260 280 "" 0 0 0 "">
  <200 220 200 280 "" 0 0 0 "">
  <40 220 40 280 "" 0 0 0 "">
  <-20 220 -20 280 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 80 117 6 #000000 0 "Ohmic Cantilever RF MEMS SPDT Switch\nRF MEMS for Radar Tutorial\nK. Van Caekenberghe\nIEEE International Radar Conference, Washington D.C., May 14, 2010\n(Tested on Qucs 0.0.15)">
</Paintings>
