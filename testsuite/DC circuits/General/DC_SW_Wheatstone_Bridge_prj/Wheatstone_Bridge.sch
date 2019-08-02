<Qucs Schematic 0.0.20>
<Properties>
  <View=0,-240,1672,813,1,0,0>
  <Grid=10,10,1>
  <DataSet=Wheatstone_Bridge.dat>
  <DataDisplay=Wheatstone_Bridge.dpl>
  <OpenDisplay=0>
  <Script=Wheatstone_Bridge.m>
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
  <R R2 1 460 130 15 -26 0 1 "500 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 5 460 300 0 0 0 0>
  <R R5 1 460 270 15 -26 0 1 "Rmeasure" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <.DC DC1 1 140 370 -3 50 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.SW SW1 1 310 370 -4 80 0 0 "DC1" 1 "lin" 1 "Rmeasure" 1 "10 Ohm" 1 "1 kOhm" 1 "100" 1>
  <.SW SW2 1 460 370 -5 79 0 0 "SW1" 1 "lin" 1 "Rbranch" 1 "200 Ohm" 1 "1 kOhm" 1 "4" 1>
  <Eqn Eqn1 1 110 470 -23 14 0 0 "Umeasure=500 * abs(Pr1.I)" 1 "yes" 0>
  <IProbe Pr1 1 310 200 -26 16 0 0>
  <GND * 5 250 300 0 0 0 0>
  <R R1 1 250 130 15 -26 0 1 "Rbranch" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R4 1 250 270 15 -26 0 1 "Rbranch" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Vdc V1 1 160 200 18 -26 0 1 "12 V" 1>
  <GND * 5 160 300 0 0 0 0>
  <R R3 1 380 200 -26 15 0 0 "47 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
</Components>
<Wires>
  <460 160 460 200 "" 0 0 0 "">
  <460 200 460 240 "" 0 0 0 "">
  <250 100 460 100 "" 0 0 0 "">
  <250 160 250 200 "" 0 0 0 "">
  <250 200 280 200 "" 0 0 0 "">
  <250 200 250 240 "" 0 0 0 "">
  <410 200 460 200 "" 0 0 0 "">
  <340 200 350 200 "" 0 0 0 "">
  <160 100 250 100 "" 0 0 0 "">
  <160 100 160 170 "" 0 0 0 "">
  <160 230 160 300 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 670 452 541 372 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 "" "" "" "">
	<"Pr1.I" #0000ff 0 3 0 0 0>
	  <Mkr 500/200 358 -271 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 160 -130 12 #000000 0 "The Wheatstone bridge was used to determine the value of an unknown resistor.\nThe values of R1and R4 are known and provide a reference voltage division. The value\nof R2 is also known and it may be implemented as a variable resistor.\n\nIn order to determine the value of R5, R2 is adjusted so that current through R3 is 0. \nAt this point, R2 = R5.">
  <Text 810 -90 8 #000000 0 "More info:\n[1] https://www.electronics-tutorials.ws/blog/wheatstone-bridge.html\n[2] Electrical Engineer's Reference Book. M.A. Laughton, D.J. Warne. 16th Edition. Newnes. Page 11/27\nhttps://books.google.es/books?id=5jOblzV5eZ8C&lpg=RA1-SA1-PA27&hl=es&pg=RA1-SA1-PA27#v=onepage&q&f=false">
  <Text 510 -210 30 #000000 0 "The Wheatstone bridge">
</Paintings>
