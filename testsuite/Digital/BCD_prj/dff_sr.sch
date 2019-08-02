<Qucs Schematic 0.0.9>
<Properties>
  <View=193,-49,667,446,1,0,0>
  <Grid=5,5,1>
  <DataSet=dff_sr.dat>
  <DataDisplay=dff_sr.dpl>
  <OpenDisplay=1>
</Properties>
<Symbol>
  <Line 20 -40 -60 0 #00007f 2 1>
  <.ID 40 94 SUB>
  <Line 20 -40 0 120 #00007f 2 1>
  <Text 8 -25 12 #000000 0 "Q">
  <Ellipse 20 45 10 10 #00007f 2 1 #c0c0c0 1 0>
  <Line -40 80 60 0 #00007f 2 1>
  <Ellipse -15 -50 10 10 #00007f 2 1 #c0c0c0 1 0>
  <Line -10 -50 0 -20 #00007f 2 1>
  <.PortSym -10 -70 6 0>
  <Line -60 -25 20 0 #00007f 2 1>
  <.PortSym -60 -25 2 0>
  <Line -60 20 20 0 #00007f 2 1>
  <.PortSym -60 20 1 0>
  <Ellipse -15 80 10 10 #00007f 2 1 #c0c0c0 1 0>
  <Line -10 90 0 15 #00007f 2 1>
  <.PortSym -10 105 5 0>
  <Text -12 -38 12 #000000 0 "S">
  <Text -37 -28 12 #000000 0 "D">
  <Line 40 -20 -20 0 #00007f 2 1>
  <.PortSym 40 -20 3 180>
  <Line 45 50 -15 0 #00007f 2 1>
  <.PortSym 45 50 4 180>
  <Text -16 65 12 #000000 0 "R">
  <Text 6 47 12 #000000 0 "Q">
  <Line 14 46 -10 0 #000000 2 1>
  <Line -40 11 10 9 #00007f 2 1>
  <Line -40 -40 0 120 #00007f 2 1>
  <Line -30 20 -10 9 #00007f 2 1>
</Symbol>
<Components>
  <Port CLOCK 1 260 245 -23 12 0 0 "1" 1 "in" 0>
  <Port QB 1 640 260 4 -28 0 2 "4" 0 "out" 0>
  <Port Q 1 640 180 4 -28 0 2 "3" 0 "out" 0>
  <Port SET 1 265 35 -23 12 0 0 "6" 0 "in" 0>
  <Port DIN 1 290 405 -23 12 0 0 "2" 1 "in" 0>
  <Port RESET 1 260 180 -23 12 0 0 "5" 0 "in" 0>
  <NAND Y8 1 415 180 -26 27 0 0 "3" 0 "1 V" 0 "0" 0 "DIN40900" 0>
  <NAND Y9 1 417 385 -26 27 0 0 "3" 0 "1 V" 0 "0" 0 "DIN40900" 0>
  <NAND Y2 1 590 270 -26 27 0 0 "3" 0 "1 V" 0 "0" 0 "DIN40900" 0>
  <NAND Y10 1 590 170 -26 27 0 0 "3" 0 "1 V" 0 "0" 0 "DIN40900" 0>
  <NAND Y7 1 410 55 -26 27 0 0 "3" 0 "1 V" 0 "0" 0 "DIN40900" 0>
  <NAND Y11 1 410 270 -26 27 0 0 "3" 0 "1 V" 0 "0" 0 "DIN40900" 0>
</Components>
<Wires>
  <540 230 620 230 "" 0 0 0 "">
  <620 230 620 260 "" 0 0 0 "">
  <375 310 460 310 "" 0 0 0 "">
  <460 270 460 310 "" 0 0 0 "">
  <555 220 620 220 "" 0 0 0 "">
  <620 180 620 220 "" 0 0 0 "">
  <620 260 640 260 "" 0 0 0 "">
  <620 180 640 180 "" 0 0 0 "">
  <260 245 310 245 "" 0 0 0 "">
  <440 270 460 270 "" 0 0 0 "">
  <310 290 380 290 "" 0 0 0 "">
  <310 245 310 290 "" 0 0 0 "">
  <380 225 455 225 "" 0 0 0 "">
  <380 225 380 250 "" 0 0 0 "">
  <360 135 455 135 "" 0 0 0 "">
  <455 135 455 180 "" 0 0 0 "">
  <455 180 455 190 "" 0 0 0 "">
  <445 180 455 180 "" 0 0 0 "">
  <310 200 385 200 "" 0 0 0 "">
  <310 200 310 245 "CLOCK" 240 210 45 "">
  <260 180 280 180 "" 0 0 0 "">
  <280 180 385 180 "" 0 0 0 "">
  <280 180 280 330 "" 0 0 0 "">
  <265 35 350 35 "SET" 310 5 14 "">
  <350 20 500 20 "" 0 0 0 "">
  <350 20 350 35 "" 0 0 0 "">
  <340 270 340 345 "" 0 0 0 "">
  <340 270 380 270 "" 0 0 0 "">
  <380 115 380 160 "" 0 0 0 "">
  <380 160 385 160 "" 0 0 0 "">
  <447 345 447 385 "I3" 460 325 2 "">
  <340 345 447 345 "" 0 0 0 "">
  <290 405 387 405 "DIN" 335 375 13 "">
  <375 385 387 385 "" 0 0 0 "">
  <375 310 375 385 "" 0 0 0 "">
  <280 365 387 365 "" 0 0 0 "">
  <620 170 620 180 "" 0 0 0 "">
  <455 190 455 225 "" 0 0 0 "">
  <455 190 560 190 "I1" 475 170 14 "">
  <540 170 560 170 "" 0 0 0 "">
  <540 170 540 230 "" 0 0 0 "">
  <500 150 560 150 "" 0 0 0 "">
  <500 20 500 150 "" 0 0 0 "">
  <620 260 620 270 "" 0 0 0 "">
  <560 290 560 330 "" 0 0 0 "">
  <280 330 280 365 "" 0 0 0 "">
  <280 330 560 330 "" 0 0 0 "">
  <460 270 560 270 "I2" 485 245 17 "">
  <555 250 560 250 "" 0 0 0 "">
  <555 220 555 250 "" 0 0 0 "">
  <440 55 440 115 "I0" 455 95 60 "">
  <380 115 440 115 "" 0 0 0 "">
  <340 75 380 75 "" 0 0 0 "">
  <340 75 340 270 "" 0 0 0 "">
  <360 55 380 55 "" 0 0 0 "">
  <360 55 360 135 "" 0 0 0 "">
  <350 35 380 35 "" 0 0 0 "">
  <620 260 620 260 "QB" 620 270 0 "">
  <620 180 620 180 "Q" 620 150 0 "">
  <280 180 280 180 "RESET" 310 150 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>