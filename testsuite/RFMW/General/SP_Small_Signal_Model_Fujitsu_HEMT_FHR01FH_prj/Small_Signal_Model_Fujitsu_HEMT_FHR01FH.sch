<Qucs Schematic 0.0.20>
<Properties>
  <View=-104,-63,1592,1023,0.909091,0,0>
  <Grid=10,10,1>
  <DataSet=Small_Signal_Model_Fujitsu_HEMT_FHR01FH.dat>
  <DataDisplay=Small_Signal_Model_Fujitsu_HEMT_FHR01FH.dpl>
  <OpenDisplay=0>
  <Script=Small_Signal_Model_Fujitsu_HEMT_FHR01FH.m>
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
  <C C1 1 290 200 17 -26 0 1 "280 fF" 1 "" 0 "neutral" 0>
  <R R1 1 290 260 15 -26 0 1 "2.5" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C2 1 550 200 17 -26 0 1 "67 fF" 1 "" 0 "neutral" 0>
  <C C3 1 420 110 -35 11 0 2 "42 fF" 1 "" 0 "neutral" 0>
  <L L3 1 390 400 10 -26 0 1 "72 pH" 1 "" 0>
  <R R5 1 260 110 -26 15 0 0 "0.5" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R4 1 580 110 -17 15 0 0 "2.2" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C6 1 640 400 17 -26 0 1 "230 fF" 1 "" 0 "neutral" 0>
  <C C7 1 740 400 17 -26 0 1 "0.1 pF" 1 "" 0 "neutral" 0>
  <L L2 1 690 110 -26 10 0 0 "340 pH" 1 "" 0>
  <C C5 1 200 400 17 -26 0 1 "150 fF" 1 "" 0 "neutral" 0>
  <C C4 1 100 400 17 -26 0 1 "110 fF" 1 "" 0 "neutral" 0>
  <L L1 1 150 110 -26 10 0 0 "360 pH" 1 "" 0>
  <R R2 1 450 200 14 -28 0 1 "400" 1 "5240" 1 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Pac P1 1 10 380 -94 -26 1 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND *1 5 10 410 0 0 0 0>
  <Pac P2 1 860 380 18 -26 1 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND *2 5 860 410 0 0 0 0>
  <GND * 5 390 430 0 0 0 0>
  <.SP SP1 1 -30 480 -5 84 0 0 "lin" 1 "1 GHz" 1 "23 GHz" 1 "150" 1 "yes" 1 "1" 1 "2" 1 "no" 0 "no" 0>
  <Eqn Eqn1 1 160 500 -19 13 0 0 "Ropt=real(rtoz(Sopt))" 1 "Xopt=imag(rtoz(Sopt))" 1 "Tmin=290*(Fmin-1)" 1 "yes" 0>
  <C C8 1 420 10 -26 17 0 0 "7 fF" 1 "" 0 "neutral" 0>
  <R R3 1 390 330 15 -26 0 1 "0.5 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <VCCS SRC1 5 400 200 -26 34 0 0 "57 mS" 1 "3 ps" 1>
</Components>
<Wires>
  <290 170 370 170 "" 0 0 0 "">
  <290 230 370 230 "" 0 0 0 "">
  <290 290 390 290 "" 0 0 0 "">
  <550 230 550 290 "" 0 0 0 "">
  <450 110 550 110 "" 0 0 0 "">
  <550 110 550 170 "" 0 0 0 "">
  <290 110 390 110 "" 0 0 0 "">
  <290 110 290 170 "" 0 0 0 "">
  <640 430 740 430 "" 0 0 0 "">
  <390 430 640 430 "" 0 0 0 "">
  <640 110 640 370 "" 0 0 0 "">
  <610 110 640 110 "" 0 0 0 "">
  <100 430 200 430 "" 0 0 0 "">
  <200 430 390 430 "" 0 0 0 "">
  <200 110 200 370 "" 0 0 0 "">
  <200 110 230 110 "" 0 0 0 "">
  <100 110 100 370 "" 0 0 0 "">
  <100 110 120 110 "" 0 0 0 "">
  <180 110 200 110 "" 0 0 0 "">
  <640 110 660 110 "" 0 0 0 "">
  <740 110 740 370 "" 0 0 0 "">
  <720 110 740 110 "" 0 0 0 "">
  <430 170 450 170 "" 0 0 0 "">
  <430 230 450 230 "" 0 0 0 "">
  <450 230 550 230 "" 0 0 0 "">
  <450 170 550 170 "" 0 0 0 "">
  <10 110 100 110 "" 0 0 0 "">
  <10 110 10 350 "" 0 0 0 "">
  <860 110 860 350 "" 0 0 0 "">
  <740 110 860 110 "" 0 0 0 "">
  <740 10 740 110 "" 0 0 0 "">
  <450 10 740 10 "" 0 0 0 "">
  <100 10 100 110 "" 0 0 0 "">
  <100 10 390 10 "" 0 0 0 "">
  <390 290 550 290 "" 0 0 0 "">
  <390 290 390 300 "" 0 0 0 "">
  <390 360 390 370 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 1030 391 463 291 3 #c0c0c0 1 10 1 1e+09 1 3e+10 0 0 10 100 0 -150 50 300 315 0 225 "" "" "" "">
	<"Ropt" #0000ff 0 3 0 0 0>
	<"Xopt" #ff0000 0 3 0 0 1>
  </Rect>
</Diagrams>
<Paintings>
  <Rectangle 220 80 410 290 #000000 0 2 #c0c0c0 1 0>
  <Text 53 76 14 #ff0000 0 "gate ">
  <Text 751 83 14 #ff0000 0 "drain ">
  <Text 490 400 14 #ff0000 0 "source ">
  <Text 350 470 12 #000000 0 "Small-signal model of Fujitsu HEMT FHR01FH (2V, 10mA) \ntaken from:  \nPospieszalski, "Modeling of Noise Parameters of MESFET's and \nMODFET's and their frequency and temperature dependence", \nIEEE Trans. Microwave Theory and Techniques, Sept. 1989\n\nhttps://www.researchgate.net/publication/251747449_Modeling_of_noise_parameters_of_MESFETs_and_MODFETs_and_their_frequency_and_temperature_dependence">
  <Text 510 330 14 #000000 0 "intrinsic FET  ">
</Paintings>
