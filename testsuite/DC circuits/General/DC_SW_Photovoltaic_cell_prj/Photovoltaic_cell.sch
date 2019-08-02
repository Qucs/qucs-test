<Qucs Schematic 0.0.20>
<Properties>
  <View=112,60,1479,1030,0.587629,0,0>
  <Grid=10,10,0>
  <DataSet=Photovoltaic_cell.dat>
  <DataDisplay=Photovoltaic_cell.dpl>
  <OpenDisplay=0>
  <Script=Photovoltaic_cell.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=Curve I-V for a generic model>
  <FrameText1=Miguel Pareja Aparicio>
  <FrameText2=2013>
  <FrameText3=v1.0>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Eqn Eqn2 1 630 820 -32 16 0 0 "Rs=A-(B/(C*D))" 1 "A=(Voc_smc/Isc_smc)" 1 "B=Pm_smc*((Voc_smc/0.0257)+1)" 1 "C=Isc_smc*Isc_smc" 1 "D=(Voc_smc/0.0257)-(ln((Voc_smc+0.0185)/0.0257))" 1 "yes" 0>
  <Eqn Eqn3 1 450 820 -32 16 0 0 "Isc_smc=3.27" 1 "Pm_smc=1.472" 1 "Voc_smc=0.6" 1 "alfa=3.18e-3" 1 "beta=-2.38e-3" 1 "yes" 0>
  <Eqn Eqn4 1 260 820 -32 16 0 0 "G=1000" 1 "Tc=25" 1 "yes" 0>
  <Eqn Eqn6 1 640 720 -32 16 0 0 "Ipv=((G/1000)*3.27)+(3.18e-3*(Tc-25))" 1 "Isat=Ipv/(exp((0.6+(-2.38e-3*(Tc-25)))/(0.0257))-1)" 1 "yes" 0>
  <.DC DC1 1 796 155 0 47 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Eqn Eqn5 1 766 265 -32 16 0 0 "P=Icell.I*Vcell.V" 1 "Intensidad=PlotVs(Icell.I,Vcell.V)" 1 "yes" 0>
  <.SW SW1 1 616 155 0 79 0 0 "DC1" 1 "lin" 1 "Rl" 1 "0.01" 1 "10" 1 "1000" 1>
  <R R1 1 360 270 15 -26 1 3 "100k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Idc I1 1 211 260 18 -19 0 1 "Ipv" 1>
  <Diode D1 1 280 270 15 -26 0 1 "Isat" 1 "1" 0 "0 F" 0 "0" 0 "0.0000000001 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <R R2 1 390 180 -26 15 0 0 "Rs" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <IProbe Icell 1 480 180 -26 16 0 0>
  <VProbe Vcell 1 560 160 -21 -60 0 0>
  <R R3 1 510 270 15 -26 0 1 "Rl" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 5 570 360 0 0 0 0>
</Components>
<Wires>
  <360 180 360 240 "" 0 0 0 "">
  <360 300 360 360 "" 0 0 0 "">
  <211 290 211 360 "" 0 0 0 "">
  <211 180 211 230 "" 0 0 0 "">
  <211 180 280 180 "" 0 0 0 "">
  <280 180 360 180 "" 0 0 0 "">
  <280 180 280 240 "" 0 0 0 "">
  <211 360 280 360 "" 0 0 0 "">
  <280 360 360 360 "" 0 0 0 "">
  <280 300 280 360 "" 0 0 0 "">
  <510 180 550 180 "" 0 0 0 "">
  <420 180 450 180 "" 0 0 0 "">
  <570 180 570 360 "" 0 0 0 "">
  <510 180 510 240 "" 0 0 0 "">
  <360 360 510 360 "" 0 0 0 "">
  <510 360 570 360 "" 0 0 0 "">
  <510 300 510 360 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Tab 1096 843 343 93 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 "" "" "" "">
	<"A" #0000ff 0 3 1 0 0>
	<"B" #0000ff 0 3 1 0 0>
	<"C" #0000ff 0 3 1 0 0>
	<"D" #0000ff 0 3 1 0 0>
	<"Rs" #0000ff 0 3 1 0 0>
  </Tab>
  <Tab 693 599 282 156 3 #c0c0c0 1 00 1 12 1 1 1 0 1 1 1 0 1 1000 315 0 225 "" "" "" "">
	<"Icell.I" #0000ff 0 3 0 0 0>
	<"Vcell.V" #0000ff 0 4 0 0 0>
	<"P" #0000ff 0 3 0 0 0>
  </Tab>
  <Rect 210 601 425 161 3 #c0c0c0 1 00 1 0.0327 0.1 0.631236 0 0 0.5 3.5 1 -1 0.5 1 315 0 225 "Tensi�n" "" "" "">
	<"Intensidad" #0000ff 2 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 370 780 12 #000000 0 "Data sheet information">
  <Text 190 780 12 #000000 0 "External conditions">
  <Text 810 830 12 #000000 0 "Generic Model Photovoltaic Cell">
  <Rectangle 360 750 220 240 #000000 2 2 #c0c0c0 1 0>
  <Rectangle 590 700 470 290 #000000 2 2 #c0c0c0 1 0>
  <Rectangle 160 750 180 240 #000000 2 2 #c0c0c0 1 0>
  <Text 380 420 12 #000000 0 "Curve I-V">
  <Text 700 420 12 #000000 0 "Values results to simulation">
  <Rectangle 600 110 390 290 #000000 2 2 #c0c0c0 1 0>
  <Text 830 380 12 #000000 0 "Configure simulation">
  <Rectangle 190 160 250 230 #000000 2 2 #c0c0c0 1 0>
  <Text 240 370 12 #000000 0 "Model photovoltaic cell">
  <Ellipse 430 170 20 20 #000000 0 1 #c0c0c0 1 1>
  <Ellipse 430 350 20 20 #000000 0 1 #c0c0c0 1 1>
</Paintings>
