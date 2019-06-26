<Qucs Schematic 0.0.20>
<Properties>
  <View=-60,60,1237,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=gain.dat>
  <DataDisplay=gain.dpl>
  <OpenDisplay=0>
  <Script=gain.m>
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
  <Vac V4 1 40 230 18 -26 0 1 "1 uV" 1 "2 kHz" 0 "0" 0 "0" 0>
  <GND * 5 40 270 0 0 0 0>
  <R R2 1 260 310 -23 -57 0 2 "50k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 5 100 310 0 0 0 0>
  <R R1 1 360 270 13 -26 0 1 "100k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 5 360 300 0 0 0 0>
  <GND * 5 130 150 0 0 0 0>
  <Vdc V3 1 130 120 18 -26 0 1 "2.5 V" 1>
  <GND * 5 210 400 0 0 0 0>
  <Vdc V6 1 210 370 18 -26 0 1 "-2.5 V" 1>
  <R R3 1 130 310 -31 -59 0 2 "1.7k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <.AC AC1 1 -10 450 0 46 0 0 "log" 1 "1" 1 "10 MHz" 1 "200" 1 "no" 0>
  <Eqn Eqn1 1 360 460 -23 12 0 0 "Gain=dB(Output.v/Input.v)" 1 "Phase=phase(Output.v/Input.v)" 1 "yes" 0>
  <.DC DC1 1 160 450 0 46 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Sub OPV1 1 200 220 25 -51 0 0 "singleOPV.sch" 1>
</Components>
<Wires>
  <260 220 290 220 "" 0 0 0 "">
  <40 260 40 270 "" 0 0 0 "">
  <40 200 160 200 "" 0 0 0 "">
  <160 240 160 310 "" 0 0 0 "">
  <160 310 230 310 "" 0 0 0 "">
  <290 220 290 310 "" 0 0 0 "">
  <360 220 360 240 "" 0 0 0 "">
  <290 220 360 220 "Output" 390 190 50 "">
  <130 80 210 80 "" 0 0 0 "">
  <130 80 130 90 "" 0 0 0 "">
  <210 80 210 170 "" 0 0 0 "">
  <210 270 210 340 "" 0 0 0 "">
  <40 200 40 200 "Input" -17 170 0 "">
</Wires>
<Diagrams>
  <Rect 600 456 478 306 3 #c0c0c0 1 10 1 1 1 1e+07 0 -15 5 35 1 -120 20 10.6114 315 0 225 "" "" "" "">
	<"Gain" #0000ff 0 3 0 0 0>
	<"Phase" #ff0000 0 3 0 0 1>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
