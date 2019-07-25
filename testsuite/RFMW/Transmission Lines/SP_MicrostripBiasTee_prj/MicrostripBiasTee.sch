<Qucs Schematic 0.0.20>
<Properties>
  <View=0,-120,1324,813,1,0,60>
  <Grid=10,10,1>
  <DataSet=MicrostripBiasTee.dat>
  <DataDisplay=MicrostripBiasTee.dpl>
  <OpenDisplay=0>
  <Script=MicrostripBiasTee.m>
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
  <Pac P3 1 340 350 18 -26 0 1 "3" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 5 340 380 0 0 0 0>
  <GND * 5 240 290 0 0 0 0>
  <Pac P2 1 550 170 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 5 550 200 0 0 0 0>
  <Pac P1 1 100 170 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 5 100 200 0 0 0 0>
  <C C1 1 290 290 -26 17 0 0 "30 pF" 1 "" 0 "neutral" 0>
  <.SP SP1 1 80 460 0 77 0 0 "lin" 1 "1 GHz" 1 "5 GHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <SUBST Aluminia 1 290 500 -30 24 0 0 "9.8" 1 "1 mm" 1 "35 um" 1 "1e-3" 1 "0.022e-6" 1 "0.15e-6" 1>
  <MLIN MS2 1 450 130 -26 15 0 0 "Aluminia" 0 "1 mm" 1 "10 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MTEE MS4 1 340 130 -33 -110 0 0 "Aluminia" 0 "1 mm" 1 "1 mm" 1 "0.5 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MLIN Stub 1 340 240 15 -26 0 1 "Aluminia" 0 "0.5 mm" 1 "10 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS1 1 230 130 -26 15 0 0 "Aluminia" 0 "1 mm" 1 "10 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <Eqn Eqn1 1 440 600 -31 19 0 0 "S11_dB=dB(S[1,1])" 1 "S21_dB=dB(S[2,1])" 1 "yes" 0>
</Components>
<Wires>
  <260 130 310 130 "" 0 0 0 "">
  <370 130 420 130 "" 0 0 0 "">
  <320 290 340 290 "" 0 0 0 "">
  <340 290 340 320 "" 0 0 0 "">
  <240 290 260 290 "" 0 0 0 "">
  <550 130 550 140 "" 0 0 0 "">
  <480 130 550 130 "" 0 0 0 "">
  <100 130 100 140 "" 0 0 0 "">
  <100 130 200 130 "" 0 0 0 "">
  <340 270 340 290 "" 0 0 0 "">
  <340 160 340 210 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 770 394 507 314 3 #c0c0c0 1 00 1 1e+09 5e+08 5e+09 0 -50 5 5 1 -1 0.5 1 315 0 225 "" "" "" "">
	<"S11_dB" #0000ff 0 3 0 0 0>
	<"S21_dB" #ff0000 0 3 0 0 0>
	  <Mkr 3.29146e+09/0/0 315 -415 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 420 450 12 #0000ff 0 "Schematic shows a Lambda/4 stub that\nis often used to bias active elements.\nPort 1 to 2 is a short, Port 1 and 3 is\ndecoupled. The bandwidth increases\nwith decreasing line width of "Stub".">
</Paintings>
