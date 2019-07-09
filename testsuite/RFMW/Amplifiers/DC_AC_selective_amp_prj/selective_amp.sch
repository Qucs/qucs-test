<Qucs Schematic 0.0.20>
<Properties>
  <View=0,-120,1249,813,1,0,60>
  <Grid=10,10,1>
  <DataSet=selective_amp.dat>
  <DataDisplay=selective_amp.dpl>
  <OpenDisplay=0>
  <Script=selective_amp.m>
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
  <.DC DC1 1 40 440 0 46 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.AC AC1 1 240 430 0 46 0 0 "log" 1 "300 kHz" 1 "800 kHz" 1 "100" 1 "no" 0>
  <Eqn Eqn1 1 70 540 -23 12 0 0 "Gain=dB(Output.v/Input.v)" 1 "yes" 0>
  <GND * 5 200 310 0 0 0 0>
  <GND * 5 270 310 0 0 0 0>
  <GND * 5 360 310 0 0 0 0>
  <R R2 1 200 230 15 -26 0 1 "10k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R3 1 270 280 15 -26 0 1 "500" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 5 100 310 0 0 0 0>
  <DCBlock C3 1 150 180 -26 21 0 0 "1 uF" 0>
  <_BJT T1 1 270 180 8 -26 0 0 "npn" 0 "1e-16" 0 "1" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "100" 1 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
  <C C1 1 270 90 14 -23 0 1 "1.5n" 1 "" 0 "neutral" 0>
  <R R4 1 350 90 15 -26 0 1 "100k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <L L1 1 430 90 10 -26 0 1 "80u" 1 "" 0>
  <Vac V2 1 100 250 18 -26 0 1 "1 uV" 1 "1 GHz" 0 "0" 0 "0" 0>
  <C C2 1 360 280 17 -26 0 1 "100n" 1 "" 0 "neutral" 0>
  <GND * 5 500 210 0 0 0 0>
  <Vdc V1 1 500 180 -73 -25 1 1 "12 V" 1>
  <R R1 1 200 100 -71 -29 0 1 "100k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
</Components>
<Wires>
  <200 180 200 200 "" 0 0 0 "">
  <200 180 240 180 "" 0 0 0 "">
  <360 230 360 250 "" 0 0 0 "">
  <270 210 270 230 "" 0 0 0 "">
  <270 230 270 250 "" 0 0 0 "">
  <270 230 360 230 "" 0 0 0 "">
  <200 260 200 310 "" 0 0 0 "">
  <180 180 200 180 "" 0 0 0 "">
  <100 180 100 220 "" 0 0 0 "">
  <100 180 120 180 "" 0 0 0 "">
  <100 280 100 310 "" 0 0 0 "">
  <270 120 350 120 "" 0 0 0 "">
  <270 120 270 150 "Output" 340 160 18 "">
  <270 60 350 60 "" 0 0 0 "">
  <350 60 430 60 "" 0 0 0 "">
  <350 120 430 120 "" 0 0 0 "">
  <500 60 500 150 "" 0 0 0 "">
  <430 60 500 60 "" 0 0 0 "">
  <200 60 270 60 "" 0 0 0 "">
  <200 60 200 70 "" 0 0 0 "">
  <200 130 200 180 "" 0 0 0 "">
  <200 180 200 180 "Input" 133 130 0 "">
</Wires>
<Diagrams>
  <Rect 690 354 522 324 3 #c0c0c0 1 00 1 300000 50000 800000 0 5 5 70 1 -1 0.5 1 315 0 225 "" "" "" "">
	<"Gain" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 410 420 12 #000000 0 "Classical design of selective voltage amplifier:\n- common-emitter circuit\n- bias control with voltage divider R1, R2\n- bias stabilisation with negative current\n  feedback R3\n- use C2 to prevent R3 from decreasing gain\n- filtering with high Q resonance C1/L1/R4 load">
</Paintings>
