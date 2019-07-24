<Qucs Schematic 0.0.20>
<Properties>
  <View=0,-10,1517,610,0.904833,0,0>
  <Grid=10,10,1>
  <DataSet=Colpitts_Common_Base.dat>
  <DataDisplay=Colpitts_Common_Base.dpl>
  <OpenDisplay=0>
  <Script=Colpitts_Common_Base.m>
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
  <L L1 1 300 190 -38 -26 1 1 "L" 1 "" 0>
  <Vdc Vp 1 250 260 -26 18 0 0 "5 V" 1>
  <Vdc Vn 1 130 260 -26 18 0 0 "5 V" 1>
  <GND * 5 190 280 0 0 0 0>
  <_BJT T1 1 190 210 -30 -72 1 1 "npn" 1 "1e-16" 0 "1" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "100" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "100" 1 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
  <C C2 1 340 150 17 -26 0 1 "C1" 1 "" 0 "neutral" 0>
  <C C1 1 340 230 17 -26 0 1 "C2" 1 "" 0 "neutral" 0>
  <GND * 5 540 240 0 0 0 0>
  <DCBlock C3 1 490 120 -26 21 0 0 "1 uF" 0>
  <R R2 1 540 210 15 -26 1 3 "RL" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R1 1 80 210 15 -26 1 3 "RS" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Eqn Eqn2 1 270 410 -31 19 0 0 "C1=200e-12" 1 "C2=200e-12" 1 "Ceq=(C1*C2)/(C1+C2)" 1 "L=5e-6" 1 "RS=2.2e3" 1 "RL=10e3" 1 "yes" 0>
  <Eqn Eqn1 1 680 420 -31 19 0 0 "f0=1/(2*pi*sqrt(L*Ceq))" 1 "yes" 0>
  <.TR TR1 1 90 390 0 77 0 0 "lin" 1 "10 us" 1 "30 us" 1 "3000" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-12" 0 "150" 0 "0.01" 0 "1 uA" 0 "1 mV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
</Components>
<Wires>
  <160 260 190 260 "" 0 0 0 "">
  <190 260 220 260 "" 0 0 0 "">
  <190 240 190 260 "" 0 0 0 "">
  <340 180 340 190 "" 0 0 0 "">
  <280 260 300 260 "" 0 0 0 "">
  <300 120 340 120 "" 0 0 0 "">
  <300 120 300 160 "" 0 0 0 "">
  <300 260 340 260 "" 0 0 0 "">
  <300 220 300 260 "" 0 0 0 "">
  <240 120 300 120 "" 0 0 0 "">
  <240 120 240 210 "" 0 0 0 "">
  <220 210 240 210 "" 0 0 0 "">
  <150 210 160 210 "" 0 0 0 "">
  <190 260 190 280 "" 0 0 0 "">
  <80 160 80 180 "" 0 0 0 "">
  <150 160 150 210 "" 0 0 0 "">
  <80 160 150 160 "" 0 0 0 "">
  <80 240 80 260 "" 0 0 0 "">
  <80 260 100 260 "" 0 0 0 "">
  <340 190 340 200 "" 0 0 0 "">
  <340 190 440 190 "" 0 0 0 "">
  <440 100 440 190 "" 0 0 0 "">
  <150 100 440 100 "" 0 0 0 "">
  <150 100 150 160 "" 0 0 0 "">
  <540 120 540 180 "" 0 0 0 "">
  <520 120 540 120 "Output" 540 60 11 "">
  <340 120 460 120 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Tab 430 495 177 85 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 "" "" "" "">
	<"f0" #0000ff 0 3 1 0 0>
  </Tab>
  <Rect 680 341 572 311 3 #c0c0c0 1 00 0 1e-05 5e-07 1.2e-05 1 -2.58755 2 12.2499 1 -1 0.5 1 315 0 225 "" "" "" "">
	<"Output.Vt" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 40 10 16 #000000 0 "Common base Colpitts oscillator">
  <Text 430 510 12 #000000 0 "More info:\n\nFoundations of oscillator circuit design. Guillermo Gonzalez. Artech House. 2007. p 314-317">
</Paintings>
