<Qucs Schematic 0.0.15>
<Properties>
  <View=-227,65,605,557,1.17308,0,0>
  <Grid=10,10,1>
  <DataSet=SUBCIRCUIT_MESFET_SPDT.dat>
  <DataDisplay=SUBCIRCUIT_MESFET_SPDT.dpl>
  <OpenDisplay=1>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID -20 44 MOSFET_SPDT "1=STATE=0==">
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
  <GND * 1 260 380 0 0 0 0>
  <GND * 1 -20 380 0 0 1 2>
  <GND * 1 -60 380 0 0 0 0>
  <Port P2 1 -100 280 -23 12 0 0 "2" 0 "analog" 0>
  <Port P3 1 340 280 4 -35 0 2 "3" 0 "analog" 0>
  <GND * 1 300 380 0 0 0 0>
  <Eqn Eqn1 1 -170 176 -32 17 0 0 "STATE2=(STATE==0) ? 1 : 0" 1 "STATE3=(STATE==1) ? 1 : 0" 1 "yes" 0>
  <Sub SPST1 5 190 280 -26 13 0 0 "SUBCIRCUIT_MESFET_SPST.sch" 0 "STATE3" 1>
  <Sub SPST3 5 50 280 -26 13 1 2 "SUBCIRCUIT_MESFET_SPST.sch" 0 "STATE2" 1>
  <Sub SPST4 5 -20 350 13 -26 0 1 "SUBCIRCUIT_MESFET_SPST.sch" 0 "STATE3" 1>
  <Sub SPST5 5 -60 350 -137 -26 1 1 "SUBCIRCUIT_MESFET_SPST.sch" 0 "STATE3" 1>
  <Sub SPST2 5 260 350 -137 -26 1 1 "SUBCIRCUIT_MESFET_SPST.sch" 0 "STATE2" 1>
  <Sub SPST6 5 300 350 13 -26 0 1 "SUBCIRCUIT_MESFET_SPST.sch" 0 "STATE2" 1>
</Components>
<Wires>
  <120 280 160 280 "" 0 0 0 "">
  <220 280 260 280 "" 0 0 0 "">
  <-20 280 20 280 "" 0 0 0 "">
  <80 280 120 280 "" 0 0 0 "">
  <-20 280 -20 320 "" 0 0 0 "">
  <260 280 260 320 "" 0 0 0 "">
  <-60 280 -20 280 "" 0 0 0 "">
  <-60 280 -60 320 "" 0 0 0 "">
  <-100 280 -60 280 "" 0 0 0 "">
  <260 280 300 280 "" 0 0 0 "">
  <300 280 340 280 "" 0 0 0 "">
  <300 280 300 320 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 40 160 6 #000000 0 "S-Band 0.5 um GaAs MESFET Series-Shunt-Shunt SPDT Switch\nRF MEMS for Radar Tutorial\nK. Van Caekenberghe\nIEEE International Radar Conference, Washington D.C., May 14, 2010\n(Tested on Qucs 0.0.15)">
</Paintings>
