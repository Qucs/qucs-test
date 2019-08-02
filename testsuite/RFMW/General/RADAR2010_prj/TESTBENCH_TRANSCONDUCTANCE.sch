<Qucs Schematic 0.0.15>
<Properties>
  <View=25,9,900,600,1.11048,0,0>
  <Grid=10,10,1>
  <DataSet=TESTBENCH_TRANSCONDUCTANCE.dat>
  <DataDisplay=TESTBENCH_TRANSCONDUCTANCE.dpl>
  <OpenDisplay=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 1 140 200 0 0 0 0>
  <Vdc VGS 1 140 170 -75 -26 1 1 "VGS" 1>
  <R R3 1 210 140 -26 15 0 0 "0.001" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 310 200 0 0 0 0>
  <R R2 1 390 110 -26 -61 0 2 "0.001" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 460 200 0 0 0 0>
  <Vdc VDS 1 460 170 17 -26 0 1 "3 V" 1>
  <Eqn Eqn1 1 670 90 -32 17 0 0 "gm=diff(-VDS.I,VGS)" 1 "yes" 0>
  <.DC DC1 1 450 270 0 45 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.SW SW1 1 80 240 0 75 0 0 "DC1" 1 "lin" 1 "VGS" 1 "-5" 1 "5" 1 "101" 1>
  <MESFET T1 5 310 140 8 -26 0 0 "1" 0 "-1.8" 0 "0.69e-3" 1 "2.25" 0 "0.05" 0 "0.3" 0 "2.1" 0 "0.1" 0 "0.5" 0 "0.3" 0 "0.2" 0 "0.015" 0 "1" 0 "1e-14" 0 "1" 0 "1.0" 0 "60" 0 "3.0" 0 "0.5" 0 "1e-9" 0 "1e-3" 0 "1" 0 "1.11" 0 "0.5" 0 "0.2e-12" 0 "1e-12" 0 "1e-12" 0 "0" 0 "0" 0 "0" 0 "2.65" 0 "-0.19" 0 "3" 0 "3" 0 "2" 0 "2" 0 "2" 0 "0" 0 "5.1" 0 "1.3" 0 "1.3" 0 "0" 0 "0" 0 "0" 0 "1e-3" 0 "10" 0 "10" 0 "1" 0 "0" 0 "1" 0 "26.85" 0 "26.85" 0>
</Components>
<Wires>
  <140 140 180 140 "" 0 0 0 "">
  <420 110 460 110 "" 0 0 0 "">
  <460 110 460 140 "" 0 0 0 "">
  <310 170 310 200 "" 0 0 0 "">
  <240 140 280 140 "" 0 0 0 "">
  <310 110 360 110 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 270 510 240 160 3 #c0c0c0 1 00 1 -5 2 5 1 -0.00164326 0.01 0.0168524 1 -1 1 1 315 0 225 "" "" "">
	<"gm" #000000 2 3 0 0 0>
  </Rect>
  <Tab 560 560 300 200 3 #c0c0c0 1 00 1 49 1 1 1 0 1 1 1 0 1 101 315 0 225 "" "" "">
	<"gm" #0000ff 0 3 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
  <Text 620 190 6 #000000 0 "RF MEMS for Radar Tutorial\nK. Van Caekenberghe\nIEEE International Radar Conference, Washington D.C., May 14, 2010\n(Tested on Qucs 0.0.15)">
</Paintings>
