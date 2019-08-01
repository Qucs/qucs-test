<Qucs Schematic 0.0.20>
<Properties>
  <View=76,-47,1123,813,0.692401,0,0>
  <Grid=10,10,1>
  <DataSet=UHF_Amplifier.dat>
  <DataDisplay=UHF_Amplifier.dpl>
  <OpenDisplay=0>
  <Script=UHF_Amplifier.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 5 260 200 0 0 0 0>
  <GND * 5 360 340 0 0 0 0>
  <Pac P1 5 260 170 -86 -9 0 1 "1" 0 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <R R4 5 360 310 19 -6 0 1 "220 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C4 5 310 120 -22 -36 0 0 "C1" 1 "" 0 "neutral" 0>
  <GND * 5 560 210 0 0 0 0>
  <GND * 5 640 340 0 0 0 0>
  <R R3 5 640 310 16 -10 0 1 "270 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R2 5 560 180 15 -7 0 1 "R2" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 5 740 200 0 0 0 0>
  <Pac P2 5 740 170 -39 59 0 1 "2" 0 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <C C3 5 690 120 -19 -34 0 0 "C2" 1 "" 0 "neutral" 0>
  <R R1 5 440 50 -20 -31 0 0 "R1" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <L L1 5 560 50 -24 -32 0 0 "10 nH" 1 "" 0>
  <L L2 5 360 190 -51 -12 0 1 "L2" 1 "" 0>
  <L L3 5 640 190 13 -10 0 1 "L3" 1 "" 0>
  <C C5 5 360 80 18 -10 0 1 ".01 uF" 1 "" 0 "neutral" 0>
  <R R5 5 410 120 -18 15 0 0 "R3" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <.SP SP1 1 190 240 0 78 0 0 "lin" 0 "10 MHz" 1 "500 MHz" 1 "101" 0 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <R R6 5 490 260 -25 13 0 0 "6.8 k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Vnoise V1 1 480 120 -18 21 0 2 "1e-19" 1 "0" 0 "1" 0 "0" 0>
  <Eqn Eqn1 1 840 -10 -30 16 0 0 "Gain_delta=max(dB(S[2,1]))-min(dB(S[2,1]))" 1 "Noise_Fig=20*log10(Vout.vn/4.55e-10)" 1 "Gain_dB=dB(S[2,1])" 1 "Input_RL=dB(S[1,1])" 1 "Input_RL_opt=min(abs(Input_RL))" 1 "Output_RL_opt=min(abs(Output_RL))" 1 "Output_RL=dB(S[2,2])" 1 "yes" 0>
  <.Opt Opt1 0 190 40 0 46 0 0 "Sim=SP1" 0 "DE=3|50|2|20|0.85|1|3|1e-6|10|100" 0 "Var=R3|yes|1.893332E+001|10|30|LIN_DOUBLE" 0 "Var=L3|yes|1.391039E-007|1e-8|2e-7|LIN_DOUBLE" 0 "Var=L2|yes|1.148903E-007|5e-8|5e-7|LIN_DOUBLE" 0 "Var=R2|yes|8.171219E+000|5|12|LIN_DOUBLE" 0 "Var=R1|yes|2.867975E+002|100|500|LIN_DOUBLE" 0 "Var=L1|yes|6.385347E-008|1e-8|1e-7|LIN_DOUBLE" 0 "Var=C1|yes|2.676456E-009|5e-10|7e-9|LIN_DOUBLE" 0 "Var=C2|yes|2.497671E-009|8e-10|3e-9|LIN_DOUBLE" 0 "Goal=Gain_dB|GE|10" 0 "Goal=Input_RL_opt|GE|20" 0 "Goal=Output_RL_opt|GE|20" 0 "Goal=Gain_delta|LE|.3" 0>
  <.AC AC1 1 820 220 0 46 0 0 "lin" 0 "10 MHz" 1 "500 MHz" 1 "101" 0 "yes" 0>
  <Eqn Eqn2 1 1020 230 -24 15 0 0 "C1=2.7e-9" 1 "C2=2.7e-9" 1 "L1=6.4e-8" 1 "L2=1.15e-7" 1 "L3=1.39e-7" 1 "R1=2.7e2" 1 "R2=8.2" 1 "R3=8.2" 1 "yes" 0>
  <SPfile X1 5 560 120 -68 -42 0 0 "./NE02103.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
</Components>
<Wires>
  <360 110 360 120 "" 0 0 0 "">
  <360 260 360 280 "" 0 0 0 "">
  <340 120 360 120 "" 0 0 0 "">
  <260 120 260 140 "" 0 0 0 "">
  <260 120 280 120 "" 0 0 0 "">
  <590 120 640 120 "" 0 0 0 "">
  <640 260 640 280 "" 0 0 0 "">
  <640 120 660 120 "" 0 0 0 "">
  <740 120 740 140 "" 0 0 0 "">
  <720 120 740 120 "" 0 0 0 "">
  <360 50 410 50 "" 0 0 0 "">
  <640 50 640 120 "" 0 0 0 "">
  <590 50 640 50 "" 0 0 0 "">
  <470 50 530 50 "" 0 0 0 "">
  <360 120 360 160 "" 0 0 0 "">
  <360 220 360 260 "" 0 0 0 "">
  <640 120 640 160 "" 0 0 0 "">
  <640 220 640 260 "" 0 0 0 "">
  <360 120 380 120 "" 0 0 0 "">
  <520 260 640 260 "" 0 0 0 "">
  <360 260 460 260 "" 0 0 0 "">
  <510 120 530 120 "" 0 0 0 "">
  <440 120 450 120 "" 0 0 0 "">
  <720 120 720 120 "Vout" 750 50 0 "">
</Wires>
<Diagrams>
  <Rect 180 680 240 160 3 #c0c0c0 1 00 1 -1 0.5 1 0 9 0.5 12 1 -1 1 1 315 0 225 "Frequency, Hz" "" "" "">
	<"Gain_dB" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect 500 680 240 160 3 #c0c0c0 1 00 1 0 1e+08 5e+08 0 -40 10 0.1 1 -1 1 1 315 0 225 "Frequency, Hz" "" "" "">
	<"Input_RL" #0000ff 0 3 0 0 0>
	<"Output_RL" #ff0000 0 3 0 0 0>
  </Rect>
  <Rect 820 680 240 160 3 #c0c0c0 1 00 1 0 1e+08 5e+08 1 13.8909 0.2 14.4497 1 -1 1 1 315 0 225 "Frequency, Hz" "" "" "">
	<"Noise_Fig" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 180 390 12 #000000 0 "Optimization of small signal UHF amplifier for input/output return loss and flat gain response.\nA noise figure estimate is provided for information only and the bias resistors are estimates.\nNoise source, V1, is the estimated noise figure of the transistor at operating bias conditions.\nThe 10 nanohenry inductor is the approximate parasitic inductance of the feedback network.\nTo optimize, disable equation 2 and enable optimization.">
  <Text 180 -20 12 #ff0000 0 "Place desired S-parameter file in C:\\Users\\<user name>\\.qucs\\">
  <Text 600 350 12 #000000 0 "Vcc">
</Paintings>
