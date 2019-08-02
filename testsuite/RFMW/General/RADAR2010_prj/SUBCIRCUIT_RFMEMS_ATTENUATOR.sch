<Qucs Schematic 0.0.15>
<Properties>
  <View=33,120,1460,560,0.683252,0,0>
  <Grid=1,1,1>
  <DataSet=SUBCIRCUIT_RFMEMS_ATTENUATOR.dat>
  <DataDisplay=SUBCIRCUIT_RFMEMS_ATTENUATOR.dpl>
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
  <Text -17 -11 12 #000000 0 "ATT">
</Symbol>
<Components>
  <GND * 1 300 340 0 0 0 0>
  <GND * 1 740 340 0 0 0 0>
  <Port P1 1 100 210 -23 12 0 0 "1" 0 "analog" 0>
  <GND * 1 1180 340 0 0 0 0>
  <R R1 5 230 240 -26 15 0 0 "26 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R3 5 300 310 15 -26 0 1 "35.1 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R2 5 370 240 -26 15 0 0 "26 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R4 5 670 240 -26 15 0 0 "14 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R6 5 740 310 15 -26 0 1 "82.2 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R5 5 810 240 -26 15 0 0 "14 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R7 5 1110 240 -26 15 0 0 "7.1 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R9 5 1180 310 15 -26 0 1 "171.3 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Sub SPDT1 5 130 210 -26 48 0 0 "SUBCIRCUIT_RFMEMS_SPDT.sch" 0 "BIT1" 1>
  <Sub SPDT3 5 570 210 -26 48 0 0 "SUBCIRCUIT_RFMEMS_SPDT.sch" 0 "BIT2" 1>
  <Sub SPDT4 5 910 210 -26 48 1 2 "SUBCIRCUIT_RFMEMS_SPDT.sch" 0 "BIT2" 1>
  <Sub SPDT5 5 1010 210 -26 48 0 0 "SUBCIRCUIT_RFMEMS_SPDT.sch" 0 "BIT3" 1>
  <Sub SPDT6 5 1350 210 -26 48 1 2 "SUBCIRCUIT_RFMEMS_SPDT.sch" 0 "BIT3" 1>
  <Eqn Eqn1 1 143 415 -32 17 0 0 "BIT1=(STATE==4 || STATE==5 || STATE==6 || STATE==7) ? 1 : 0" 1 "BIT2=(STATE==2 || STATE==3 || STATE==6 || STATE==7) ? 1 : 0" 1 "BIT3=(STATE==1 || STATE==3 || STATE==5 || STATE==7) ? 1 : 0" 1 "yes" 0>
  <Sub SPDT2 5 470 210 -26 48 1 2 "SUBCIRCUIT_RFMEMS_SPDT.sch" 0 "BIT1" 1>
  <Port P2 1 1379 210 4 -35 0 2 "2" 0 "analog" 0>
  <R R8 5 1250 240 -26 15 0 0 "7.1 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
</Components>
<Wires>
  <300 240 340 240 "" 0 0 0 "">
  <600 240 640 240 "" 0 0 0 "">
  <600 180 880 180 "" 0 0 0 "">
  <700 240 740 240 "" 0 0 0 "">
  <740 240 740 280 "" 0 0 0 "">
  <940 210 980 210 "" 0 0 0 "">
  <1040 240 1080 240 "" 0 0 0 "">
  <1140 240 1180 240 "" 0 0 0 "">
  <1180 240 1220 240 "" 0 0 0 "">
  <1180 240 1180 280 "" 0 0 0 "">
  <1280 240 1320 240 "" 0 0 0 "">
  <1040 180 1320 180 "" 0 0 0 "">
  <260 240 300 240 "" 0 0 0 "">
  <160 240 200 240 "" 0 0 0 "">
  <300 240 300 280 "" 0 0 0 "">
  <840 240 880 240 "" 0 0 0 "">
  <740 240 780 240 "" 0 0 0 "">
  <400 240 440 240 "" 0 0 0 "">
  <160 180 440 180 "" 0 0 0 "">
  <500 210 540 210 "" 0 0 0 "">
  <1379 210 1380 210 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Rectangle 980 160 400 210 #000000 0 1 #c0c0c0 1 0>
  <Rectangle 540 160 400 210 #000000 0 1 #c0c0c0 1 0>
  <Rectangle 100 160 400 210 #000000 0 1 #c0c0c0 1 0>
  <Text 100 370 12 #000000 0 "BIT 1: 10 dB ATTENUATION">
  <Text 540 370 12 #000000 0 "BIT 2: 5 dB ATTENUATION">
  <Text 980 370 12 #000000 0 "BIT 3: 2.5 dB ATTENUATION">
</Paintings>
