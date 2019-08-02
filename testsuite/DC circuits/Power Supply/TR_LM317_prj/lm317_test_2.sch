<Qucs Schematic 0.0.20>
<Properties>
  <View=0,-60,1187,800,0.751315,0,0>
  <Grid=10,10,1>
  <DataSet=lm317_test_2.dat>
  <DataDisplay=lm317_test_2.dpl>
  <OpenDisplay=0>
  <Script=lm317_test_2.m>
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
  <C C1 1 140 220 17 -26 0 1 "0.1u" 1 "" 0 "neutral" 0>
  <C C2 1 450 220 17 -26 0 1 "1u" 1 "" 0 "neutral" 0>
  <R R1 1 250 220 15 -26 0 1 "720" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R2 1 340 150 15 -26 0 1 "240" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 5 250 270 0 0 0 0>
  <GND * 5 550 210 0 0 0 0>
  <R R3 1 550 180 15 -26 0 1 "1k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Vdc V1 1 50 220 18 -26 0 1 "10" 1>
  <GND * 5 50 250 0 0 0 0>
  <Vac V2 1 50 160 18 -26 0 1 "1 V" 1 "1 MHz" 1 "0" 0 "0" 0>
  <.TR TR1 1 110 340 0 78 0 0 "lin" 1 "0" 1 "20us" 1 "1001" 1 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "1500" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Sub LM317 1 250 130 -50 -73 0 0 "lm317_2.sch" 1>
</Components>
<Wires>
  <140 120 140 190 "" 0 0 0 "">
  <140 120 200 120 "" 0 0 0 "">
  <140 270 250 270 "" 0 0 0 "">
  <140 250 140 270 "" 0 0 0 "">
  <450 250 450 270 "" 0 0 0 "">
  <250 270 450 270 "" 0 0 0 "">
  <250 250 250 270 "" 0 0 0 "">
  <300 120 340 120 "" 0 0 0 "">
  <250 160 250 180 "" 0 0 0 "">
  <250 180 250 190 "" 0 0 0 "">
  <250 180 340 180 "" 0 0 0 "">
  <450 120 450 190 "" 0 0 0 "">
  <340 120 450 120 "" 0 0 0 "">
  <450 120 550 120 "Out" 520 90 36 "">
  <550 120 550 150 "" 0 0 0 "">
  <50 120 50 130 "" 0 0 0 "">
  <50 120 140 120 "In" 130 90 51 "">
</Wires>
<Diagrams>
  <Rect 666 358 481 272 3 #c0c0c0 1 00 1 0 2e-06 2e-05 1 8.80237 0.5 11.1976 1 5.208 0.002 5.21863 315 0 225 "" "" "" "">
	<"Out.Vt" #0000ff 2 3 0 0 1>
	<"In.Vt" #ff0000 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
