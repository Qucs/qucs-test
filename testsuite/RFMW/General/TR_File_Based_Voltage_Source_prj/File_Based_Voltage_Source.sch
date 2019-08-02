<Qucs Schematic 0.0.14>
<Properties>
  <View=6,30,734,612,1,0,0>
  <Grid=10,10,1>
  <DataSet=File_Based_Voltage_Source.dat>
  <DataDisplay=File_Based_Voltage_Source.dpl>
  <OpenDisplay=0>
  <showFrame=0>
  <FrameText0=Titel>
  <FrameText1=Gezeichnet von:>
  <FrameText2=Datum:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Vfile V1 1 80 190 18 -26 0 1 "vfile_test_data.dat" 1 "cubic" 1 "yes" 1 "2" 1 "1m" 1>
  <GND * 1 80 280 0 0 0 0>
  <R R1 1 180 130 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Vfile V2 1 320 190 18 -26 0 1 "vfile_test_data.csv" 1 "linear" 1 "yes" 1 "1" 1 "1m" 1>
  <GND * 1 320 280 0 0 0 0>
  <R R2 1 420 130 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <.TR TR1 1 530 130 0 61 0 0 "lin" 1 "0" 1 "50 ms" 1 "101" 1 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
</Components>
<Wires>
  <80 220 80 280 "" 0 0 0 "">
  <80 130 80 160 "" 0 0 0 "">
  <80 130 150 130 "U1" 120 90 20 "">
  <80 280 260 280 "" 0 0 0 "">
  <210 130 260 130 "" 0 0 0 "">
  <260 130 260 280 "" 0 0 0 "">
  <320 220 320 280 "" 0 0 0 "">
  <320 130 320 160 "" 0 0 0 "">
  <320 130 390 130 "U2" 360 90 20 "">
  <320 280 500 280 "" 0 0 0 "">
  <450 130 500 130 "" 0 0 0 "">
  <500 130 500 280 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 80 507 409 177 3 #c0c0c0 1 00 1 0 0.01 0.05 1 -5.5548 5 5.6628 1 -1 1 1 315 0 225 "" "" "">
	<"U1.Vt" #0000ff 2 3 0 0 0>
	<"U2.Vt" #ff0000 2 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 80 50 16 #000000 0 "Testing file-based voltage sources.">
</Paintings>
