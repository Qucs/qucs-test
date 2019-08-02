<Qucs Schematic 0.0.16>
<Properties>
  <View=112,29,1847,1000,0.910567,0,0>
  <Grid=10,10,0>
  <DataSet=Tester2_Generic_Model.dat>
  <DataDisplay=Tester2_Generic_Model.dpl>
  <OpenDisplay=0>
  <Script=Tester2_Generic_Model.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=Short current and open voltage for a generic model>
  <FrameText1=Miguel Pareja Aparicio>
  <FrameText2=2013>
  <FrameText3=v1.0>
</Properties>
<Symbol>
</Symbol>
<Components>
  <R R1 1 370 210 15 -26 1 3 "100k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Idc I1 1 221 200 18 -19 0 1 "Ipv" 1>
  <Diode D1 1 290 210 15 -26 0 1 "Isat" 1 "1" 0 "0 F" 0 "0" 0 "0.0000000001 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <R R2 1 400 120 -26 15 0 0 "Rs" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Eqn Eqn2 1 630 790 -32 16 0 0 "Rs=A-(B/(C*D))" 1 "A=(Voc_smc/Isc_smc)" 1 "B=Pm_smc*((Voc_smc/0.0257)+1)" 1 "C=Isc_smc*Isc_smc" 1 "D=(Voc_smc/0.0257)-(ln((Voc_smc+0.0185)/0.0257))" 1 "yes" 0>
  <Eqn Eqn3 1 450 790 -32 16 0 0 "Isc_smc=3.27" 1 "Pm_smc=1.472" 1 "Voc_smc=0.6" 1 "alfa=3.18e-3" 1 "beta=-2.38e-3" 1 "yes" 0>
  <Eqn Eqn4 1 260 790 -32 16 0 0 "G=1000" 1 "Tc=25" 1 "yes" 0>
  <Eqn Eqn6 1 640 690 -32 16 0 0 "Ipv=((G/1000)*3.27)+(3.18e-3*(Tc-25))" 1 "Isat=Ipv/(exp((0.6+(-2.38e-3*(Tc-25)))/(0.0257))-1)" 1 "yes" 0>
  <R R7 1 370 510 15 -26 1 3 "100k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Idc I2 1 221 500 18 -19 0 1 "Ipv" 1>
  <Diode D2 1 290 510 15 -26 0 1 "Isat" 1 "1" 0 "0 F" 0 "0" 0 "0.0000000001 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <R R6 1 400 420 -26 15 0 0 "Rs" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <VProbe Vcell_oc 1 540 400 -27 -56 0 0>
  <IProbe Icell_sc 1 490 120 -26 16 0 0>
  <R R4 1 550 210 15 -26 0 1 "0.05" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 550 300 0 0 0 0>
  <GND * 1 550 600 0 0 0 0>
  <R R8 1 470 510 15 -26 0 1 "10e3" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <.DC DC1 1 780 70 0 43 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
</Components>
<Wires>
  <370 120 370 180 "" 0 0 0 "">
  <370 240 370 300 "" 0 0 0 "">
  <221 230 221 300 "" 0 0 0 "">
  <221 120 221 170 "" 0 0 0 "">
  <221 120 290 120 "" 0 0 0 "">
  <290 120 370 120 "" 0 0 0 "">
  <290 120 290 180 "" 0 0 0 "">
  <221 300 290 300 "" 0 0 0 "">
  <290 300 370 300 "" 0 0 0 "">
  <290 240 290 300 "" 0 0 0 "">
  <370 420 370 480 "" 0 0 0 "">
  <370 540 370 600 "" 0 0 0 "">
  <221 530 221 600 "" 0 0 0 "">
  <221 420 221 470 "" 0 0 0 "">
  <221 420 290 420 "" 0 0 0 "">
  <290 420 370 420 "" 0 0 0 "">
  <290 420 290 480 "" 0 0 0 "">
  <221 600 290 600 "" 0 0 0 "">
  <290 600 370 600 "" 0 0 0 "">
  <290 540 290 600 "" 0 0 0 "">
  <370 600 470 600 "" 0 0 0 "">
  <430 420 470 420 "" 0 0 0 "">
  <550 420 550 600 "" 0 0 0 "">
  <430 120 460 120 "" 0 0 0 "">
  <370 300 550 300 "" 0 0 0 "">
  <550 240 550 300 "" 0 0 0 "">
  <520 120 550 120 "" 0 0 0 "">
  <550 120 550 180 "" 0 0 0 "">
  <470 600 550 600 "" 0 0 0 "">
  <470 540 470 600 "" 0 0 0 "">
  <470 420 530 420 "" 0 0 0 "">
  <470 420 470 480 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Tab 1096 843 343 93 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 "" "" "">
	<"A" #0000ff 0 3 1 0 0>
	<"B" #0000ff 0 3 1 0 0>
	<"C" #0000ff 0 3 1 0 0>
	<"D" #0000ff 0 3 1 0 0>
	<"Rs" #0000ff 0 3 1 0 0>
  </Tab>
  <Tab 557 505 158 65 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1000 315 0 225 "" "" "">
	<"Vcell_oc.V" #0000ff 0 3 0 0 0>
  </Tab>
  <Tab 517 108 155 59 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 "" "" "">
	<"Isc_smc" #0000ff 0 3 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
  <Text 370 750 12 #000000 0 "Data sheet information">
  <Text 190 750 12 #000000 0 "External conditions">
  <Text 810 800 12 #000000 0 "Generic Model Photovoltaic Cell">
  <Rectangle 590 670 460 310 #000000 2 2 #c0c0c0 1 0>
  <Rectangle 160 720 180 260 #000000 2 2 #c0c0c0 1 0>
  <Rectangle 360 740 220 240 #000000 2 2 #c0c0c0 1 0>
  <Text 270 370 16 #000000 0 "Open voltage measure">
  <Rectangle 200 100 250 230 #000000 2 2 #c0c0c0 1 0>
  <Text 260 310 12 #000000 0 "Model photovoltaic cell">
  <Text 260 610 12 #000000 0 "Model photovoltaic cell">
  <Rectangle 200 400 250 230 #000000 2 2 #c0c0c0 1 0>
  <Text 250 60 16 #000000 0 "Short current measure">
  <Ellipse 440 110 20 20 #000000 0 1 #c0c0c0 1 1>
  <Ellipse 440 290 20 20 #000000 0 1 #c0c0c0 1 1>
  <Ellipse 440 410 20 20 #000000 0 1 #c0c0c0 1 1>
  <Ellipse 440 590 20 20 #000000 0 1 #c0c0c0 1 1>
</Paintings>
