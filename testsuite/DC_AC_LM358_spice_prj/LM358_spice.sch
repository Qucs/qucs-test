<Qucs Schematic 0.0.17>
<Properties>
  <View=-34,75,618,618,1.22099,0,0>
  <Grid=10,10,1>
  <DataSet=LM358_spice.dat>
  <DataDisplay=LM358_spice.dpl>
  <OpenDisplay=0>
  <Script=LM358_spice.m>
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
  <Vdc V2 1 100 170 18 -26 0 1 "5 V" 1>
  <Vdc V1 1 100 350 18 -26 0 1 "5 V" 1>
  <GND * 1 100 140 0 0 0 2>
  <GND * 1 100 400 0 0 0 0>
  <Vac V3 1 20 310 18 -26 0 1 "1 V" 1 "1 GHz" 0 "0" 0 "0" 0>
  <.DC DC1 1 20 470 0 43 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <SPICE X1 1 200 260 -26 -111 0 0 "LM358.sp" 1 "_net4,_net5,_net1,_net2,_net3" 0 "yes" 0 "none" 0>
  <.AC AC1 1 180 470 0 43 0 0 "log" 1 "1 Hz" 1 "10 MHz" 1 "358" 1 "no" 0>
  <Eqn Eqn1 1 420 480 -23 15 0 0 "out_dB=dB(out.v)" 1 "yes" 0>
</Components>
<Wires>
  <100 200 170 200 "" 0 0 0 "">
  <100 320 170 320 "" 0 0 0 "">
  <230 200 280 200 "" 0 0 0 "">
  <230 260 280 260 "" 0 0 0 "">
  <280 200 440 200 "" 0 0 0 "">
  <280 200 280 260 "" 0 0 0 "">
  <200 350 200 380 "" 0 0 0 "">
  <100 380 100 400 "" 0 0 0 "">
  <100 380 200 380 "" 0 0 0 "">
  <20 380 100 380 "" 0 0 0 "">
  <20 340 20 380 "" 0 0 0 "">
  <20 260 20 280 "" 0 0 0 "">
  <20 260 170 260 "" 0 0 0 "">
  <440 200 440 200 "out" 470 170 0 "">
</Wires>
<Diagrams>
  <Rect 320 410 240 160 3 #c0c0c0 1 10 1 1 1 1e+07 1 -40 20 3.54543 1 -1 1 1 315 0 225 "" "" "">
	<"out_dB" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
