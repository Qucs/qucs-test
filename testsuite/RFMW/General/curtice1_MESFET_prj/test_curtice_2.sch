<Qucs Schematic 0.0.12>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=test_curtice_2.dat>
  <DataDisplay=test_curtice_2.dpl>
  <OpenDisplay=1>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 1 250 170 0 0 0 0>
  <Vdc V1 1 390 120 18 -26 0 1 "Vds" 1>
  <Vdc V2 1 90 180 18 -26 0 1 "Vgs" 1>
  <GND * 1 90 210 0 0 0 0>
  <GND * 1 390 150 0 0 0 0>
  <.DC DC1 1 50 270 0 34 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Eqn Eqn1 1 80 340 -32 16 0 0 "Id=-V1.I" 1 "yes" 0>
  <.SW SW1 1 390 240 0 53 0 0 "DC1" 1 "lin" 1 "Vgs" 1 "-8" 1 "0" 1 "21" 1>
  <.SW SW2 1 510 240 0 53 0 0 "SW1" 1 "lin" 1 "Vds" 1 "1" 1 "11" 1 "6" 1>
  <Sub Curtice1 1 250 130 20 -46 0 0 "curtice_1.sch" 0 "1m" 1 "1m" 1 "1m" 1 "10" 1 "0" 1 "0" 1 "0" 1 "10f" 1 "1" 1 "0" 1 "1.11" 1 "3m" 1 "40m" 1 "-6" 1 "27" 1 "0.8" 1 "300f" 1 "10p" 1 "1m" 1 "300f" 1 "300f" 1 "27" 1>
</Components>
<Wires>
  <90 130 220 130 "" 0 0 0 "">
  <90 130 90 150 "" 0 0 0 "">
  <390 70 390 90 "" 0 0 0 "">
  <250 70 390 70 "" 0 0 0 "">
  <250 70 250 90 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>