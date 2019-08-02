<Qucs Schematic 0.0.8>
<Properties>
  <View=-69,-24,800,740,1,69,30>
  <Grid=10,10,1>
  <DataSet=fourbitadder.dat>
  <DataDisplay=fourbitadder.dpl>
  <OpenDisplay=1>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Sub FA1 1 230 430 70 -26 0 0 "fulladder.sch" 1>
  <Sub FA2 1 230 330 70 -26 0 0 "fulladder.sch" 1>
  <Sub FA3 1 230 230 70 -26 0 0 "fulladder.sch" 1>
  <GND * 1 250 440 0 0 0 0>
  <Sub FA4 1 230 130 70 -26 0 0 "fulladder.sch" 1>
  <DigiSource S1 1 110 370 -35 16 0 0 "1" 1 "low" 0 "1ns; 1ns" 0 "1 V" 0>
  <DigiSource S2 1 110 270 -35 16 0 0 "2" 1 "low" 0 "1ns; 1ns" 0 "1 V" 0>
  <DigiSource S3 1 110 170 -35 16 0 0 "3" 1 "low" 0 "1ns; 1ns" 0 "1 V" 0>
  <DigiSource S4 1 110 70 -35 16 0 0 "4" 1 "low" 0 "1ns; 1ns" 0 "1 V" 0>
  <DigiSource S5 1 180 420 -35 16 0 0 "5" 1 "low" 0 "1ns; 1ns" 0 "1 V" 0>
  <DigiSource S6 1 180 320 -35 16 0 0 "6" 1 "low" 0 "1ns; 1ns" 0 "1 V" 0>
  <DigiSource S7 1 180 220 -35 16 0 0 "7" 1 "low" 0 "1ns; 1ns" 0 "1 V" 0>
  <DigiSource S8 1 180 120 -35 16 0 0 "8" 1 "low" 0 "1ns; 1ns" 0 "1 V" 0>
  <.TR TR1 0 450 280 0 51 0 0 "lin" 1 "0" 1 "10 ns" 1 "101" 1 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0>
  <.Digi Digi1 1 450 160 0 51 0 0 "TimeList" 1 "10 ns" 1>
</Components>
<Wires>
  <250 340 250 350 "" 0 0 0 "">
  <250 240 250 250 "" 0 0 0 "">
  <250 140 250 150 "" 0 0 0 "">
  <110 70 200 70 "IN1_4" 80 40 13 "">
  <110 170 200 170 "IN1_3" 80 140 11 "">
  <110 270 200 270 "IN1_2" 80 240 18 "">
  <110 370 200 370 "IN1_1" 80 340 14 "">
  <180 120 200 120 "IN2_4" 150 90 10 "">
  <180 220 200 220 "IN2_3" 150 190 8 "">
  <180 320 200 320 "IN2_2" 150 290 9 "">
  <180 420 200 420 "IN2_1" 150 390 9 "">
  <300 370 300 370 "OUT1" 330 340 0 "">
  <300 270 300 270 "OUT2" 330 240 0 "">
  <300 170 300 170 "OUT3" 330 140 0 "">
  <300 70 300 70 "OUT4" 330 40 0 "">
  <250 50 250 50 "CO" 280 20 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
