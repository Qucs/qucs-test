<Qucs Schematic 0.0.16>
<Properties>
  <View=-60,30,1506,602,0.998251,86,0>
  <Grid=10,10,0>
  <DataSet=Iso_106.dat>
  <DataDisplay=Iso_106.dpl>
  <OpenDisplay=1>
  <Script=Iso_106_cell.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=Generic model for PV cell for I-106, and create a \nnew symbol.>
  <FrameText1= Miguel Pareja Aparicio>
  <FrameText2=2013>
  <FrameText3=v1.2>
</Properties>
<Symbol>
  <.ID -19 48 Isofoton_I106_ "1=G=1000=Irradiancia=" "1=Tc=25=Temperatura de célula=" "0=Isc_smc=3.27=Current short in SMC=A" "0=Voc_smc=0.6=Voltage open in SMC=V" "0=Pm_smc=1.472=Maximum power in SMC=W" "0=alfa=3.18e-3=Temperature coefficient of Isc=mVºC" "0=beta=-2.38e-3=Temperature coefficient of Voc=mVºC">
  <EArc -37 -57 48 50 1349 1531 #0000ff 4 1>
  <Line 56 24 0 -58 #0000ff 4 1>
  <EArc -37 -1 50 49 2880 1531 #0000ff 4 1>
  <EArc 6 -1 50 49 4229 1531 #0000ff 4 1>
  <Line -11 48 41 0 #0000ff 4 1>
  <Line -12 -53 0 98 #c2c2c2 4 1>
  <Line 33 -54 0 100 #c2c2c2 4 1>
  <Line -26 -46 70 0 #000000 2 1>
  <Line -26 -38 70 0 #000000 2 1>
  <Line -26 -30 70 0 #000000 2 1>
  <Line -26 -22 70 0 #000000 2 1>
  <Line -26 -14 70 0 #000000 2 1>
  <Line -26 -6 70 0 #000000 2 1>
  <Line -26 2 70 0 #000000 2 1>
  <Line -26 26 70 0 #000000 2 1>
  <Line -26 34 70 0 #000000 2 1>
  <Line -26 42 70 0 #000000 2 1>
  <EArc 6 -57 50 49 0 1531 #0000ff 4 1>
  <Line -12 -57 43 0 #0000ff 4 1>
  <Line -37 24 0 -58 #0000ff 4 1>
  <Line 60 -44 12 0 #000000 2 1>
  <Line 66 -38 0 -12 #000000 2 1>
  <Line 60 42 12 0 #000000 2 1>
  <Line -26 10 70 0 #000000 2 1>
  <Line -26 18 70 0 #000000 2 1>
  <.PortSym 60 -20 1 0>
  <.PortSym 60 20 2 0>
</Symbol>
<Components>
  <R R1 1 540 280 15 -26 1 3 "100k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Idc I1 1 290 270 18 -19 0 1 "Ipv" 1>
  <Eqn Eqn1 1 320 70 -32 16 0 0 "Ipv=((G/1000)*3.27)+(3.18e-3*(Tc-25))" 1 "Isat=Ipv/(exp((0.6+(-2.38e-3*(Tc-25)))/(0.0257))-1)" 1 "yes" 0>
  <R R2 1 640 190 -26 15 0 0 "Rs" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Diode D1 1 420 270 15 -26 0 1 "Isat" 1 "1" 0 "0 F" 0 "0" 0 "0.0000000001 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <Eqn Eqn4 1 320 390 -32 16 0 0 "Rs=A-(B/(C*D))" 1 "A=(Voc_smc/Isc_smc)" 1 "B=Pm_smc*((Voc_smc/0.0257)+1)" 1 "C=Isc_smc*Isc_smc" 1 "D=(Voc_smc/0.0257)-(ln((Voc_smc+0.0185)/0.0257))" 1 "yes" 0>
  <Port P1 1 690 190 4 -56 0 2 "1" 1 "out" 0>
  <Port P2 1 690 370 4 -56 0 2 "2" 1 "out" 0>
</Components>
<Wires>
  <540 190 540 250 "" 0 0 0 "">
  <540 310 540 370 "" 0 0 0 "">
  <540 190 610 190 "" 0 0 0 "">
  <290 300 290 370 "" 0 0 0 "">
  <290 190 290 240 "" 0 0 0 "">
  <290 190 420 190 "" 0 0 0 "">
  <420 190 540 190 "" 0 0 0 "">
  <420 190 420 240 "" 0 0 0 "">
  <290 370 420 370 "" 0 0 0 "">
  <420 370 540 370 "" 0 0 0 "">
  <420 300 420 370 "" 0 0 0 "">
  <670 190 690 190 "" 0 0 0 "">
  <540 370 690 370 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
