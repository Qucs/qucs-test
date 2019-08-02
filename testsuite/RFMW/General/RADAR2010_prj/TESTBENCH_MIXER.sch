<Qucs Schematic 0.0.15>
<Properties>
  <View=0,68,800,508,1,0,0>
  <Grid=10,10,1>
  <DataSet=TESTBENCH_MIXER.dat>
  <DataDisplay=TESTBENCH_MIXER.dpl>
  <OpenDisplay=1>
  <showFrame=0>
  <FrameText0=Titel>
  <FrameText1=Gezeichnet von:>
  <FrameText2=Datum:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID -20 -16 SUB>
  <Line -20 20 40 0 #000080 2 1>
  <Line 20 20 0 -40 #000080 2 1>
  <Line -20 -20 40 0 #000080 2 1>
  <Line -20 20 0 -40 #000080 2 1>
</Symbol>
<Components>
  <R R2 1 320 290 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 320 320 0 0 0 0>
  <GND * 1 500 120 0 0 0 0>
  <GND * 1 500 180 0 0 0 0>
  <GND * 1 500 240 0 0 0 0>
  <GND * 1 210 260 0 0 0 0>
  <Vac V1 1 100 170 18 -26 0 1 "1 V" 1 "1 GHz" 1 "0" 0 "0" 0>
  <GND * 1 100 200 0 0 0 0>
  <EDD D1 1 450 180 -15 96 0 0 "explicit" 0 "3" 0 "0" 1 "0" 0 "0" 1 "0" 0 "V1 * V2" 1 "0" 0>
  <.TR TR1 1 80 330 0 71 0 0 "lin" 1 "0" 1 "20 ns" 1 "501" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Vac V2 1 210 230 18 -26 0 1 "1 V" 1 "0.9 GHz" 1 "0" 0 "0" 0>
</Components>
<Wires>
  <480 120 500 120 "" 0 0 0 "">
  <480 180 500 180 "" 0 0 0 "">
  <480 240 500 240 "" 0 0 0 "">
  <320 240 320 260 "" 0 0 0 "">
  <320 240 420 240 "output" 360 200 12 "">
  <210 180 420 180 "LO" 250 150 9 "">
  <210 180 210 200 "" 0 0 0 "">
  <100 120 420 120 "RF" 160 90 29 "">
  <100 120 100 140 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
