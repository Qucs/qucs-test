<Qucs Schematic 0.0.15>
<Properties>
  <View=-90,-80,1322,777,0.675613,0,0>
  <Grid=10,10,1>
  <DataSet=TESTBENCH_SPST_SP_FITTING.dat>
  <DataDisplay=TESTBENCH_SPST_SP_FITTING.dpl>
  <OpenDisplay=1>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID -20 -16 SPDT>
  <Line -20 20 40 0 #000080 2 1>
  <Line 20 20 0 -40 #000080 2 1>
  <Line -20 -20 40 0 #000080 2 1>
  <Line -20 20 0 -40 #000080 2 1>
</Symbol>
<Components>
  <GND * 1 340 250 0 0 0 3>
  <Pac P5 1 370 250 -26 40 0 0 "5" 0 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 600 250 0 0 0 1>
  <GND * 1 470 280 0 0 0 0>
  <Pac P6 1 570 250 -26 40 1 2 "6" 0 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 340 410 0 0 0 3>
  <Pac P7 1 370 410 -26 40 0 0 "7" 0 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 600 410 0 0 0 1>
  <Pac P8 1 570 410 -26 40 1 2 "8" 0 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <SPfile X2 5 470 250 -26 -44 0 0 "F5P16C.S2P" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <R R2 5 470 410 -26 15 0 0 "4 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C2 4 270 560 -26 17 0 0 "7.5 fF" 1 "" 0 "neutral" 0>
  <TLIN Line2 0 350 560 -26 20 0 0 "50 Ohm" 1 "1 mm" 1 "0 dB" 0 "26.85" 0>
  <BOND Line3 0 430 560 -26 9 0 0 "3 mm" 1 "50 um" 1 "2 mm" 1 "0.022e-6" 0 "1" 0 "FREESPACE" 0 "Subst1" 1 "26.85" 0>
  <TLIN Line1 0 190 560 -26 20 0 0 "50 Ohm" 1 "1 mm" 1 "0 dB" 0 "26.85" 0>
  <BOND Line4 0 110 560 -26 9 0 0 "3 mm" 1 "50 um" 1 "2 mm" 1 "0.022e-6" 0 "1" 0 "FREESPACE" 0 "Subst1" 1 "26.85" 0>
  <GND * 0 540 560 0 0 0 1>
  <Pac P9 0 510 560 -26 40 1 2 "9" 0 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 0 0 560 0 0 0 3>
  <Pac P10 0 30 560 -26 40 0 0 "10" 0 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <SUBST Subst1 0 650 560 -30 24 0 0 "11.7" 1 "0.5 mm" 1 "3.5 um" 1 "0.006" 1 "0.022e-6" 1 "0.15e-6" 1>
  <Eqn Eqn3 1 690 250 -32 17 0 0 "S55_dB=dB(S[5,5])" 1 "S55_Deg=rad2deg(unwrap(phase(S[5,5])))" 1 "S56_dB=dB(S[5,6])" 1 "S56_Deg=rad2deg(unwrap(phase(S[5,6])))" 1 "S65_dB=dB(S[6,5])" 1 "S65_Deg=rad2deg(unwrap(phase(S[6,5])))" 1 "S66_dB=dB(S[6,6])" 1 "S66_Deg=rad2deg(unwrap(phase(S[6,6])))" 1 "yes" 0>
  <Eqn Eqn1 1 690 -10 -32 17 0 0 "S11_dB=dB(S[1,1])" 1 "S11_Deg=rad2deg(unwrap(phase(S[1,1])))" 1 "S12_dB=dB(S[1,2])" 1 "S12_Deg=rad2deg(unwrap(phase(S[1,2])))" 1 "S21_dB=dB(S[2,1])" 1 "S21_Deg=rad2deg(unwrap(phase(S[2,1])))" 1 "S22_dB=dB(S[2,2])" 1 "S22_Deg=rad2deg(unwrap(phase(S[2,2])))" 1 "yes" 0>
  <Eqn Eqn4 1 1010 250 -32 17 0 0 "S77_dB=dB(S[7,7])" 1 "S77_Deg=rad2deg(unwrap(phase(S[7,7])))" 1 "S78_dB=dB(S[7,8])" 1 "S78_Deg=rad2deg(unwrap(phase(S[7,8])))" 1 "S87_dB=dB(S[8,7])" 1 "S87_Deg=rad2deg(unwrap(phase(S[8,7])))" 1 "S88_dB=dB(S[8,8])" 1 "S88_Deg=rad2deg(unwrap(phase(S[8,8])))" 1 "yes" 0>
  <Eqn Eqn2 1 1010 -10 -32 17 0 0 "S33_dB=dB(S[3,3])" 1 "S33_Deg=rad2deg(unwrap(phase(S[3,3])))" 1 "S34_dB=dB(S[3,4])" 1 "S34_Deg=rad2deg(unwrap(phase(S[3,4])))" 1 "S43_dB=dB(S[4,3])" 1 "S43_Deg=rad2deg(unwrap(phase(S[4,3])))" 1 "S44_dB=dB(S[4,4])" 1 "S44_Deg=rad2deg(unwrap(phase(S[4,4])))" 1 "yes" 0>
  <.DC DC1 1 320 -30 0 43 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.SP SP1 1 490 -30 0 74 0 0 "lin" 1 "0.1 GHz" 1 "20 GHz" 1 "200" 1 "yes" 1 "1" 0 "2" 0 "no" 0 "no" 0>
  <GND * 1 -10 250 0 0 0 3>
  <Pac P1 1 20 250 -26 40 0 0 "1" 0 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 250 250 0 0 0 1>
  <GND * 1 120 280 0 0 0 0>
  <Pac P2 1 220 250 -26 40 1 2 "2" 0 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 250 410 0 0 0 1>
  <Pac P4 1 220 410 -26 40 1 2 "4" 0 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <SPfile X1 5 120 250 -26 -44 0 0 "F5P16O.S2P" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <C C1 5 120 410 -26 17 0 0 "7.5 fF" 1 "" 0 "neutral" 0>
  <GND * 1 -10 410 0 0 0 3>
  <Pac P3 1 20 410 -26 40 0 0 "3" 0 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
</Components>
<Wires>
  <400 250 440 250 "" 0 0 0 "">
  <500 250 540 250 "" 0 0 0 "">
  <500 410 540 410 "" 0 0 0 "">
  <400 410 440 410 "" 0 0 0 "">
  <300 560 320 560 "" 0 0 0 "">
  <380 560 400 560 "" 0 0 0 "">
  <220 560 240 560 "" 0 0 0 "">
  <140 560 160 560 "" 0 0 0 "">
  <460 560 480 560 "" 0 0 0 "">
  <60 560 80 560 "" 0 0 0 "">
  <50 250 90 250 "" 0 0 0 "">
  <150 250 190 250 "" 0 0 0 "">
  <150 410 190 410 "" 0 0 0 "">
  <50 410 90 410 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Rectangle 300 200 340 300 #000000 0 1 #c0c0c0 1 0>
  <Rectangle -50 200 340 300 #000000 0 1 #c0c0c0 1 0>
  <Text 300 170 12 #000000 0 "ON-STATE">
  <Text -50 170 12 #000000 0 "OFF-STATE">
  <Text -40 90 6 #000000 0 "Fitting the ON-state and OFF-state S-Parameters of a Measured RADANT RMSW220 RF MEMS SPDT Switch\nRF MEMS for Radar Tutorial\nK. Van Caekenberghe\nIEEE International Radar Conference, Washington D.C., May 14, 2010\n(Tested on Qucs 0.0.15)">
</Paintings>
