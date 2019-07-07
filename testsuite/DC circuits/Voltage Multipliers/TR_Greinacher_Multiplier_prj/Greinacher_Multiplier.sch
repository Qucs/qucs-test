<Qucs Schematic 0.0.20>
<Properties>
  <View=-49,-86,1787,954,0.909092,0,0>
  <Grid=10,10,1>
  <DataSet=Greinacher_Multiplier.dat>
  <DataDisplay=Greinacher_Multiplier.dpl>
  <OpenDisplay=0>
  <Script=Greinacher_Multiplier.m>
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
  <.TR TR1 1 90 350 0 78 0 0 "lin" 1 "0" 1 "30 ms" 1 "300" 1 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Vac V1 1 100 210 14 -41 0 1 "10 V" 1 "1 kHz" 1 "0" 0 "0" 0>
  <R R1 1 130 140 -32 -58 1 0 "1 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 5 100 240 0 0 0 0>
  <GND * 5 640 300 0 0 0 0>
  <C C4 1 530 240 -26 17 1 2 "1 uF" 1 "" 0 "neutral" 0>
  <C C3 1 470 140 -31 -61 0 2 "1 uF" 1 "" 0 "neutral" 0>
  <Diode D4 1 560 190 13 -26 0 1 "1e-15 A" 0 "1" 0 "10 fF" 0 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <Diode D3 1 500 190 13 -26 1 3 "1e-15 A" 0 "1" 0 "10 fF" 0 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <C C2 1 350 240 -26 17 1 2 "1 uF" 1 "" 0 "neutral" 0>
  <C C1 1 290 140 -34 -61 0 2 "1 uF" 1 "" 0 "neutral" 0>
  <Diode D2 1 380 190 13 -26 0 1 "1e-15 A" 0 "1" 0 "10 fF" 0 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <Diode D1 1 320 190 13 -26 1 3 "1e-15 A" 0 "1" 0 "10 fF" 0 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <R R_load 1 640 270 15 -26 0 1 "1 MOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
</Components>
<Wires>
  <160 140 260 140 "Input" 200 90 20 "">
  <100 240 320 240 "" 0 0 0 "">
  <100 140 100 180 "" 0 0 0 "">
  <560 240 640 240 "Output" 640 190 60 "">
  <380 240 500 240 "Va_peak" 430 210 20 "">
  <500 140 560 140 "" 0 0 0 "">
  <560 140 560 160 "" 0 0 0 "">
  <560 220 560 240 "" 0 0 0 "">
  <500 140 500 160 "" 0 0 0 "">
  <500 220 500 240 "" 0 0 0 "">
  <380 220 380 240 "" 0 0 0 "">
  <380 140 440 140 "" 0 0 0 "">
  <380 140 380 160 "" 0 0 0 "">
  <320 140 380 140 "Va" 370 100 28 "">
  <320 220 320 240 "" 0 0 0 "">
  <320 140 320 160 "" 0 0 0 "">
  <560 140 560 140 "Vb" 570 100 0 "">
</Wires>
<Diagrams>
  <Rect 830 370 666 338 3 #c0c0c0 1 00 1 0 0.002 0.03 0 -15 5 40 1 -1 0.5 1 315 0 225 "" "" "" "">
	<"Output.Vt" #0000ff 2 3 0 0 0>
	  <Mkr 0.028796 697 -388 3 0 0>
	<"Input.Vt" #ff0000 0 3 0 0 0>
	<"Va.Vt" #005500 0 3 0 0 0>
	<"Va_peak.Vt" #005500 2 3 0 0 0>
	  <Mkr 0.0288963 681 -265 3 0 0>
	<"Vb.Vt" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Rectangle 250 80 170 220 #000000 0 1 #c0c0c0 1 0>
  <Rectangle 430 80 170 220 #000000 0 1 #c0c0c0 1 0>
  <Rectangle 70 80 100 210 #000000 0 1 #c0c0c0 1 0>
  <Text 90 310 12 #ff0000 0 "Generator">
  <Text 310 310 12 #ff0000 0 "1. stage">
  <Text 500 310 12 #ff0000 0 "2. stage">
  <Text 260 360 12 #000000 0 "Two-stage Greinacher circuit:\nEvery stage adds two-times the input voltage.\n(Decreased by the diode voltage drop)\nMany stages can be put in cascade.\nThis circuit can only drive a high-impedance load.">
  <Text 260 510 12 #000000 0 "More info:\n"High Voltage Test and Measuring Techniques".Wolfgang Hauschild, Eberhard Lemke. Springer. 2014. ISBN: 978-3-642-45351-9\n">
</Paintings>
