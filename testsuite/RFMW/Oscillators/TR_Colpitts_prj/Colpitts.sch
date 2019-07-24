<Qucs Schematic 0.0.20>
<Properties>
  <View=0,-20,1391,673,1,0,60>
  <Grid=10,10,1>
  <DataSet=Colpitts.dat>
  <DataDisplay=Colpitts.dpl>
  <OpenDisplay=0>
  <Script=Colpitts.m>
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
  <GND * 5 460 260 0 0 0 0>
  <GND * 5 620 260 0 0 0 0>
  <C C3 1 570 170 -26 17 0 0 "1 nF" 1 "" 0 "neutral" 0>
  <JFET T1 1 460 120 8 -26 0 0 "nfet" 0 "-0.8 V" 1 "5e-3" 1 "0.0" 0 "0.0" 0 "0.0" 0 "1e-14" 0 "1.0" 0 "1e-14" 0 "2.0" 0 "0.0" 0 "0.0" 0 "1.0" 0 "0.5" 0 "0.5" 0 "0.0" 0 "1.0" 0 "1.0" 0 "26.85" 0 "3.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0>
  <C C2 1 360 230 17 -26 0 1 "0.5 nF" 1 "" 0 "neutral" 0>
  <C C1 1 360 170 17 -26 0 1 "0.5 nF" 1 "" 0 "neutral" 0>
  <R R3 1 430 70 -28 -59 0 2 "5 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 5 180 150 0 0 0 0>
  <Vdc V1 1 180 120 18 -26 0 1 "10 V" 1>
  <L L1 1 260 200 10 -26 0 1 "100 uH" 1 "" 0>
  <R R1 1 460 230 14 -18 0 1 "RS" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <.TR TR1 1 150 350 0 77 0 0 "lin" 1 "220 us" 1 "300 us" 1 "2000" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-9" 0 "150" 0 "0.01" 0 "1 uA" 0 "1 mV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Eqn Eqn2 1 870 410 -31 19 0 0 "f0=1/(2*pi*sqrt(L*Ceq))" 1 "GainCondition=gm/((2*pi*f0)^2*RS*C1*C2)" 1 "yes" 0>
  <Eqn Eqn1 1 340 350 -31 19 0 0 "C1=0.5e-9" 1 "C2=0.5e-9" 1 "Ceq=(C1*C2)/(C1+C2)" 1 "L=100e-6" 1 "RS=500" 1 "RL=500" 1 "gm=5e-3" 1 "yes" 0>
  <R R2 1 620 230 15 -26 0 1 "RL" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
</Components>
<Wires>
  <460 150 460 170 "" 0 0 0 "">
  <360 120 430 120 "" 0 0 0 "">
  <360 120 360 140 "" 0 0 0 "">
  <460 70 460 90 "" 0 0 0 "">
  <620 170 620 200 "" 0 0 0 "">
  <600 170 620 170 "" 0 0 0 "">
  <360 200 460 200 "" 0 0 0 "">
  <460 170 460 200 "" 0 0 0 "">
  <460 170 540 170 "" 0 0 0 "">
  <360 260 460 260 "" 0 0 0 "">
  <180 70 400 70 "" 0 0 0 "">
  <180 70 180 90 "" 0 0 0 "">
  <260 120 360 120 "" 0 0 0 "">
  <260 120 260 170 "" 0 0 0 "">
  <260 260 360 260 "" 0 0 0 "">
  <260 230 260 260 "" 0 0 0 "">
  <620 170 620 170 "Output" 650 140 0 "">
</Wires>
<Diagrams>
  <Rect 840 310 444 300 3 #c0c0c0 1 00 0 0.00022 5e-06 0.00025 1 -0.336597 0.1 0.312146 1 -1 0.5 1 315 0 225 "" "" "" "">
	<"Output.Vt" #0000ff 0 3 0 0 0>
  </Rect>
  <Tab 540 490 278 90 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 "" "" "" "">
	<"f0" #0000ff 0 3 1 0 0>
	<"GainCondition" #0000ff 0 3 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
  <Text 540 510 12 #000000 0 "More info:\n\nFoundations of oscillator circuit design. Guillermo Gonzalez. Artech House. 2007. p 314-317">
  <Text 170 0 16 #000000 0 "Colpitts oscillator">
</Paintings>
