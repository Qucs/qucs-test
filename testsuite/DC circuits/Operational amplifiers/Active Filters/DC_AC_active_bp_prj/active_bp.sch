<Qucs Schematic 0.0.20>
<Properties>
  <View=0,-180,1213,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=active_bp.dat>
  <DataDisplay=active_bp.dpl>
  <OpenDisplay=0>
  <Script=active_bp.m>
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
  <OpAmp OP1 1 390 170 -26 42 0 0 "1e6" 1 "15 V" 0>
  <GND * 5 320 190 0 0 0 0>
  <GND * 5 200 270 0 0 0 0>
  <GND * 5 80 270 0 0 0 0>
  <Vac V1 1 80 240 18 -26 0 1 "1 V" 1 "1 GHz" 0 "0" 0 "0" 0>
  <R R3 1 150 150 -26 15 0 0 "390" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R2 1 200 240 15 -26 0 1 "5.6k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C1 1 250 150 -26 17 0 0 "47n" 1 "" 0 "neutral" 0>
  <C C2 1 200 100 17 -26 0 1 "47n" 1 "" 0 "neutral" 0>
  <R R1 1 320 100 15 -26 0 1 "3.9k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <.DC DC1 1 70 340 0 46 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.AC AC1 1 240 340 0 46 0 0 "log" 1 "0.1 kHz" 1 "100 kHz" 1 "200" 1 "no" 0>
  <Eqn Eqn1 1 457 353 -25 13 0 0 "mag=dB(Output.v)" 1 "ph=phase(Output.v)" 1 "yes" 0>
</Components>
<Wires>
  <180 150 200 150 "" 0 0 0 "">
  <200 150 220 150 "" 0 0 0 "">
  <200 130 200 150 "" 0 0 0 "">
  <200 150 200 210 "" 0 0 0 "">
  <280 150 320 150 "" 0 0 0 "">
  <320 150 360 150 "" 0 0 0 "">
  <320 130 320 150 "" 0 0 0 "">
  <320 190 360 190 "" 0 0 0 "">
  <80 150 120 150 "" 0 0 0 "">
  <80 150 80 210 "" 0 0 0 "">
  <320 60 430 60 "" 0 0 0 "">
  <320 60 320 70 "" 0 0 0 "">
  <430 60 430 170 "Output" 450 50 30 "">
  <200 60 320 60 "" 0 0 0 "">
  <200 60 200 70 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 630 348 504 318 3 #c0c0c0 1 10 1 100 1 100000 0 -25 5 20 1 -212.745 100 211.458 315 0 225 "" "" "" "">
	<"mag" #0000ff 0 3 0 0 0>
	<"ph" #ff0000 0 3 0 0 1>
  </Rect>
</Diagrams>
<Paintings>
  <Text 150 -20 14 #000000 0 "Active bandpass filter">
</Paintings>
