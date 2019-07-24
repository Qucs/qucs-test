<Qucs Schematic 0.0.20>
<Properties>
  <View=0,50,1351,813,1,0,0>
  <Grid=10,10,1>
  <DataSet=MeissnerOscillator.dat>
  <DataDisplay=MeissnerOscillator.dpl>
  <OpenDisplay=0>
  <Script=MeissnerOscillator.m>
  <RunScript=1>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <C C1 1 290 210 17 -26 0 1 "1 nF" 1 "" 0 "neutral" 0>
  <L L1 1 380 210 10 -26 0 1 "100 uH" 1 "" 0>
  <Tr Tr1 1 210 270 37 -29 0 1 "1" 1>
  <GND * 5 600 240 0 0 0 0>
  <GND * 5 290 380 0 0 0 0>
  <Vdc V1 1 600 210 18 -26 0 1 "10 V" 1>
  <_BJT T1 1 290 340 8 -26 0 0 "npn" 0 "1e-16" 0 "1" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "200" 1 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
  <GND * 5 460 380 0 0 0 0>
  <R R1 1 460 210 15 -26 0 1 "500 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R2 1 80 210 15 -26 0 1 "120 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C3 1 390 300 -26 17 0 0 "5 nF" 1 "" 0 "neutral" 0>
  <.TR TR1 1 70 430 0 77 0 0 "lin" 1 "0" 1 "100 us" 1 "1000" 1 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <R R3 1 460 350 15 -26 0 1 "RL" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Eqn LoadResistor 1 270 500 -31 19 0 0 "RL=600" 1 "yes" 0>
  <Eqn Eqn1 1 410 490 -31 19 0 0 "f0=1/(2*pi*sqrt(L*C))" 1 "L=100e-6" 1 "C=1e-9" 1 "yes" 0>
</Components>
<Wires>
  <380 240 460 240 "" 0 0 0 "">
  <240 240 290 240 "" 0 0 0 "">
  <290 240 380 240 "" 0 0 0 "">
  <180 180 290 180 "" 0 0 0 "">
  <380 180 460 180 "" 0 0 0 "">
  <290 180 380 180 "" 0 0 0 "">
  <180 180 180 240 "" 0 0 0 "">
  <80 180 180 180 "" 0 0 0 "">
  <80 240 80 320 "" 0 0 0 "">
  <180 300 180 340 "" 0 0 0 "">
  <80 320 240 320 "" 0 0 0 "">
  <240 300 240 320 "" 0 0 0 "">
  <180 340 260 340 "" 0 0 0 "">
  <290 240 290 300 "" 0 0 0 "">
  <290 370 290 380 "" 0 0 0 "">
  <460 180 600 180 "" 0 0 0 "">
  <290 300 290 310 "" 0 0 0 "">
  <290 300 360 300 "" 0 0 0 "">
  <420 300 460 300 "" 0 0 0 "">
  <460 300 460 320 "" 0 0 0 "">
  <460 320 460 320 "Output" 490 290 0 "">
</Wires>
<Diagrams>
  <Rect 777 443 497 303 3 #c0c0c0 1 00 0 0 5e-06 3e-05 1 -7.1219 2 7.12134 1 -1 0.5 1 315 0 225 "" "" "" "">
	<"Output.Vt" #0000ff 0 3 0 0 0>
	  <Mkr 3.6036e-06 -110 -369 3 0 0>
	  <Mkr 5.60561e-06 122 -373 3 0 0>
  </Rect>
  <Tab 540 578 173 98 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 "" "" "" "">
	<"f0" #0000ff 0 3 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
  <Text 240 440 16 #000000 0 "Meissner oscillator">
</Paintings>