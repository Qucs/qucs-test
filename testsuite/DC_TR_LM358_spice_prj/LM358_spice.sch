<Qucs Schematic 0.0.17>
<Properties>
  <View=36,-25,657,546,1.17112,0,3>
  <Grid=10,10,1>
  <DataSet=LM358_spice.dat>
  <DataDisplay=LM358_spice.dpl>
  <OpenDisplay=0>
  <Script=LM358_spice.m>
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
  <Vdc V2 1 170 250 18 -26 0 1 "5 V" 1>
  <GND * 1 170 40 0 0 0 2>
  <GND * 1 170 300 0 0 0 0>
  <.DC DC1 1 90 370 0 43 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Vac V3 1 90 210 18 -26 0 1 "5 V" 1 "1 kHz" 1 "0" 0 "0" 0>
  <SPICE X1 1 270 160 -26 -111 0 0 "LM358.sp" 1 "_net4,_net5,_net1,_net2,_net3" 0 "yes" 0 "none" 0>
  <.TR TR1 1 220 370 0 71 0 0 "lin" 1 "0" 1 "1 ms" 1 "101" 0 "Trapezoidal" 1 "2" 0 "1 ns" 0 "1e-10" 1 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Vdc V1 1 170 70 18 -26 0 1 "5 V" 1>
</Components>
<Wires>
  <170 100 240 100 "" 0 0 0 "">
  <170 220 240 220 "" 0 0 0 "">
  <300 160 350 160 "" 0 0 0 "">
  <300 100 350 100 "" 0 0 0 "">
  <350 100 510 100 "" 0 0 0 "">
  <350 100 350 160 "" 0 0 0 "">
  <270 250 270 280 "" 0 0 0 "">
  <170 280 170 300 "" 0 0 0 "">
  <170 280 270 280 "" 0 0 0 "">
  <90 280 170 280 "" 0 0 0 "">
  <90 240 90 280 "" 0 0 0 "">
  <90 160 90 180 "" 0 0 0 "">
  <90 160 240 160 "" 0 0 0 "">
  <510 100 510 100 "out" 540 70 0 "">
</Wires>
<Diagrams>
  <Rect 370 390 240 160 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 "" "" "">
	<"out.Vt" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
