<Qucs Schematic 0.0.20>
<Properties>
  <View=0,0,1184,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=RC-network.dat>
  <DataDisplay=RC-network.dpl>
  <OpenDisplay=0>
  <Script=RC-network.m>
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
  <.SP SP1 1 130 190 0 77 0 0 "lin" 1 "1 Hz" 1 "1 kHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <GND *1 5 490 290 0 0 0 0>
  <GND *2 5 610 290 0 0 0 0>
  <GND *3 5 730 290 0 0 0 0>
  <Pac P1 1 320 270 18 -26 0 1 "1" 1 "R" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND *4 5 320 300 0 0 0 0>
  <Pac P2 1 840 260 18 -26 0 1 "2" 1 "R" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND *5 5 840 290 0 0 0 0>
  <Eqn Eqn1 1 360 380 -31 19 0 0 "S21_phase=phase(S[2,1])" 1 "yes" 0>
  <Eqn Eqn2 1 180 450 -31 19 0 0 "R=30e3" 1 "C=30e-9" 1 "N=3" 1 "f0=sqrt(2*N)/(2*pi*R*C)" 1 "yes" 0>
  <R R3 1 430 180 -26 15 0 0 "R" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C1 1 490 260 17 -26 0 1 "C" 1 "" 0 "neutral" 0>
  <R R2 1 550 180 -26 15 0 0 "R" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C2 1 610 260 17 -26 0 1 "C" 1 "" 0 "neutral" 0>
  <R R1 1 670 180 -26 15 0 0 "R" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C3 1 730 260 17 -26 0 1 "C" 1 "" 0 "neutral" 0>
</Components>
<Wires>
  <700 180 730 180 "" 0 0 0 "">
  <730 180 730 230 "" 0 0 0 "">
  <580 180 610 180 "" 0 0 0 "">
  <610 180 640 180 "" 0 0 0 "">
  <610 180 610 230 "" 0 0 0 "">
  <490 180 520 180 "" 0 0 0 "">
  <490 180 490 230 "" 0 0 0 "">
  <460 180 490 180 "" 0 0 0 "">
  <320 180 400 180 "" 0 0 0 "">
  <320 180 320 240 "" 0 0 0 "">
  <730 180 840 180 "" 0 0 0 "">
  <840 180 840 230 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Tab 360 575 137 95 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 "" "" "" "">
	<"f0" #0000ff 0 3 1 0 0>
  </Tab>
  <Rect 640 672 457 262 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 "" "" "" "">
	<"S21_phase" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
