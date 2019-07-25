<Qucs Schematic 0.0.20>
<Properties>
  <View=-54,-130,1501,667,1,0,0>
  <Grid=10,10,1>
  <DataSet=wilkinson.dat>
  <DataDisplay=wilkinson.dpl>
  <OpenDisplay=0>
  <Script=wilkinson.m>
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
  <Pac P1 1 60 110 -88 -26 1 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 5 60 140 0 0 0 0>
  <TLIN Line1 1 130 80 -26 14 0 0 "Z0" 1 "100 mm" 1 "0 dB" 0 "26.85" 0>
  <TLIN Line2 1 230 40 -26 14 0 0 "Zbranch" 1 "lambda4" 1 "0 dB" 0 "26.85" 0>
  <TLIN Line3 1 230 140 -26 14 0 0 "Zbranch" 1 "lambda4" 1 "0 dB" 0 "26.85" 0>
  <Pac P2 1 410 70 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Pac P3 1 410 170 18 -26 0 1 "3" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 5 410 200 0 0 0 0>
  <GND * 5 410 100 0 0 0 0>
  <.SP SP1 1 20 260 0 77 0 0 "lin" 1 "0.1 MHz" 1 "2 GHz" 1 "100" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn1 1 230 280 -23 12 0 0 "Attenuation2=dB(S[2,1])" 1 "Reflect=dB(S[1,1])" 1 "Attenuation3=dB(S[3,1])" 1 "Decoupling=dB(S[3,2])" 1 "yes" 0>
  <R R1 1 300 90 15 -26 0 1 "Riso" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Eqn DesignEquations 1 240 460 -31 19 0 0 "Z0=50" 1 "Zbranch=Z0*sqrt(2)" 1 "Riso=2*Z0" 1 "f0=1e9" 1 "lambda4=299792458/(4*f0)" 1 "yes" 0>
</Components>
<Wires>
  <180 40 200 40 "" 0 0 0 "">
  <180 40 180 80 "" 0 0 0 "">
  <180 140 200 140 "" 0 0 0 "">
  <260 40 300 40 "" 0 0 0 "">
  <260 140 300 140 "" 0 0 0 "">
  <60 80 100 80 "" 0 0 0 "">
  <180 80 180 140 "" 0 0 0 "">
  <160 80 180 80 "" 0 0 0 "">
  <300 140 410 140 "" 0 0 0 "">
  <300 120 300 140 "" 0 0 0 "">
  <300 40 410 40 "" 0 0 0 "">
  <300 40 300 60 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 860 379 545 369 3 #c0c0c0 1 00 1 0 2e+08 2e+09 0 -50 5 0 1 -1 0.2 1 315 0 225 "" "" "" "">
	<"Attenuation2" #ff0000 0 3 0 0 0>
	<"Attenuation3" #ff0000 3 3 0 2 0>
	<"Reflect" #0000ff 0 3 0 0 0>
	<"Decoupling" #000000 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 400 270 12 #000000 0 "ideal Wilkinson divider:\n- Power into port 1 is split equally to port 2 and 3.\n- Port 2 and 3 are decoupled at f_0.\n- if port 2 and 3 are terminated equally, no power\n  is consumed by R1, since there is no return loss.\n- A wider bandwidth can be achieved by cascading several \nLine2/Line3/R1 sections.">
  <Text 70 -60 20 #000000 0 "Wilkinson power combiner/splitter">
  <Text 410 480 12 #000000 0 "Reference:\n\nMicrowave engineering. David M. Pozar. 4th Edition. 2012. John Wiley and Sons. p. 328-333">
</Paintings>
