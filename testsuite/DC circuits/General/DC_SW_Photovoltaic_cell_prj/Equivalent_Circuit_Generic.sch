<Qucs Schematic 0.0.16>
<Properties>
  <View=140,120,1048,690,1,0,0>
  <Grid=10,10,0>
  <DataSet=For_Article_generic.dat>
  <DataDisplay=For_Article_generic.dpl>
  <OpenDisplay=0>
  <Script=Equivalent_Circuit_Generic.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=Generic Equivalent Circuit>
  <FrameText1=Miguel Pareja Aparicio>
  <FrameText2=2013>
  <FrameText3=v1.0>
</Properties>
<Symbol>
</Symbol>
<Components>
  <R R1 1 640 370 15 -26 1 3 "100k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 890 460 0 0 0 0>
  <R R3 1 890 370 15 -26 0 1 "50 Ohm" 0 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Idc I1 1 390 360 18 -19 0 1 "Ipv" 1>
  <Eqn Eqn5 1 420 160 -32 16 0 0 "Ipv=((G/1000)*3.27)+(3.18e-3*(Tc-25))" 1 "Isat=Ipv/(exp((0.6+(-2.38e-3*(Tc-25)))/(0.0257))-1)" 1 "yes" 0>
  <R R2 1 740 280 -26 15 0 0 "Rs" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Diode D1 1 520 360 15 -26 0 1 "Isat" 1 "1" 0 "0 F" 0 "0" 0 "0.0000000001 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <Eqn Eqn3 1 230 160 -32 16 0 0 "Isc_smc=3.27" 1 "Pm_smc=1.472" 1 "Voc_smc=0.6" 1 "alfa=3.18e-3" 1 "beta=-2.38e-3" 1 "yes" 0>
  <Eqn Eqn4 1 230 370 -32 16 0 0 "G=1000" 1 "Tc=25" 1 "yes" 0>
  <Eqn Eqn2 1 420 480 -32 16 0 0 "Rs=A-(B/(C*D))" 1 "A=(Voc_smc/Isc_smc)" 1 "B=Pm_smc*((Voc_smc/0.0257)+1)" 1 "C=Isc_smc*Isc_smc" 1 "D=(Voc_smc/0.0257)-(ln((Voc_smc+0.0185)/0.0257))" 1 "yes" 0>
</Components>
<Wires>
  <640 280 640 340 "" 0 0 0 "">
  <640 400 640 460 "" 0 0 0 "">
  <640 280 710 280 "" 0 0 0 "">
  <770 280 890 280 "" 0 0 0 "">
  <890 280 890 340 "" 0 0 0 "">
  <890 400 890 460 "" 0 0 0 "">
  <390 460 520 460 "" 0 0 0 "">
  <390 390 390 460 "" 0 0 0 "">
  <390 280 520 280 "" 0 0 0 "">
  <390 280 390 330 "" 0 0 0 "">
  <640 460 890 460 "" 0 0 0 "">
  <520 280 640 280 "" 0 0 0 "">
  <520 280 520 330 "" 0 0 0 "">
  <520 460 640 460 "" 0 0 0 "">
  <520 390 520 460 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 810 240 12 #000000 0 "Terminal positive of cell">
  <Text 810 490 12 #000000 0 "Terminal negative of cell">
  <Text 910 400 12 #000000 0 "Load Resistor">
  <Rectangle 370 140 430 530 #000000 2 2 #c0c0c0 1 0>
  <Ellipse 790 270 20 20 #000000 0 1 #c0c0c0 1 1>
  <Text 490 650 12 #000000 0 "Generic Model Photovoltaic Cell">
  <Text 190 320 12 #000000 0 "Data sheet information">
  <Rectangle 180 140 180 200 #000000 2 2 #c0c0c0 1 0>
  <Text 200 460 12 #000000 0 "External conditions">
  <Rectangle 180 350 180 130 #000000 2 2 #c0c0c0 1 0>
  <Ellipse 790 450 20 20 #000000 0 1 #c0c0c0 1 1>
</Paintings>
