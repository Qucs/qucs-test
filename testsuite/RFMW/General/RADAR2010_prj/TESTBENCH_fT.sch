<Qucs Schematic 0.0.15>
<Properties>
  <View=-99,-109,795,891,0.579,0,0>
  <Grid=10,10,1>
  <DataSet=TESTBENCH_fT.dat>
  <DataDisplay=TESTBENCH_fT.dpl>
  <OpenDisplay=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 1 290 170 0 0 0 0>
  <DCFeed L1 1 290 80 20 -26 0 1 "1 uH" 0>
  <DCBlock C1 1 320 110 -26 21 0 0 "1 uF" 0>
  <GND * 1 290 -10 0 0 0 2>
  <Vdc V2 1 290 20 -63 -26 0 3 "5 V" 1>
  <Pac P1 1 0 170 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 0 200 0 0 0 0>
  <DCFeed L2 1 200 170 20 -26 0 1 "1 uH" 0>
  <GND * 1 200 260 0 0 0 0>
  <DCBlock C2 1 130 140 -26 21 0 0 "1 uF" 0>
  <Pac P2 1 440 140 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 440 170 0 0 0 0>
  <MESFET T1 5 290 140 8 -26 0 0 "1" 0 "-1.8" 0 "0.65e-3" 0 "2.25" 0 "0.05" 0 "0.3" 0 "2.1" 0 "0.1" 0 "0.5" 0 "0.3" 0 "0.2" 0 "0.015" 0 "1" 0 "1e-14" 0 "1" 0 "1.0" 0 "60" 0 "3.0" 0 "0.5" 0 "1e-9" 0 "1e-3" 0 "1" 0 "1.11" 0 "0.5" 0 "0.2e-12" 0 "1e-12" 0 "1e-12" 0 "0" 0 "0" 0 "0" 0 "2.65" 0 "-0.19" 0 "3" 0 "3" 0 "2" 0 "2" 0 "2" 0 "0" 0 "5.1" 0 "1.3" 0 "1.3" 0 "0" 0 "0" 0 "0" 0 "1e-3" 0 "10" 0 "10" 0 "1" 0 "0" 0 "1" 0 "26.85" 0 "26.85" 0>
  <Vdc V1 1 200 230 18 -26 0 1 "0 V" 1>
  <Eqn Eqn2 1 590 50 -32 17 0 0 "H=twoport(S,'S','H')" 1 "dBH21=dB(H[2,1])" 1 "dBS21=dB(S[2,1])" 1 "yes" 0>
  <.SP SP1 1 0 -60 0 72 0 0 "log" 1 "1 GHz" 1 "300 GHz" 1 "124" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <.DC DC1 1 350 -60 0 43 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
</Components>
<Wires>
  <200 140 260 140 "" 0 0 0 "">
  <0 140 100 140 "" 0 0 0 "">
  <160 140 200 140 "" 0 0 0 "">
  <350 110 440 110 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 0 524 697 204 3 #c0c0c0 1 10 0 1e+09 0 3e+11 1 -6.87594 5 10 1 -1 0.5 1 315 0 225 "" "" "">
	<"dBH21" #000000 2 3 0 0 0>
  </Rect>
  <Rect 0 789 700 214 3 #c0c0c0 1 10 0 1e+09 0 3e+11 1 -30 10 13.1516 1 -1 0.5 1 315 0 225 "" "" "">
	<"dBS21" #000000 2 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 420 230 6 #000000 0 "RF MEMS for Radar Tutorial\nK. Van Caekenberghe\nIEEE International Radar Conference, Washington D.C., May 14, 2010\n(Tested on Qucs 0.0.15)">
</Paintings>
