<Qucs Schematic 0.0.10>
<Properties>
  <View=70,-80,910,696,1,0,120>
  <Grid=10,10,1>
  <DataSet=Sync_BCD_counter.dat>
  <DataDisplay=Sync_BCD_counter.dpl>
  <OpenDisplay=1>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Sub SUB5 1 270 220 15 -75 0 1 "Logic_one.sch" 1>
  <AND Y1 1 430 170 -26 27 0 0 "2" 0 "1 V" 0 "0" 0 "DIN40900" 0>
  <AND Y2 1 580 170 -26 27 0 0 "2" 0 "1 V" 0 "0" 0 "DIN40900" 0>
  <AND Y3 1 770 170 -26 27 0 0 "2" 0 "1 V" 0 "0" 0 "DIN40900" 0>
  <Sub SUB2 1 500 290 -30 114 0 0 "jkff.sch" 1>
  <Sub SUB3 1 680 290 -30 114 0 0 "jkff.sch" 1>
  <Sub SUB1 1 340 290 -30 114 0 0 "jkff.sch" 1>
  <AND Y4 1 240 410 -26 27 0 0 "2" 0 "1 V" 0 "0" 0 "DIN40900" 0>
  <Inv Y5 1 240 500 -26 27 0 0 "1 V" 0 "0" 0 "DIN40900" 0>
  <DigiSource CLEAR 1 160 500 -35 16 0 0 "3" 1 "high" 0 "10ns; 1000ns" 1 "1 V" 0>
  <DigiSource COUNT 1 160 420 -35 16 0 0 "2" 0 "low" 0 "5ns; 1000ns" 1 "1 V" 0>
  <DigiSource CLOCK 1 160 330 -35 16 0 0 "1" 0 "low" 0 "5ns; 5ns" 1 "1 V" 0>
  <Sub SUB4 1 850 290 -30 114 0 0 "jkff.sch" 1>
  <.TR TR1 0 440 480 0 51 0 0 "lin" 1 "0" 1 "120 ns" 1 "1001" 0 "AdamsMoulton" 0 "6" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0>
  <.Digi Digi1 1 610 480 0 51 0 0 "TimeList" 1 "120 ns" 1>
</Components>
<Wires>
  <440 330 470 330 "" 0 0 0 "">
  <440 250 440 330 "" 0 0 0 "">
  <280 250 310 250 "" 0 0 0 "">
  <280 250 280 330 "" 0 0 0 "">
  <280 330 310 330 "" 0 0 0 "">
  <270 200 340 200 "" 0 0 0 "">
  <300 380 340 380 "" 0 0 0 "">
  <600 290 650 290 "" 0 0 0 "">
  <600 410 800 410 "" 0 0 0 "">
  <600 290 600 410 "" 0 0 0 "">
  <420 290 470 290 "" 0 0 0 "">
  <420 410 600 410 "" 0 0 0 "">
  <420 290 420 410 "" 0 0 0 "">
  <620 330 650 330 "" 0 0 0 "">
  <620 250 620 330 "" 0 0 0 "">
  <620 250 650 250 "" 0 0 0 "">
  <270 250 280 250 "" 0 0 0 "">
  <270 200 270 250 "" 0 0 0 "">
  <440 250 460 250 "" 0 0 0 "">
  <460 250 470 250 "" 0 0 0 "">
  <460 170 460 250 "" 0 0 0 "">
  <610 250 620 250 "" 0 0 0 "">
  <610 170 610 250 "" 0 0 0 "">
  <370 250 400 250 "" 0 0 0 "">
  <400 180 400 250 "" 0 0 0 "">
  <400 250 400 400 "" 0 0 0 "">
  <530 250 550 250 "" 0 0 0 "">
  <550 180 550 250 "" 0 0 0 "">
  <710 250 740 250 "" 0 0 0 "">
  <740 180 740 250 "" 0 0 0 "">
  <610 160 610 170 "" 0 0 0 "">
  <610 160 740 160 "" 0 0 0 "">
  <460 160 460 170 "" 0 0 0 "">
  <460 160 550 160 "" 0 0 0 "">
  <340 200 500 200 "" 0 0 0 "">
  <340 200 340 210 "" 0 0 0 "">
  <500 200 680 200 "" 0 0 0 "">
  <500 200 500 210 "" 0 0 0 "">
  <680 200 680 210 "" 0 0 0 "">
  <340 380 500 380 "" 0 0 0 "">
  <340 370 340 380 "" 0 0 0 "">
  <500 380 680 380 "" 0 0 0 "">
  <500 370 500 380 "" 0 0 0 "">
  <680 370 680 380 "" 0 0 0 "">
  <400 140 910 140 "" 0 0 0 "">
  <400 140 400 160 "" 0 0 0 "">
  <270 410 420 410 "" 0 0 0 "">
  <270 290 270 410 "" 0 0 0 "">
  <270 290 310 290 "" 0 0 0 "">
  <270 500 300 500 "" 0 0 0 "">
  <300 380 300 500 "" 0 0 0 "">
  <160 500 210 500 "" 0 0 0 "">
  <160 420 210 420 "" 0 0 0 "">
  <160 330 210 330 "CLOCK" 170 300 10 "">
  <210 330 210 400 "" 0 0 0 "">
  <800 250 820 250 "" 0 0 0 "">
  <800 170 800 250 "" 0 0 0 "">
  <820 330 820 400 "" 0 0 0 "">
  <400 400 820 400 "" 0 0 0 "">
  <800 290 820 290 "" 0 0 0 "">
  <800 290 800 410 "" 0 0 0 "">
  <880 330 910 330 "" 0 0 0 "">
  <910 140 910 330 "" 0 0 0 "">
  <850 200 850 210 "" 0 0 0 "">
  <680 200 850 200 "" 0 0 0 "">
  <850 370 850 380 "" 0 0 0 "">
  <680 380 850 380 "" 0 0 0 "">
  <160 500 160 500 "CLEAR" 160 480 0 "">
  <160 420 160 420 "COUNT" 160 400 0 "">
  <880 250 880 250 "Q3" 880 220 0 "">
  <400 250 400 250 "Q0" 430 220 0 "">
  <550 250 550 250 "Q1" 580 220 0 "">
  <740 250 740 250 "Q2" 770 220 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
