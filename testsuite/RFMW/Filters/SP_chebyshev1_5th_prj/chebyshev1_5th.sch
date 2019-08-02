<Qucs Schematic 0.0.20>
<Properties>
  <View=10,-189,1357,526,0.57004,0,0>
  <Grid=10,10,1>
  <DataSet=Chebyshev1_5th.dat>
  <DataDisplay=Chebyshev1_5th.dpl>
  <OpenDisplay=0>
  <Script=chebyshev1_5th.m>
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
  <GND * 5 70 150 0 0 0 0>
  <GND * 5 190 190 0 0 0 0>
  <L L1 1 240 70 -26 10 0 0 "86.83 nH" 1 "" 0>
  <C C1 1 190 160 17 -26 0 1 "67.96 pF" 1 "" 0 "neutral" 0>
  <Pac P1 1 70 120 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 5 320 190 0 0 0 0>
  <C C2 1 320 160 17 -26 0 1 "95.52 pF" 1 "" 0 "neutral" 0>
  <L L2 1 390 70 -26 10 0 0 "86.83 nH" 1 "" 0>
  <GND * 5 460 190 0 0 0 0>
  <C C3 1 460 160 17 -26 0 1 "67.96 pF" 1 "" 0 "neutral" 0>
  <GND * 5 580 150 0 0 0 0>
  <Pac P2 1 580 120 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Eqn Eqn1 1 260 290 -23 14 0 0 "S11_dB=dB(S[1,1])" 1 "S21_dB=dB(S[2,1])" 1 "yes" 0>
  <.SP SP1 1 70 280 -3 85 0 0 "lin" 1 "1 MHz" 1 "150 MHz" 1 "300" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
</Components>
<Wires>
  <70 70 70 90 "" 0 0 0 "">
  <70 70 190 70 "" 0 0 0 "">
  <190 70 210 70 "" 0 0 0 "">
  <190 70 190 130 "" 0 0 0 "">
  <270 70 320 70 "" 0 0 0 "">
  <320 70 320 130 "" 0 0 0 "">
  <320 70 360 70 "" 0 0 0 "">
  <420 70 460 70 "" 0 0 0 "">
  <460 70 460 130 "" 0 0 0 "">
  <580 70 580 90 "" 0 0 0 "">
  <460 70 580 70 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 760 429 590 419 3 #c0c0c0 1 00 1 0 2e+07 1.5e+08 0 -40 5 5 1 -1 0.2 1 315 0 225 "" "" "" "">
	<"S11_dB" #0000ff 0 3 0 0 0>
	<"S21_dB" #ff0000 0 3 0 0 0>
	  <Mkr 1.00167e+08 428 -488 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 50 -70 18 #000000 0 "5th Order Low Pass Chebyshev Type 1 Filter \nEnd of pass band:  100MHz ">
</Paintings>
