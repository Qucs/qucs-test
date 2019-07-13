<Qucs Schematic 0.0.20>
<Properties>
  <View=0,-100,2317,843,1,0,200>
  <Grid=10,10,1>
  <DataSet=resonance.dat>
  <DataDisplay=resonance.dpl>
  <OpenDisplay=0>
  <Script=resonance.m>
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
  <.AC AC1 1 90 430 0 49 0 0 "lin" 1 "0.9 GHz" 1 "1.1 GHz" 1 "150" 1 "no" 0>
  <.SW SW1 1 280 430 0 83 0 0 "AC1" 1 "log" 1 "R_par" 1 "1 Ohm" 1 "20 Ohm" 1 "6" 1>
  <Eqn SeriesResonatorEqs 1 130 660 -31 19 0 0 "VL=Vi.v - VC.v" 1 "VR=VR.v - Vi.v" 1 "VL_phase=phase(VL)" 1 "VC_phase=phase(VC.v)" 1 "VR_phase=phase(VR)" 1 "yes" 0>
  <Vac V1 1 130 120 18 -26 0 1 "1 V" 1 "1 GHz" 0 "0" 0 "0" 0>
  <GND * 5 330 210 0 0 0 0>
  <GND * 5 130 210 0 0 0 0>
  <R R1 1 330 60 15 -26 0 1 "R_par" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C1 1 330 180 17 -26 0 1 "2 pF" 1 "" 0 "neutral" 0>
  <L L1 1 330 120 10 -26 0 1 "13 nH" 1 "" 0>
</Components>
<Wires>
  <130 150 130 210 "" 0 0 0 "">
  <130 30 330 30 "VR" 220 -20 149 "">
  <130 30 130 90 "" 0 0 0 "">
  <330 90 330 90 "Vi" 269 60 0 "">
  <330 150 330 150 "VC" 251 120 0 "">
</Wires>
<Diagrams>
  <Rect 630 343 771 353 3 #c0c0c0 1 00 1 9e+08 2e+07 1.1e+09 1 -5.0618 20 88.3409 1 -1 0.5 1 315 0 225 "" "" "" "">
	<"VC.v" #0000ff 0 3 0 0 0>
	<"VL" #ff0000 0 3 0 0 0>
  </Rect>
  <Rect 630 823 771 353 3 #c0c0c0 1 00 1 9e+08 2e+07 1.1e+09 0 -180 90 180 1 -1 0.5 1 315 0 225 "" "" "" "">
	<"VC_phase" #0000ff 0 3 0 0 0>
	<"VL_phase" #ff0000 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 110 260 12 #000000 0 "The voltage overshot strongly depends on the quality\nof the resonance circuit, Q.">
  <Text 700 -80 20 #000000 0 "Voltage drop across the inductor and the capacitor">
  <Text 1560 10 25 #000000 0 "Math notes">
  <Text 1570 100 12 #000000 0 "Z_C = 1/(j · ω · C)\nZ_L = j · ω · L\n\nThe input impedance is given by:\n\nZ_{in} = R + Z_C + Z_L = (C · ω) / (ω^2 · L · C ·  j + ω · R · C - j)\n\nConsequently, the current through the circuit is given by:\n\nI = V_{in} / Z_{in}\n\nThe voltage drop at the capacitor, inductor, and resistor are, respectively:\n\nV_C = I · Z_C = -j · V_{in} / ((j · L · C · ω^2 + R · C · ω - j) )\n\nV_L = I · Z_L = j · V_{in} · (L · C · ω^2)/(j · L · C · ω^2 + R · C · ω - j)\n\nV_R = I · R = V_{in} · (R · C · ω) / (j · L · C · ω^2 + R · C · ω - j)\n\n\nBearing in mind that Q = sqrt(L/C)/R and the fact that ω_0 = 1 / sqrt(L · C) at the resonance frequency,\n the voltage waveforms across the components (at resonance) can be expressed in terms of Q:\n\nV_C = -j · Q · V_{in}\nV_L = j · Q · V_{in}\nV_R = V_{in}\n\nThus, the voltage overshoot is directly proportional to Q.">
</Paintings>
