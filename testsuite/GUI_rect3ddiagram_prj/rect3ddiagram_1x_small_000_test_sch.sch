<Qucs Schematic 0.0.9>
<Properties>
  <View=570,231,1280,952,0.793343,0,0>
  <Grid=10,10,1>
  <DataSet=rect3ddiagram_1x_small_000_test_sch.dat>
  <DataDisplay=rect3ddiagram_1x_small_000_test_sch.dpl>
  <OpenDisplay=0>
</Properties>
<Symbol>
</Symbol>
<Components>
  <.SW SW1 1 620 280 0 51 0 0 "DC1" 1 "lin" 0 "VSW1" 1 "0" 1 "3.14159" 1 "5" 1>
  <.SW SW2 1 850 280 0 51 0 0 "SW1" 1 "lin" 0 "VSW2" 1 "1" 1 "10" 1 "5" 1>
  <.DC DC1 1 1080 280 0 42 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <GND * 1 1180 410 0 0 0 0>
  <R R1 1 1180 380 15 -26 0 1 "1" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 1140 410 0 0 0 0>
  <Vdc V1 1 1140 380 -62 -26 1 1 "VV1" 1>
  <Eqn Eqn1 5 1020 430 -33 16 0 0 "VV1=sin(VSW1)*VSW2" 1 "yes" 0>
</Components>
<Wires>
  <1140 350 1180 350 "VR" 1140 330 23 "">
</Wires>
<Diagrams>
  <Rect3D 640 912 575 415 3 #c0c0c0 1 00 1 0 0.2 3.2 1 0 2 10.9 1 -1 12 11 0 0 0 "X: VSW1" "Y: VSW2" "">
	<"VR.V" #0000ff 0 3 0 0 1>
  </Rect3D>
</Diagrams>
<Paintings>
</Paintings>
