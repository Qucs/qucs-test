<Qucs Schematic 0.0.15>
<Properties>
  <View=-275,58,515,493,1.31536,63,0>
  <Grid=10,10,1>
  <DataSet=SUBCIRCUIT_MESFET_SPST.dat>
  <DataDisplay=SUBCIRCUIT_MESFET_SPST.dpl>
  <OpenDisplay=1>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID -20 44 MESFET_SPST "1=STATE=0==">
  <Line -20 0 10 0 #000080 2 1>
  <Line -30 0 10 0 #000080 2 1>
  <Ellipse -16 -5 10 10 #000080 0 1 #000080 1 1>
  <.PortSym -30 0 1 0>
  <Line 20 0 10 0 #000080 2 1>
  <Line 10 0 10 0 #000080 2 1>
  <Ellipse 5 -5 10 10 #000080 0 1 #000080 1 1>
  <.PortSym 30 0 2 180>
  <Arrow -10 0 20 -10 4 4 #000080 2 1 0>
</Symbol>
<Components>
  <GND * 1 -60 130 0 0 0 2>
  <L L1 5 -60 330 -26 -32 0 2 "2.5 nH" 1 "" 0>
  <Vdc V2 5 -60 160 -62 -26 0 3 "VG" 1>
  <R R1 5 -60 220 15 -26 0 1 "10000 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <MESFET T1 5 -60 280 -26 8 0 3 "1" 0 "-1.8" 0 "0.65e-3" 0 "2.25" 0 "0.05" 0 "0.3" 0 "2.1" 0 "0.1" 0 "0.5" 0 "0.3" 0 "0.2" 0 "0.015" 0 "1" 0 "1e-14" 0 "1" 0 "1.0" 0 "60" 0 "3.0" 0 "0.5" 0 "1e-9" 0 "1e-3" 0 "1" 0 "1.11" 0 "0.5" 0 "0.2e-12" 0 "1e-12" 0 "1e-12" 0 "0" 0 "0" 0 "0" 0 "2.65" 0 "-0.19" 0 "3" 0 "3" 0 "2" 0 "2" 0 "2" 0 "0" 0 "5.1" 0 "1.3" 0 "1.3" 0 "0" 0 "0" 0 "0" 0 "1e-3" 0 "10" 0 "10" 0 "1" 0 "0" 0 "1" 0 "26.85" 0 "26.85" 0>
  <Eqn Eqn1 1 10 116 -32 17 0 0 "VG=(STATE==1) ? 0 : -5" 1 "yes" 0>
  <GND * 1 -160 340 0 0 0 0>
  <L L2 5 -160 310 -62 -26 0 3 "1 uH" 1 "" 0>
  <Port P1 1 -160 280 -23 -34 1 0 "1" 0 "analog" 0>
  <Port P2 1 40 280 4 -35 0 2 "2" 0 "analog" 0>
  <GND * 1 40 340 0 0 0 0>
  <L L3 5 40 310 10 -26 1 3 "1 uH" 1 "" 0>
</Components>
<Wires>
  <-160 280 -90 280 "" 0 0 0 "">
  <-90 280 -90 330 "" 0 0 0 "">
  <-30 280 -30 330 "" 0 0 0 "">
  <-30 280 40 280 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text -190 370 6 #000000 0 "S-Band 0.5 um GaAs MESFET SPST Switch\nRF MEMS for Radar Tutorial\nK. Van Caekenberghe\nIEEE International Radar Conference, Washington D.C., May 14, 2010\n(Tested on Qucs 0.0.15)">
</Paintings>
