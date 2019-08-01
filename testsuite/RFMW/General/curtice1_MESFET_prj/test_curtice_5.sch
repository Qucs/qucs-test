<Qucs Schematic 0.0.12>
<Properties>
  <View=-76,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=test_curtice_5.dat>
  <DataDisplay=test_curtice_5.dpl>
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
  <GND * 1 240 160 0 0 0 0>
  <.SW SW1 1 380 230 0 53 0 0 "SP1" 1 "lin" 1 "Vds" 1 "5" 1 "20" 1 "3" 1>
  <.SP SP1 1 500 230 0 53 0 0 "lin" 1 "1kHz" 1 "10GHz" 1 "40" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Vdc V1 1 380 140 18 -26 0 1 "Vds" 1>
  <GND * 1 380 170 0 0 0 0>
  <Vdc V2 1 130 200 18 -26 0 1 "0" 1>
  <GND * 1 130 230 0 0 0 0>
  <BiasT X1 1 130 120 -26 34 0 0 "1 uH" 0 "1 uF" 0>
  <BiasT X2 1 380 60 -26 34 1 2 "1 uH" 0 "1 uF" 0>
  <Pac P1 1 80 200 -86 -26 1 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 80 230 0 0 0 0>
  <.DC DC1 1 80 280 0 34 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Eqn Eqn1 1 110 350 -32 16 0 0 "Id=-V1.I" 1 "Ig=-V2.I" 1 "yes" 0>
  <GND * 1 460 170 0 0 0 0>
  <Pac P2 1 460 140 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Sub Curtice1 1 240 120 20 -46 0 0 "curtice_1.sch" 0 "1m" 1 "1m" 1 "1m" 1 "0" 1 "1p" 1 "5p" 1 "5p" 1 "10f" 1 "1" 1 "3" 1 "1.11" 1 "3m" 1 "40m" 1 "-6" 1 "27" 1 "0.8" 1 "300f" 1 "10p" 1 "1m" 1 "300f" 1 "300f" 1 "27" 1>
</Components>
<Wires>
  <240 60 240 80 "" 0 0 0 "">
  <240 60 350 60 "" 0 0 0 "">
  <160 120 210 120 "" 0 0 0 "">
  <130 150 130 170 "" 0 0 0 "">
  <380 90 380 110 "" 0 0 0 "">
  <80 120 80 170 "" 0 0 0 "">
  <80 120 100 120 "" 0 0 0 "">
  <410 60 460 60 "" 0 0 0 "">
  <460 60 460 110 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
