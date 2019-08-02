<Qucs Schematic 0.0.20>
<Properties>
  <View=-64,-79,1145,606,0.666488,0,0>
  <Grid=10,10,1>
  <DataSet=TESTBENCH_IV.dat>
  <DataDisplay=TESTBENCH_IV.dpl>
  <OpenDisplay=0>
  <Script=TESTBENCH_IV.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <.DC DC1 1 350 330 0 47 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.SW SW2 1 210 330 0 79 0 0 "DC1" 1 "lin" 1 "VDS" 1 "0" 1 "10" 1 "101" 1>
  <.SW SW1 1 70 330 0 79 0 0 "SW2" 1 "lin" 1 "VGS" 1 "-5" 1 "0.2" 1 "53" 1>
  <IProbe IDS 1 450 80 -26 16 1 2>
  <R R2 1 390 80 -26 -61 0 2 "0.001" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <EKV26MOS M1 1 320 130 24 -26 0 0 "nmos" 1 "1" 0 "0.5e-6" 0 "500e-6" 0 "1.0" 0 "1.0" 0 "3.45e-3" 0 "0.15e-6" 0 "-0.02e-6" 0 "-0.05e-6" 0 "0.6" 0 "0.71" 0 "0.97" 0 "150e-6" 0 "50e-3" 0 "88.0e6" 0 "4.5e6" 0 "0.23" 0 "0.05" 0 "0.28" 0 "280e-6" 0 "0.5e-6" 0 "1.5e-3" 0 "-1.5" 0 "1.7" 0 "0.0" 0 "0.9e-6" 0 "510.0" 0 "0.0" 0 "0.0" 0 "1.5e-10" 0 "1.5e-10" 0 "4.0e-10" 0 "2e8" 0 "3.5e8" 0 "1.0" 0 "1.0e-27" 0 "1.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "1.0" 0 "1e-14" 0 "100" 0 "1e-3" 0 "1.0" 0 "300e-15" 0 "0.5" 0 "1.0" 0 "0.5" 0 "0.1e-9" 0 "3.0" 0 "0.4" 0 "26.85" 0 "26.85" 0>
  <GND * 5 340 130 0 0 0 1>
  <R R3 1 230 130 -26 15 0 0 "0.001" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 5 160 190 0 0 0 0>
  <Vdc V1 1 160 160 -75 -26 1 1 "VGS" 1>
  <GND * 5 320 190 0 0 0 0>
  <GND * 5 480 190 0 0 0 0>
  <Vdc V2 1 480 160 17 -26 0 1 "VDS" 1>
  <Eqn Eqn1 0 400 500 -32 17 0 0 "VGS=0" 1 "VDS=0" 1 "yes" 0>
</Components>
<Wires>
  <320 80 360 80 "" 0 0 0 "">
  <320 80 320 100 "" 0 0 0 "">
  <260 130 290 130 "" 0 0 0 "">
  <160 130 200 130 "" 0 0 0 "">
  <320 160 320 190 "" 0 0 0 "">
  <480 80 480 130 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 640 348 448 308 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 "" "" "" "">
	<"IDS.I" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 410 410 6 #000000 0 "RF MEMS for Radar Tutorial\nK. Van Caekenberghe\nIEEE International Radar Conference, Washington D.C., May 14, 2010\n(Tested on Qucs 0.0.15)">
</Paintings>
