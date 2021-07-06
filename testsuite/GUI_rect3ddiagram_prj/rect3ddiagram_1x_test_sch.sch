<Qucs Schematic 0.0.9>
<Properties>
  <View=550,191,1473,932,0.711809,0,0>
  <Grid=10,10,1>
  <DataSet=rect3ddiagram_1x_test_sch.dat>
  <DataDisplay=rect3ddiagram_1x_test_sch.dpl>
  <OpenDisplay=0>
</Properties>
<Symbol>
</Symbol>
<Components>
  <.DC DC1 1 600 240 0 43 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <GND * 1 700 510 0 0 0 0>
  <R R1 1 700 480 15 -26 0 1 "1" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 660 510 0 0 0 0>
  <Vdc V1 1 660 480 -62 -26 1 1 "VV1" 1>
  <.SW SW1 1 770 240 0 51 0 0 "DC1" 1 "lin" 1 "VSW1" 1 "0" 1 "3.14159" 1 "5" 1>
  <.SW SW2 1 1000 240 0 51 0 0 "SW1" 1 "lin" 1 "VSW2" 1 "1" 1 "10" 1 "5" 1>
  <Eqn Eqn1 1 630 330 -33 16 0 0 "VV1=sin(VSW1)*VSW2" 1 "yes" 0>
</Components>
<Wires>
  <700 430 700 450 "" 0 0 0 "">
  <660 430 700 430 "VR" 630 410 23 "">
  <660 430 660 450 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect3D 600 892 560 419 3 #c0c0c0 1 00 1 0 0.2 3.2 1 0 2 10.9 1 -1 2 11 315 3 225 "X: VSW1" "Y: VSW2" "">
	<"VR.V" #0000ff 0 3 0 0 1>
  </Rect3D>
  <Tab 1230 838 203 592 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 25 315 0 225 "" "" "">
	<"VR.V" #0000ff 0 3 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
</Paintings>
