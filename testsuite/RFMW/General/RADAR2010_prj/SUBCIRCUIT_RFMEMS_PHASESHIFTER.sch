<Qucs Schematic 0.0.15>
<Properties>
  <View=13,120,619,569,1.28953,0,0>
  <Grid=10,10,1>
  <DataSet=SUBCIRCUIT_RFMEMS_PHASESHIFTER.dat>
  <DataDisplay=SUBCIRCUIT_RFMEMS_PHASESHIFTER.dpl>
  <OpenDisplay=1>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID -20 14 RFMEMS_ATTENUATOR "1=STATE=0==">
  <Line -20 -10 40 0 #000080 2 1>
  <Line 20 -10 0 20 #000080 2 1>
  <Line -20 10 40 0 #000080 2 1>
  <Line -20 -10 0 20 #000080 2 1>
  <Line -30 0 10 0 #000080 2 1>
  <Line 20 0 10 0 #000080 2 1>
  <.PortSym 30 0 2 180>
  <.PortSym -30 0 1 0>
  <Text -11 -10 12 #000000 0 "PS">
</Symbol>
<Components>
  <Port P1 1 100 210 -23 12 0 0 "1" 0 "analog" 0>
  <Sub SPDT1 5 130 210 -26 48 0 0 "SUBCIRCUIT_RFMEMS_SPDT.sch" 0 "BIT1" 1>
  <Eqn Eqn1 1 143 415 -32 17 0 0 "BIT1=(STATE==4 || STATE==5 || STATE==6 || STATE==7) ? 1 : 0" 1 "BIT2=(STATE==2 || STATE==3 || STATE==6 || STATE==7) ? 1 : 0" 1 "BIT3=(STATE==1 || STATE==3 || STATE==5 || STATE==7) ? 1 : 0" 1 "yes" 0>
  <Sub SPDT2 5 470 210 -26 48 1 2 "SUBCIRCUIT_RFMEMS_SPDT.sch" 0 "BIT1" 1>
  <Port P2 1 500 210 4 -35 0 2 "2" 0 "analog" 0>
  <GND * 1 300 340 0 0 0 0>
  <C C1 5 300 310 17 -26 0 1 "0.005 pF" 1 "" 0 "neutral" 0>
  <L L1 5 370 240 -26 10 0 0 "0.0375 nH" 1 "" 0>
  <L L2 5 230 240 -26 10 0 0 "0.0375 nH" 1 "" 0>
</Components>
<Wires>
  <160 180 440 180 "" 0 0 0 "">
  <160 240 200 240 "" 0 0 0 "">
  <400 240 440 240 "" 0 0 0 "">
  <260 240 300 240 "" 0 0 0 "">
  <300 240 340 240 "" 0 0 0 "">
  <300 240 300 280 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Rectangle 100 160 400 210 #000000 0 1 #c0c0c0 1 0>
  <Text 100 370 12 #000000 0 "BIT 1: 180 DEG PHASE SHIFT (@ 10 GHz)">
</Paintings>
