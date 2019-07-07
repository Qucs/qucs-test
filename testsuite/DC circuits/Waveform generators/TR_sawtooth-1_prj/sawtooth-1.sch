<Qucs Schematic 0.0.20>
<Properties>
  <View=0,-100,1922,1670,0.909091,3,146>
  <Grid=10,10,1>
  <DataSet=sawtooth.dat>
  <DataDisplay=sawtooth.dpl>
  <OpenDisplay=0>
  <Script=sawtooth.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Titel>
  <FrameText1=Gezeichnet von:>
  <FrameText2=Datum:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Lib D1 1 190 290 -32 -31 0 3 "Z-Diodes" 0 "1N4732A" 0>
  <_BJT T_2DA1774R1 1 370 230 -117 -44 1 0 "pnp" 0 "15.2f" 0 "1" 0 "1" 0 "54.7m" 0 "0.135" 0 "127" 0 "24" 0 "3.88p" 0 "2" 0 "0" 0 "2" 0 "523" 0 "4" 0 "0" 0 "0" 0 "0.284" 0 "0.710" 0 "2.84" 0 "42.6p" 0 "1.1" 0 "0.5" 0 "13.7p" 0 "0.3" 0 "0.3" 0 "1" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "453p" 0 "0" 0 "0" 0 "0" 0 "96.4n" 0 "26.85" 0 "0" 0 "1" 0 "1" 0 "0" 0 "1" 0 "1" 0 "0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
  <GND * 5 190 320 0 0 0 0>
  <R R2 1 190 130 15 -26 0 1 "12" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <.TR TR1 1 180 420 0 78 0 0 "lin" 1 "0" 1 "2u" 1 "501" 1 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Vdc V1 1 590 130 18 -26 0 1 "10" 1>
  <GND * 5 590 160 0 0 0 0>
  <GND * 5 490 340 0 0 0 0>
  <C C1 1 490 290 17 -26 0 1 "1n" 1 "" 0 "neutral" 0>
  <IProbe Id 1 440 180 -26 16 1 2>
  <R R1 1 490 130 15 -26 0 1 "400" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 5 310 320 0 0 0 0>
  <_BJT T_2DC4617R1 1 310 290 -107 -13 1 2 "npn" 0 "15.5f" 0 "1" 0 "1" 0 "54.7m" 0 "0.135" 0 "127" 0 "28" 0 "3.9p" 0 "2" 0 "0" 0 "2" 0 "524" 0 "4" 0 "0" 0 "0" 0 "0.116" 0 "0.29" 0 "1.16" 0 "22.7p" 0 "1.1" 0 "0.5" 0 "7.34p" 0 "0.3" 0 "0.3" 0 "1" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "698p" 0 "0" 0 "0" 0 "0" 0 "121n" 0 "26.85" 0 "0" 0 "1" 0 "1" 0 "0" 0 "1" 0 "1" 0 "0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
</Components>
<Wires>
  <190 230 190 260 "" 0 0 0 "">
  <190 230 310 230 "" 0 0 0 "">
  <190 160 190 230 "N4V7" 120 160 39 "">
  <190 80 190 100 "" 0 0 0 "">
  <190 80 490 80 "" 0 0 0 "">
  <490 320 490 340 "" 0 0 0 "">
  <490 180 490 260 "" 0 0 0 "">
  <370 180 370 200 "" 0 0 0 "">
  <370 180 410 180 "" 0 0 0 "">
  <470 180 490 180 "" 0 0 0 "">
  <310 230 340 230 "" 0 0 0 "">
  <310 230 310 260 "" 0 0 0 "">
  <370 260 370 290 "Vb_Q2" 400 250 22 "">
  <340 290 370 290 "" 0 0 0 "">
  <490 80 490 100 "" 0 0 0 "">
  <490 160 490 180 "" 0 0 0 "">
  <590 80 590 100 "" 0 0 0 "">
  <490 80 590 80 "" 0 0 0 "">
  <490 180 490 180 "Out" 530 200 0 "">
</Wires>
<Diagrams>
  <Rect 800 357 495 287 3 #c0c0c0 1 00 1 0 2e-07 2e-06 1 -0.616748 2 6.73199 1 -0.0968102 0.2 1 315 0 225 "" "" "" "">
	<"Out.Vt" #ff0000 0 3 0 0 0>
	  <Mkr 1.072e-06 169 -442 3 0 0>
	  <Mkr 1.328e-06 18 124 3 0 0>
	  <Mkr 1.644e-06 325 120 3 0 0>
	<"N4V7.Vt" #00007f 0 3 0 0 0>
	  <Mkr 1.072e-06 170 -376 3 0 0>
	  <Mkr 1.328e-06 11 193 3 0 0>
	  <Mkr 1.64e-06 322 193 3 0 0>
	<"Id.It" #005500 0 3 0 0 1>
  </Rect>
</Diagrams>
<Paintings>
  <Arrow 1090 -60 60 0 20 8 #000000 0 1 0>
  <Text 1160 -90 12 #000000 0 "When V(Out) = 5.5V, Vbe(Q_1) = 0.75V and it turns on.\nConsequently, Vbe(Q_2) >> 0.75V and it enters into saturation.">
  <Rectangle 950 -100 140 150 #000000 2 3 #c0c0c0 1 0>
  <Rectangle 800 470 140 150 #000000 2 3 #c0c0c0 1 0>
  <Arrow 870 620 0 60 20 8 #000000 0 1 0>
  <Text 780 680 12 #000000 0 "Q_1 and Q_2 are turned on.\nThe voltage at N4V7 is kept low because Q_2 is saturated.\nNotice that V(Out) = Vbe(Q_1) + Vce(Q_2).\nAs C1 reaches full discharge, Vbe(Q_1) slightly drops below 0.75V\nentering in the cutoff region.">
  <Rectangle 1110 470 140 150 #000000 2 3 #c0c0c0 1 0>
  <Arrow 1250 520 60 0 20 8 #000000 0 1 0>
  <Arrow 1310 -40 0 40 20 8 #000000 0 1 0>
  <Text 1320 500 12 #000000 0 "Vbe(Q_1) < 0.75V => Q_1 and Q_2 are turned off.\nThen, C1 starts charging again.">
  <Text 1160 0 12 #000000 0 "At this point, C1 is quickly discharged through Q_1 and Q_2\n since there is little resistance in the current path.">
  <Arrow 1180 680 0 -50 20 8 #000000 0 1 0>
  <Text 600 -40 12 #000000 0 "C1 is charged through R1 until V(Out) = 5.5V">
  <Arrow 870 -10 150 220 20 8 #000000 2 1 0>
  <Arrow 1280 50 -200 180 20 8 #000000 2 1 0>
  <Text 150 350 12 #000000 0 "4V7 Zener">
  <Text 370 220 12 #000000 0 "Q_1">
  <Text 330 300 12 #000000 0 "Q_2">
  <Text 190 40 14 #000000 0 "Saw-Tooth Generator">
  <Text 160 910 12 #000000 0 "---- Charge\nThe minimum voltage of the sawtooth waveform is determined\nby the junction potencial of Q_1 and the Vce of Q_2 in saturation:\nV_{min} = Vbe(Q_1) + Vce(Q_2) = 1.26V \n\nOn the other hand, the maximum voltage of the sawtooth waveform is\ndetermined by the Zener diode and the junction potential of Q_1:\nV_{max} = V_Z + Vbe(Q_2) = 4.7V + 0.75V = 5.45V\n\nNow, recalling the capacitor charge equation:\nVc = V_0 · [1 - e^{-t/(R · C)}]\n\nit is possible to calculate the R·C product for a given ramp.\nIn this sense, the capacitor reaches V_{min} at:\nt_1 = -R·C·ln(1 - V_{min}/V_0)\nand V_{max} at:\nt_2 = -R·C·ln(1 - V_{max}/V_0)\n\nthen, the rise time is given by:\nT = t_2 - t_1 = -R·C · (ln(1 - V_{max}/V_0) - ln(1 - V_{min}/V_0))\nso,\nR·C = -T / (ln(1 - V_{max}/V_0) - ln(1 - V_{min}/V_0))\n\nIn this example,\nT = 0.27 μ s\nK = (ln(1 - V_{max}/V_0) - ln(1 - V_{min}/V_0)) = -0.664\nR = 400 Ω\nthen,\nC = -T/(R · K) = 1nF\n">
  <Text 710 910 12 #000000 0 "---- Discharge\nThe discharge of the capacitor is determined by the sinking\ntransistors. The higher i_{be} capability of Q_1 and the lower\nthe parasitic resitances, the shorter the time the output is at\nlow voltage.\n\nThe low voltage time can be increased by using a resistor in \nthe discharge path:\nV_c = V_0 · e^{-t/(R·C)} \n">
  <Text 160 850 18 #000000 0 "Design equations">
  <Rectangle 130 830 1040 820 #000000 0 1 #c0c0c0 1 0>
  <Rectangle 130 830 1040 70 #000000 0 1 #c0c0c0 1 0>
</Paintings>
