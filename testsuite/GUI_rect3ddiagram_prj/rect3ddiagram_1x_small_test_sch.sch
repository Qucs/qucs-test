<Qucs Schematic 0.0.9>
<Properties>
  <View=390,231,1112,892,0.865355,0,0>
  <Grid=10,10,1>
  <DataSet=rect3ddiagram_1x_small_test_sch.dat>
  <DataDisplay=rect3ddiagram_1x_small_test_sch.dpl>
  <OpenDisplay=0>
</Properties>
<Symbol>
</Symbol>
<Components>
  <.DC DC1 1 440 280 0 42 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <GND * 1 540 410 0 0 0 0>
  <R R1 1 540 380 15 -26 0 1 "1" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 500 410 0 0 0 0>
  <Vdc V1 1 500 380 -62 -26 1 1 "VV1" 1>
  <Eqn Eqn1 5 470 450 -33 16 0 0 "VV1=sin(VSW1)*VSW2" 1 "yes" 0>
  <.SW SW1 1 620 280 0 51 0 0 "DC1" 1 "lin" 0 "VSW1" 1 "0" 1 "3.14159" 1 "5" 1>
  <.SW SW2 1 850 280 0 51 0 0 "SW1" 1 "lin" 0 "VSW2" 1 "1" 1 "10" 1 "5" 1>
</Components>
<Wires>
  <500 350 540 350 "VR" 500 330 23 "">
</Wires>
<Diagrams>
  <Rect3D 440 852 575 415 3 #c0c0c0 1 00 1 0 0.2 3.2 1 0 2 10.9 1 -1 2 11 315 3 225 "X: VSW1" "Y: VSW2" "">
	<"VR.V" #0000ff 0 3 0 0 1>
  </Rect3D>
</Diagrams>
<Paintings>
</Paintings>
