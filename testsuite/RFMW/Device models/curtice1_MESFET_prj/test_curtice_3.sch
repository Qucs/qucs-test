<Qucs Schematic 0.0.12>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=test_curtice_3.dat>
  <DataDisplay=test_curtice_3.dpl>
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
  <GND * 1 240 190 0 0 0 0>
  <Vdc V1 1 380 140 18 -26 0 1 "5" 1>
  <Vdc V2 1 80 200 18 -26 0 1 "Vgs" 1>
  <GND * 1 80 230 0 0 0 0>
  <GND * 1 380 170 0 0 0 0>
  <.DC DC1 1 40 290 0 34 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.SW SW1 1 380 260 0 53 0 0 "DC1" 1 "lin" 1 "Vgs" 1 "-1" 1 "1" 1 "51" 1>
  <Eqn Eqn1 1 70 360 -32 16 0 0 "Id=-V1.I" 1 "Ig=-V2.I" 1 "yes" 0>
  <Sub Curtice1 1 240 150 20 -46 0 0 "curtice_1.sch" 0 "1m" 1 "1m" 1 "1m" 1 "0" 1 "0" 1 "0" 1 "0" 1 "10f" 1 "1" 1 "0" 1 "1.11" 1 "3m" 1 "40m" 1 "-6" 1 "27" 1 "0.8" 1 "300f" 1 "10p" 1 "1m" 1 "300f" 1 "300f" 1 "27" 1>
</Components>
<Wires>
  <80 150 210 150 "" 0 0 0 "">
  <80 150 80 170 "" 0 0 0 "">
  <380 90 380 110 "" 0 0 0 "">
  <240 90 380 90 "" 0 0 0 "">
  <240 90 240 110 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
