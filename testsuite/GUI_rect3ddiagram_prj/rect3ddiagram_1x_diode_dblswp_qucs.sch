<Qucs Schematic 0.0.9>
<Properties>
  <View=380,-9,1024,546,1.02019,0,0>
  <Grid=10,10,1>
  <DataSet=rect3ddiagram_1x_diode_dblswp_qucs.dat>
  <DataDisplay=rect3ddiagram_1x_diode_dblswp_qucs.dpl>
  <OpenDisplay=0>
</Properties>
<Symbol>
</Symbol>
<Components>
  <.SW SW2 1 430 40 0 51 0 0 "SW1" 1 "lin" 0 "Rr1" 1 "0.01" 1 "0.1" 1 "5" 1>
  <IProbe Pr1 1 660 130 -26 16 0 0>
  <R R2 1 730 130 -26 15 0 0 "0.1" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R1 1 800 130 -26 15 0 0 "Rr1" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Vdc V1 1 590 170 18 -26 0 1 "Vdc" 1>
  <GND * 1 590 200 0 0 0 0>
  <.SW SW1 1 430 240 0 51 0 0 "DC1" 1 "lin" 0 "Vdc" 1 "0" 1 "2" 1 "200" 1>
  <.DC DC1 1 430 440 0 44 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <GND * 1 870 190 0 0 0 0>
  <Diode D_1N4148_1 1 870 160 7 -69 0 1 "222p" 1 "1.65" 1 "4p" 0 "0.333" 0 "0.7" 0 "0.5" 0 "0" 0 "0" 0 "2" 0 "68.6m" 0 "5.76n" 0 "0" 0 "0" 0 "1" 0 "1" 0 "75" 0 "22u" 1 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0>
</Components>
<Wires>
  <690 130 700 130 "" 0 0 0 "">
  <760 130 770 130 "" 0 0 0 "">
  <590 130 630 130 "" 0 0 0 "">
  <590 130 590 140 "" 0 0 0 "">
  <830 130 870 130 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect3D 606 495 340 265 3 #c0c0c0 1 00 1 0 0.5 2 1 0 0.02 0.109 1 -0.54829 2 6.63119 337 0 225 "" "" "">
	<"Pr1.I" #ff0000 0 3 0 0 1>
  </Rect3D>
</Diagrams>
<Paintings>
  <Text 670 40 12 #000000 0 "Changed Diode:Ibv=22u to prevent warnings\nfrom Qucsator v0.0.9 simulation">
</Paintings>
