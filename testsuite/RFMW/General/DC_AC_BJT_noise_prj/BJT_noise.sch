<Qucs Schematic 0.0.20>
<Properties>
  <View=-50,0,933,633,0.826446,0,0>
  <Grid=10,10,1>
  <DataSet=BJT_noise.dat>
  <DataDisplay=BJT_noise.dpl>
  <OpenDisplay=1>
  <Script=BJT_noise.m>
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
  <GND * 5 390 350 0 0 0 0>
  <IProbe Ib 1 270 220 -25 -7 0 3>
  <R R2 1 390 130 15 -26 0 1 "200 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <IProbe Iout 1 390 200 34 -9 0 3>
  <Vdc Va 1 180 130 -49 -18 0 1 "5 V" 1>
  <.AC AC1 1 160 450 0 46 0 0 "log" 1 "1 Hz" 1 "10 GHz" 1 "400" 1 "yes" 1>
  <GND * 5 180 180 0 0 0 0>
  <.DC DC1 1 -30 450 0 46 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "yes" 0 "150" 0 "yes" 0 "none" 0 "CroutLU" 0>
  <Eqn BTJ_Biasing 1 0 90 -40 16 0 0 "gm=Q1.gm" 1 "Rpi=1 / Q1.gpi" 1 "Gv=gm * 200" 1 "yes" 0>
  <Eqn Noise 1 0 260 -40 16 0 0 "Inb_shotnoise=sqrt(2*1.6e-19*Ib.I)" 1 "Vnb_shotnoise=Inb_shotnoise * Rpi" 1 "Vnout_Ic_shotnoise=sqrt(2 * 1.6e-19 * Iout.I )* 200" 1 "Vnout_Ib_shotnoise=Vnb_shotnoise * Gv" 1 "Vnout_R2_thermal=sqrt(4*kB*298*200)" 1 "fc=0.1e-15/(2*1.6e-19)" 1 "yes" 0>
  <R R1 1 270 130 15 -26 0 1 "47 k" 1 "25" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <_BJT Q1 1 390 270 8 -26 0 0 "npn" 1 "1e-16" 1 "1" 1 "1" 0 "0" 0 "0" 0 "0" 1 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "100" 1 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "100" 1 "0.1 f" 0 "1.0" 0 "1.0" 0 "0" 0 "2" 0 "10" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
</Components>
<Wires>
  <390 160 390 170 "" 0 0 0 "">
  <390 70 390 100 "" 0 0 0 "">
  <180 70 180 100 "" 0 0 0 "">
  <180 70 270 70 "" 0 0 0 "">
  <270 160 270 190 "" 0 0 0 "">
  <270 70 390 70 "" 0 0 0 "">
  <270 70 270 100 "" 0 0 0 "">
  <180 160 180 180 "" 0 0 0 "">
  <270 250 270 270 "" 0 0 0 "">
  <270 270 360 270 "Vb" 320 290 81 "">
  <390 230 390 240 "" 0 0 0 "">
  <390 300 390 350 "" 0 0 0 "">
  <390 240 390 240 "Vout" 440 220 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 130 30 14 #000000 0 "Simple Flicker Noise Simulation">
  <Text 500 50 10 #000000 0 "To see the Flicker Noise plot a cartesian graph \nwith Vb.vn and Vout.vn (in bi-log scale).\n">
  <Text 280 510 10 #000000 0 "We have to turn on the noise simulation \nin the "Properties" tab of the AC simulation,\notherwise the noise is not calculated.\n">
  <Text 500 220 10 #000000 0 "Often we don't know the Kf (Flicker coeff.) from \nthe datasheet, but if we know the noise corner \nfrequency we can calculate an approximation:\n\nKf = 2 q fc * Ib^(Af-1)\n\nwhere: \n    - Af is the flicker current exponent (tipically 1 ~ 2)\n    - q is the electron charge\n    - fc is the noise corner frequency\n    - Ib is the base current\n\nThis expression is derived from: 2 q Ib = Kf (Ib^Af) / fc\n\n">
  <Text 500 110 10 #000000 0 "Note that the noise is dominated by the BJT base \ncurrent noise (shot + flicker) while the collector shot noise \n(Vnout_Ic_shot) is at least one order of magnitude lesser\nand R1 and R2 (Vnout_R2_thermal) noises are even smaller.">
</Paintings>
