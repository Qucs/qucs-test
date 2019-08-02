<Qucs Schematic 0.0.20>
<Properties>
  <View=66,-26,1553,930,0.578513,0,0>
  <Grid=10,10,1>
  <DataSet=1838MHz_PLL.dat>
  <DataDisplay=1838MHz_PLL.dpl>
  <OpenDisplay=1>
  <Script=1838MHz_PLL.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=Title     1838 MHz PLL>
  <FrameText1=Drawn By:   M. J. Head>
  <FrameText2=Date:  2/2/07>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <OpAmp OP1 1 610 280 -26 -68 1 0 "1e6" 1 "15 V" 0>
  <GND * 5 480 350 0 0 0 0>
  <GND * 5 1060 280 0 0 0 0>
  <VCVS SRC5 1 1000 310 -26 34 0 0 "1M" 1 "0" 1>
  <C C3 1 1000 220 14 -52 0 0 "0.01 uF" 1 "" 0 "neutral" 0>
  <R R12 1 220 260 -43 -53 1 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C4 1 480 320 -30 49 0 1 "1.39 nF" 1 "" 0 "neutral" 0>
  <VCVS SRC3 1 750 500 -26 34 1 2 "6.25e-4" 1 "0" 1>
  <VCVS SRC2 1 840 310 -26 34 0 0 "-10k" 1 "0" 1>
  <R R3 1 450 260 -22 -58 0 0 "1200 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R1 1 510 260 -23 0 1 0 "1200 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 5 240 530 0 0 0 0>
  <GND * 5 300 530 0 0 0 0>
  <R R9 1 180 500 -89 -19 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <VCVS SRC6 1 270 500 -26 34 1 2 "2.09" 1 "0" 1>
  <GND * 5 180 530 0 0 0 0>
  <GND * 5 570 390 0 0 0 0>
  <R R4 1 570 360 15 -26 0 1 "100 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 5 130 320 0 0 0 0>
  <R R2 1 570 160 -57 -63 1 0 "9.28 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C1 1 630 160 -7 -63 0 0 "4180 pF" 1 "" 0 "neutral" 0>
  <GND * 5 720 380 0 0 0 0>
  <R R5 1 690 280 -26 -54 1 0 "1k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C2 1 720 320 -45 64 1 1 "495 pF" 1 "" 0 "neutral" 0>
  <GND * 5 700 530 0 0 0 0>
  <GND * 5 800 530 0 0 0 0>
  <GND * 5 790 340 0 0 0 0>
  <GND * 5 880 400 0 0 0 0>
  <R R8 1 930 280 -43 -54 0 0 "0.02 MOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R15 1 880 370 8 -21 0 1 "10k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Vac V1 1 130 290 18 -26 0 1 "1 V" 1 "1 Hz" 1 "0" 0 "0" 0>
  <R R14 1 880 220 -90 -29 1 1 "10 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R13 1 270 210 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Sub SUB1 1 270 130 21 -26 0 1 "Xtal noise.sch" 1>
  <R R16 1 390 350 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 5 270 320 0 0 0 0>
  <VCVS SRC7 1 330 290 -26 34 0 0 "0.478" 1 "0" 1>
  <GND * 5 390 380 0 0 0 0>
  <GND * 5 950 340 0 0 0 0>
  <Sub SUB2 1 880 150 21 -26 0 1 "VCO noise.sch" 1>
  <.AC AC1 1 1160 180 0 47 0 0 "log" 1 "100 Hz" 1 "1 MHz" 1 "100" 1 "yes" 1>
  <.DC DC1 1 1330 180 0 47 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.TR TR1 0 1330 270 0 80 0 0 "lin" 1 "0" 1 "100 us" 1 "101" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Eqn Eqn1 1 1210 470 -23 13 0 0 "DB_Out=dB(Out.v)" 1 "DBvcoOut=dB(VCO_out.vn)" 1 "yes" 0>
</Components>
<Wires>
  <650 280 660 280 "" 0 0 0 "">
  <540 260 580 260 "" 0 0 0 "">
  <480 260 480 290 "" 0 0 0 "">
  <970 220 970 280 "" 0 0 0 "">
  <1030 280 1060 280 "" 0 0 0 "">
  <1030 220 1090 220 "" 0 0 0 "">
  <1090 220 1090 340 "" 0 0 0 "">
  <1090 340 1090 470 "" 0 0 0 "">
  <1030 340 1090 340 "" 0 0 0 "">
  <780 470 1090 470 "VCO_out" 1060 500 198 "">
  <250 260 270 260 "" 0 0 0 "">
  <360 470 720 470 "" 0 0 0 "">
  <360 320 360 470 "" 0 0 0 "">
  <180 470 240 470 "" 0 0 0 "">
  <300 470 360 470 "" 0 0 0 "">
  <570 300 570 330 "" 0 0 0 "">
  <570 300 580 300 "" 0 0 0 "">
  <540 160 540 260 "" 0 0 0 "">
  <660 160 660 280 "" 0 0 0 "">
  <720 280 810 280 "" 0 0 0 "">
  <720 350 720 380 "" 0 0 0 "">
  <720 280 720 290 "" 0 0 0 "">
  <700 530 720 530 "" 0 0 0 "">
  <780 530 800 530 "" 0 0 0 "">
  <790 340 810 340 "" 0 0 0 "">
  <870 340 880 340 "" 0 0 0 "">
  <870 280 900 280 "" 0 0 0 "">
  <960 280 970 280 "" 0 0 0 "">
  <130 260 190 260 "" 0 0 0 "">
  <880 250 880 340 "" 0 0 0 "">
  <270 160 270 180 "" 0 0 0 "">
  <270 240 270 260 "" 0 0 0 "">
  <360 320 390 320 "" 0 0 0 "">
  <270 260 300 260 "" 0 0 0 "">
  <360 260 420 260 "" 0 0 0 "">
  <270 320 300 320 "" 0 0 0 "">
  <950 340 970 340 "" 0 0 0 "">
  <880 180 880 190 "" 0 0 0 "">
  <180 470 180 470 "Out" 140 450 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 710 450 12 #000000 0 "Divide Ratio">
  <Text 820 260 12 #000000 0 "VCO Gain">
  <Text 960 180 12 #000000 0 "VCO">
  <Arrow 290 400 60 0 20 8 #000000 0 1 0>
  <Text 310 230 12 #000000 0 "Phase Detector">
  <Rectangle 420 50 350 390 #000000 0 1 #c0c0c0 1 0>
  <Rectangle 770 50 360 390 #000000 0 1 #c0c0c0 1 0>
  <Text 900 60 14 #000000 0 "VCO section">
  <Text 520 60 14 #000000 0 "Loop Filter Section">
  <Rectangle 130 370 170 80 #000000 0 1 #c0c0c0 1 0>
  <Text 140 370 12 #000000 0 "Delete this connection\nto simulate the open \nloop resonse">
  <Text 130 680 12 #000000 0 "This method of PLL simulation can only be used to view the \nsteady state frequency response and time response of a PLL.\nThis diagram represents only the phase of signals within a \nlocked PLL.\n\nThe gain constants of the phase detector and VCO should be \nin terms of radians/volt (VCO.) or volts/radian (ph. det.)\nThe divider constant is simply the divide ratio.">
  <Rectangle 110 670 470 240 #000000 0 1 #c0c0c0 1 0>
  <Text 160 620 12 #000000 0 "The 2.09 is required because of the phase det. \ngain constant of 0.478">
  <Text 720 630 12 #000000 0 "The VCO should set up by itself in a seperate simulation\nto deterime the values of R8 and C3 and possibly R15. \nIf noise is not being used then set R15 to 0.\nFor a VCO with a tuning sensitivity of "X" rad./V, then \nstart out by setting R8 and C3 to cross 0 at some convenient\nfreguency, say, 1 megaradian, or kiloradian, whatever, and then \nset the gain of source 2 to "X"">
  <Rectangle 710 620 470 220 #000000 0 1 #c0c0c0 1 0>
</Paintings>
