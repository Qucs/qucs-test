<Qucs Schematic 0.0.16>
<Properties>
  <View=158,-36,1233,673,0.88647,0,58>
  <Grid=10,10,0>
  <DataSet=Iso_106_cell_Tester.dat>
  <DataDisplay=Iso_106_cell_Tester.dpl>
  <OpenDisplay=0>
  <Script=Iso_106_cell_Tester.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=Tester Generic model for PV cell\n for I-106, and create a new symbol.>
  <FrameText1=Miguel Pareja Aparicio>
  <FrameText2=2013>
  <FrameText3=v1.1>
</Properties>
<Symbol>
</Symbol>
<Components>
  <.SW SW1 1 556 85 0 76 0 0 "DC1" 1 "lin" 1 "Rl" 1 "0.01" 1 "10" 1 "1000" 1>
  <.DC DC1 1 696 85 0 45 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Eqn Eqn5 1 696 215 -32 16 0 0 "P=Icell.I*Vcell.V" 1 "Current=PlotVs(Icell.I,Vcell.V)" 1 "yes" 0>
  <Sub Isofoton_I106_1 1 250 170 -19 48 0 0 "Iso_106_cell.sch" 0 "1000" 1 "25" 1 "3.27" 0 "0.6" 0 "1.472" 0 "3.18e-3" 0 "-2.38e-3" 0>
  <VProbe Vcell 1 470 130 -21 -60 0 0>
  <R R3 1 420 190 15 -26 0 1 "Rl" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 480 220 0 0 0 0>
  <IProbe Icell 1 360 150 -26 16 0 0>
</Components>
<Wires>
  <310 190 370 190 "" 0 0 0 "">
  <310 150 330 150 "" 0 0 0 "">
  <370 190 370 220 "" 0 0 0 "">
  <370 220 420 220 "" 0 0 0 "">
  <420 150 460 150 "" 0 0 0 "">
  <480 150 480 220 "" 0 0 0 "">
  <420 150 420 160 "" 0 0 0 "">
  <390 150 420 150 "" 0 0 0 "">
  <420 220 480 220 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Tab 693 551 202 203 3 #c0c0c0 1 00 1 12 1 1 1 0 1 1 1 0 1 1000 315 0 225 "" "" "">
	<"Icell.I" #0000ff 0 3 0 0 0>
	<"Vcell.V" #0000ff 0 4 0 0 0>
	<"P" #0000ff 0 3 0 0 0>
  </Tab>
  <Rect 220 531 427 174 3 #c0c0c0 1 00 1 0.0327 0.1 0.632028 0 0 0.5 3.5 1 -1 1 1 315 0 225 "Voltage" "" "">
	<"Current" #ff0000 2 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 400 330 12 #000000 0 "Curve I-V">
  <Text 690 330 12 #000000 0 "Values results to simulation">
  <Rectangle 540 70 360 250 #000000 2 2 #c0c0c0 1 0>
  <Text 877 231 12 #000000 90 "Configure simulation">
</Paintings>
