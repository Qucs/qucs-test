<Qucs Schematic 0.0.20>
<Properties>
  <View=0,-115,1760,982,0.564474,0,0>
  <Grid=10,10,1>
  <DataSet=opamp_gyrator.dat>
  <DataDisplay=opamp_gyrator.dpl>
  <OpenDisplay=0>
  <Script=opamp_gyrator.m>
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
  <GND * 5 260 280 0 0 0 0>
  <C C1 1 210 150 -26 17 0 0 "1 uF" 1 "" 0 "neutral" 0>
  <Pac P1 1 70 160 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 5 70 190 0 0 0 0>
  <R R1 1 210 110 -37 -69 1 0 "10 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R2 1 260 250 -73 -26 1 1 "500k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <.SP SP1 1 60 330 0 79 0 0 "log" 1 "1 Hz" 1 "10 kHz" 1 "101" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <.DC DC1 1 220 340 0 47 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Eqn Eqn1 1 260 440 -31 19 0 0 "Z=stoz(S)" 1 "Zin1=Z[1,1]" 1 "Zin2=Z[2,2]" 1 "Rin1=real(Zin1)" 1 "Rin2=real(Zin2)" 1 "Lin1=imag(Zin1)/omega" 1 "Lin2=imag(Zin2)/omega" 1 "omega=2*pi*f" 1 "f=logspace(1, 1e4, 101)" 1 "yes" 0>
  <OpAmp OP1 1 290 130 -10 26 1 0 "1e6" 1 "15 V" 0>
  <GND * 5 510 150 0 0 0 0>
  <GND * 5 400 150 0 0 0 0>
  <Pac P2 1 400 120 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <R R4 1 510 120 15 -26 0 1 "500k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R3 1 620 120 15 -26 0 1 "10 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 5 620 240 0 0 0 0>
  <L L1 1 620 210 10 -26 0 1 "5 H" 1 "" 0>
</Components>
<Wires>
  <240 110 260 110 "" 0 0 0 "">
  <240 150 260 150 "" 0 0 0 "">
  <260 70 260 110 "" 0 0 0 "">
  <180 110 180 150 "" 0 0 0 "">
  <260 150 260 220 "" 0 0 0 "">
  <70 110 70 130 "" 0 0 0 "">
  <70 110 180 110 "" 0 0 0 "">
  <260 70 330 70 "" 0 0 0 "">
  <330 70 330 130 "" 0 0 0 "">
  <400 70 400 90 "" 0 0 0 "">
  <620 70 620 90 "" 0 0 0 "">
  <400 70 510 70 "" 0 0 0 "">
  <510 70 620 70 "" 0 0 0 "">
  <510 70 510 90 "" 0 0 0 "">
  <620 150 620 180 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 720 682 308 232 3 #c0c0c0 1 02 1 0 2000 10000 0 0 0.5 6 1 10 1 300000 315 0 225 "" "" "" "">
	<"Rin1" #0000ff 0 3 0 0 1>
	<"Lin1" #ff0000 0 3 0 0 0>
	<"Rin2" #0000ff 3 3 0 2 1>
	<"Lin2" #ff0000 3 3 0 2 0>
  </Rect>
  <Smith 749 324 306 306 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 "" "" "" "">
	<"S[1,1]" #0000ff 2 3 0 1 0>
	  <Mkr 1 -102 -419 3 0 0 1>
	<"S[2,2]" #ff0000 2 3 0 2 0>
  </Smith>
</Diagrams>
<Paintings>
  <Text 400 310 12 #000000 0 "As it can be seen, with the use of\nan OpAmps, a capacitor can\nrebuild a very large inductor.">
  <Text 430 420 14 #000000 0 "L = R1 · R2 · C">
  <Rectangle 1120 20 600 790 #000000 0 1 #c0c0c0 1 0>
  <Rectangle 1120 20 600 60 #000000 0 1 #c0c0c0 1 0>
  <Text 1170 30 20 #000000 0 "Derivation of the input impedance">
  <Text 460 40 14 #000000 0 "equivalent circuit">
  <Text 80 -40 20 #000000 0 "Gyrator">
  <Rectangle 410 410 160 50 #000000 0 1 #c0c0c0 1 0>
  <Text 1160 90 12 #000000 0 "Z_{in} = V_{in} / I_{in}, where I_{in} = I_1 + I_2\n\nwhere I_1 is the current through the lower branch:\n\nI_1 = V_{in} / (R_2 - j/ (ω · C)) => V^{+} = I_1 · R_2 = V_{in} · R_2 / (R_2 - j/ (ω · C)) =\n= V_{in} · (R_{2} · C · ω) / (R_{2} · C · ω - j)\n\nOn the other hand, the current through the upper branch, I_2, is:\n\nI_2 = (V_{in} - V^{-}) / R_1\n\nThe closed loop keeps V^{-} = V^{+}, then:\n\nI_2 = (V_{in} - V^{+}) / R_1 = -j · V_{in}/((R_{2} · C · ω - j) · R_1)\n\nThen,\n\nI_{in} = V_{in} · (R_{1} · C · ω - j)/((R_{2} · C · ω - j)·R_{1})\n\nSo,\n\nZ_{in} = (R_{2} · C · ω - j) · R_1/ (R_{1} · C · ω - j)\n\nUnder the assumption that R_2 >> R_1,\n\nZ_{in} = (R_{2} · C · ω - j) · R_1/  (- j) = R_{1} + j · ω · R_1 · R_2 · C\n\nSo L ~ R_1 · R_2 · C\n">
  <Text 730 410 12 #000000 0 "Input resistance/inductance vs frequency">
</Paintings>
