<Qucs Schematic 0.0.20>
<Properties>
  <View=-34,-158,1367,775,1,0,60>
  <Grid=10,10,1>
  <DataSet=fet_noise.dat>
  <DataDisplay=fet_noise.dpl>
  <OpenDisplay=0>
  <Script=fet_noise.m>
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
  <GND * 5 240 130 0 0 0 0>
  <Sub SUB1 1 220 110 30 -6 0 0 "fet.sch" 1>
  <L L1 1 130 110 -26 10 0 0 "1.1 nH" 1 "" 0>
  <L L2 1 180 180 10 -26 0 1 "4.0 nH" 1 "" 0>
  <GND * 5 180 210 0 0 0 0>
  <GND * 5 40 210 0 0 0 0>
  <Pac P1 1 40 180 18 -25 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 5 400 170 0 0 0 0>
  <Pac P2 1 400 140 18 -25 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <.SP SP1 1 380 230 0 77 0 0 "lin" 1 "1 GHz" 1 "20 GHz" 1 "39" 1 "yes" 1 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn1 1 60 420 -31 19 0 0 "S11_dB=dB(S[1,1])" 1 "S21_dB=dB(S[2,1])" 1 "S22_dB=dB(S[2,2])" 1 "yes" 0>
  <Eqn Eqn2 1 410 470 -31 19 0 0 "NF=10*log10(F)" 1 "yes" 0>
</Components>
<Wires>
  <160 110 180 110 "" 0 0 0 "">
  <180 110 200 110 "" 0 0 0 "">
  <180 110 180 150 "" 0 0 0 "">
  <40 110 40 150 "" 0 0 0 "">
  <40 110 100 110 "" 0 0 0 "">
  <400 90 400 110 "" 0 0 0 "">
  <260 90 400 90 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 660 441 537 281 3 #c0c0c0 1 10 1 1e+09 1 3e+10 0 -15 5 20 0 0 0.5 5 315 0 225 "" "" "" "">
	<"S11_dB" #0000ff 0 3 0 0 0>
	<"S21_dB" #ff0000 0 3 0 0 0>
	  <Mkr 1e+10 367 -369 3 0 0>
	<"S22_dB" #005500 0 3 0 0 0>
	<"NF" #aa00ff 0 3 0 0 1>
	  <Mkr 1e+10 164 -367 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 30 260 12 #000000 0 "This amplifier is noise matched at the input\nfor a frequency of 10GHz.\nThus, the noise optimum Sopt of the overall\ncircuit is zero. (Okay, the matching circuit\nis really ugly, but hey, this is a simulation.)">
  <Text 260 30 12 #000000 0 "For a description of the FET noise\nmodel take a look into its subcircuit.">
</Paintings>
