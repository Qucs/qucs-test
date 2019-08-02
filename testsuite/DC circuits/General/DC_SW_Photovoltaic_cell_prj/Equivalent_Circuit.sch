<Qucs Schematic 0.0.16>
<Properties>
  <View=0,-20,1156,1249,1,0,0>
  <Grid=10,10,0>
  <DataSet=For_Article.dat>
  <DataDisplay=For_Article.dpl>
  <OpenDisplay=0>
  <Script=Equivalent_Circuit.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=Equivalent circuit >
  <FrameText1=Miguel Pareja Aparicio>
  <FrameText2=2013>
  <FrameText3=v1.0>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Idc I1 1 120 270 18 -19 0 1 "Ipv" 1>
  <R R1 1 320 280 15 -26 1 3 "100k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 570 370 0 0 0 0>
  <R R3 1 570 280 15 -26 0 1 "50 Ohm" 0 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R2 1 420 190 -26 15 0 0 "0.017" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Diode D1 1 220 280 15 -26 0 1 "Isat" 1 "1" 0 "0 F" 0 "0" 0 "0.0000000001 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <Eqn Eqn1 1 140 80 -32 16 0 0 "Ipv=((G/1000)*3.27)+(3.18e-3*(Tc-25))" 1 "Isat=Ipv/(exp((Voc_cem+(beta*(Tc-25)))/(0.0257))-1)" 1 "yes" 0>
</Components>
<Wires>
  <120 300 120 370 "" 0 0 0 "">
  <120 190 120 240 "" 0 0 0 "">
  <320 190 320 250 "" 0 0 0 "">
  <320 310 320 370 "" 0 0 0 "">
  <320 190 390 190 "" 0 0 0 "">
  <120 190 220 190 "" 0 0 0 "">
  <120 370 220 370 "" 0 0 0 "">
  <450 190 570 190 "" 0 0 0 "">
  <320 370 570 370 "" 0 0 0 "">
  <570 190 570 250 "" 0 0 0 "">
  <570 310 570 370 "" 0 0 0 "">
  <220 190 320 190 "" 0 0 0 "">
  <220 190 220 250 "" 0 0 0 "">
  <220 370 320 370 "" 0 0 0 "">
  <220 310 220 370 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 490 150 12 #000000 0 "Terminal positive of cell">
  <Text 490 400 12 #000000 0 "Terminal negative of cell">
  <Text 590 310 12 #000000 0 "Load Resistor">
  <Rectangle 100 60 380 360 #000000 2 2 #c0c0c0 1 0>
  <Text 200 400 12 #000000 0 "Model Photovoltaic Cell">
  <Ellipse 470 180 20 20 #000000 0 1 #c0c0c0 1 1>
  <Ellipse 470 360 20 20 #000000 0 1 #c0c0c0 1 1>
</Paintings>
