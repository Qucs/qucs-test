<Qucs Schematic 0.0.20>
<Properties>
  <View=0,-180,1345,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=BJT_CurveTracer.dat>
  <DataDisplay=BJT_CurveTracer.dpl>
  <OpenDisplay=0>
  <Script=BJT_CurveTracer.m>
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
  <GND * 5 210 250 0 0 0 0>
  <.DC DC1 1 180 310 0 46 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Idc Ib 1 210 220 18 -26 0 1 "Ib" 1>
  <.SW SW1 1 340 310 0 77 0 0 "DC1" 1 "lin" 1 "Vce" 1 "0 V" 1 "3 V" 1 "80" 1>
  <.SW SW2 1 470 310 0 77 0 0 "SW1" 1 "lin" 1 "Ib" 1 "1 uA" 1 "100 uA" 1 "8" 1>
  <IProbe Ic 1 470 90 -26 16 1 2>
  <GND * 5 360 160 0 0 0 0>
  <_BJT T1 1 360 130 11 -34 0 0 "npn" 0 "1e-16" 0 "1" 0 "1" 0 "0" 0 "0" 0 "10" 1 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "100" 1 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
  <GND * 5 580 240 0 0 0 0>
  <Vdc V1 1 580 210 18 -26 0 1 "Vce" 1>
</Components>
<Wires>
  <210 130 210 190 "" 0 0 0 "">
  <210 130 330 130 "" 0 0 0 "">
  <360 90 440 90 "" 0 0 0 "">
  <360 90 360 100 "" 0 0 0 "">
  <500 90 580 90 "" 0 0 0 "">
  <580 90 580 180 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 760 341 508 301 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 "" "" "" "">
	<"Ic.I" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 300 -40 20 #000000 0 "BJT curve tracer">
</Paintings>
