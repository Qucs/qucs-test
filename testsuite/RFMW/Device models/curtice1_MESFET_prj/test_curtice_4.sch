<Qucs Schematic 0.0.12>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=test_curtice_4.dat>
  <DataDisplay=test_curtice_4.dpl>
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
  <GND * 1 230 170 0 0 0 0>
  <Vdc V1 1 370 120 18 -26 0 1 "5" 1>
  <Vdc V2 1 70 180 18 -26 0 1 "Vgs" 1>
  <GND * 1 70 210 0 0 0 0>
  <GND * 1 370 150 0 0 0 0>
  <.SW SW1 1 370 240 0 53 0 0 "DC1" 1 "lin" 1 "Vgs" 1 "0.6" 1 "1.0" 1 "21" 1>
  <.SW SW2 1 500 240 0 53 0 0 "SW1" 1 "lin" 1 "Temp" 1 "-100" 1 "+100" 1 "6" 1>
  <.DC DC1 1 70 270 0 34 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Eqn Eqn1 1 100 340 -32 16 0 0 "Id=-V1.I" 1 "Ig=-V2.I" 1 "yes" 0>
  <Sub Curtice1 1 230 130 20 -46 0 0 "curtice_1.sch" 0 "1m" 1 "1m" 1 "1m" 1 "0" 1 "0" 1 "0" 1 "0" 1 "10f" 1 "1" 1 "3" 1 "1.11" 1 "3m" 1 "40m" 1 "-6" 1 "Temp" 1 "0.8" 1 "300f" 1 "10p" 1 "1m" 1 "300f" 1 "300f" 1 "27" 1>
</Components>
<Wires>
  <70 130 200 130 "" 0 0 0 "">
  <70 130 70 150 "" 0 0 0 "">
  <370 70 370 90 "" 0 0 0 "">
  <230 70 370 70 "" 0 0 0 "">
  <230 70 230 90 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
