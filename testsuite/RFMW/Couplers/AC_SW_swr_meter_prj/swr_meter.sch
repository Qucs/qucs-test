<Qucs Schematic 0.0.20>
<Properties>
  <View=0,-37,2350,1462,0.751315,0,0>
  <Grid=10,10,1>
  <DataSet=swr_meter.dat>
  <DataDisplay=swr_meter.dpl>
  <OpenDisplay=0>
  <Script=swr_meter.m>
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
  <GND * 5 140 220 0 0 0 0>
  <.SW SW1 1 260 440 0 79 0 0 "AC1" 1 "lin" 1 "R_load" 1 "1 Ohm" 1 "5000 Ohm" 1 "1000" 1>
  <GND * 5 420 180 0 0 0 0>
  <GND * 5 360 240 0 0 0 2>
  <Tr Tr2 1 390 270 37 -29 1 3 "25" 1>
  <Tr Tr1 1 390 150 37 -29 0 1 "25" 1>
  <GND * 5 660 210 0 0 0 0>
  <R Load 1 660 180 15 -26 0 1 "R_load" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 5 480 380 0 0 0 0>
  <GND * 5 300 380 0 0 0 0>
  <.AC AC1 1 70 440 0 47 0 0 "const" 1 "1 GHz" 0 "2 GHz" 0 "[1 GHz]" 1 "no" 0>
  <Vac V1 1 140 190 18 -26 0 1 "Vpeak" 1 "1 GHz" 0 "0" 0 "0" 0>
  <R R2 1 480 350 15 -26 0 1 "Z0" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R1 1 300 350 15 -26 0 1 "Z0" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R4 1 170 120 -28 -61 1 0 "Z0" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Eqn Eqn1 1 460 460 -19 13 0 0 "r_calc=(R_load-Z0)/(R_load+Z0)" 1 "r_measure=PlotVs(-reflected.v / forward.v, R_load)" 1 "yes" 0>
  <Eqn Eqn2 1 880 480 -31 19 0 0 "Vpeak=1" 1 "Z0=50" 1 "yes" 0>
</Components>
<Wires>
  <340 180 340 300 "" 0 0 0 "">
  <340 180 360 180 "" 0 0 0 "">
  <340 300 360 300 "" 0 0 0 "">
  <300 300 340 300 "reflected" 208 270 9 "">
  <300 300 300 320 "" 0 0 0 "">
  <480 300 480 320 "" 0 0 0 "">
  <420 300 480 300 "forward" 480 270 41 "">
  <420 120 480 120 "" 0 0 0 "">
  <480 120 480 240 "" 0 0 0 "">
  <420 240 480 240 "" 0 0 0 "">
  <480 120 660 120 "" 0 0 0 "">
  <660 120 660 150 "Output" 690 110 23 "">
  <140 120 140 160 "" 0 0 0 "">
  <200 120 360 120 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 740 1036 679 386 3 #c0c0c0 1 10 1 1 1 10000 1 -1.15492 0.5 1.1743 1 -1 0.2 1 315 0 225 "" "" "" "">
	<"r_calc" #0000ff 0 3 0 0 0>
	<"r_measure" #ff0000 3 3 0 2 0>
  </Rect>
</Diagrams>
<Paintings>
  <Rectangle 100 50 130 210 #000000 0 1 #c0c0c0 1 0>
  <Text 130 20 12 #000000 0 "Generator">
  <Rectangle 620 50 130 210 #000000 0 1 #c0c0c0 1 0>
  <Text 620 20 12 #000000 0 "Load (e.g. antenna)">
  <Text 830 60 12 #000000 0 "This is a VSWR meter often used to measure if the antenna\nis matched. It is connected between generator and load.\nIt creates a voltage proportional to the forward voltage and\none proportional to the reflected voltage. The equations\non this page calculates the reflection coefficient using\nthe definition and using the voltages. As can be seen they\nequal each other. The mismatch created by the VSWR meter\nis very low.">
  <Text 840 300 12 #000000 0 "More info:\n\nhttps://k6jca.blogspot.com/2015/01/notes-on-directional-couplers-for-hf.html?m=1">
  <Text 1040 590 20 #000000 0 "SWR">
  <Text 830 0 18 #000000 0 "The Tandem Coupler">
</Paintings>
