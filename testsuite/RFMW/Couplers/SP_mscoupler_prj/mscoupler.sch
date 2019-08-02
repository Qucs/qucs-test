<Qucs Schematic 0.0.20>
<Properties>
  <View=0,-60,1357,1015,0.751315,0,0>
  <Grid=10,10,1>
  <DataSet=mscoupler.dat>
  <DataDisplay=mscoupler.dpl>
  <OpenDisplay=0>
  <Script=mscoupler.m>
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
  <Pac P1 1 130 80 -91 -25 1 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 5 130 110 0 0 0 0>
  <MCOUPLED MSTC1 1 280 60 -26 37 0 0 "SubstTC1" 1 "0.518 mm" 1 "14.94 mm" 1 "0.185 mm" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <Pac P4 1 190 190 -89 -25 1 1 "4" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 5 190 220 0 0 0 0>
  <Pac P3 1 400 190 18 -26 0 1 "3" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 5 400 220 0 0 0 0>
  <Pac P2 1 460 70 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 5 460 100 0 0 0 0>
  <.SP SPTC1 1 60 320 0 78 0 0 "lin" 1 "0.2 GHz" 1 "4.2 GHz" 1 "101" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <SUBST SubstTC1 1 250 350 -30 24 0 0 "9.8" 1 "0.635 mm" 1 "17.5 um" 1 "0.0001" 1 "2.43902e-08" 1 "1.5e-07" 1>
  <Eqn Eqn1 1 400 330 -23 14 0 0 "reflect=dB(S[1,1])" 1 "isolated=dB(S[3,1])" 1 "through=dB(S[2,1])" 1 "coupled=dB(S[4,1])" 1 "yes" 0>
</Components>
<Wires>
  <130 30 130 50 "" 0 0 0 "">
  <130 30 250 30 "" 0 0 0 "">
  <190 90 250 90 "" 0 0 0 "">
  <190 90 190 160 "" 0 0 0 "">
  <310 90 400 90 "" 0 0 0 "">
  <400 90 400 160 "" 0 0 0 "">
  <310 30 460 30 "" 0 0 0 "">
  <460 30 460 40 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 660 391 545 371 3 #c0c0c0 1 00 1 2e+08 5e+08 4.2e+09 0 -55 5 5 1 -1 0.2 1 315 0 225 "" "" "" "">
	<"through" #0000ff 0 3 0 0 0>
	<"reflect" #ff0000 0 3 0 0 0>
	<"coupled" #005500 0 3 0 0 0>
	<"isolated" #000000 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 50 580 12 #000000 0 "Design equations:\n\n1) Calculate the even mode and odd mode characteristic impedances:\nZ_{0e} = Z_0 · sqrt((1 + C)/(1 - C))\nZ_{0o} = Z_0 · sqrt((1 - C)/(1 + C))\n\nwhere C is the coupling factor in natural units:\nC_{n.u.} = 10^^(C_{dB} / 20) \n\n2) Use transcalc tool (CTRL+4) to synthesize the microstrip coupler.\n\nIn this case, C_{dB} = -10dB => C_{n.u.} = 0.316. \nThen, \nZ_{0e} = 69.35 Ω and Z_{0o} = 36.05 Ω\nso, W = 0.518mm, L = 14.94mm and S = 0.185mm. Please see the transcalc file attached.\n\nReference:\n"Microwave Engineering". David M. Pozar. 4th Edition. 2011. John Wiley and Sons. Eqs. 7.87">
</Paintings>
