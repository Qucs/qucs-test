<Qucs Schematic 0.0.15>
<Properties>
  <View=126,1,875,522,1.09746,0,0>
  <Grid=10,10,1>
  <DataSet=TESTBENCH_DA_SP.dat>
  <DataDisplay=TESTBENCH_DA_SP.dpl>
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
  <GND * 1 200 360 0 0 0 0>
  <GND * 1 520 360 0 0 0 0>
  <.DC DC1 1 290 50 0 44 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.SP SP1 1 460 50 0 74 0 0 "lin" 1 "0.5 GHz" 1 "50 GHz" 1 "496" 1 "yes" 1 "1" 0 "2" 0 "no" 0 "no" 0>
  <IProbe Pr1 1 200 170 16 -26 0 1>
  <GND * 1 200 260 0 0 0 0>
  <Eqn Eqn2 1 310 420 -32 17 0 0 "VDD_MESFET_DA=10" 1 "VDD_MOSFET_DA=6" 1 "yes" 0>
  <Pac P1 1 200 330 18 -26 0 1 "1" 0 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Pac P2 1 520 330 18 -26 0 1 "2" 0 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Vdc V1 5 200 230 18 -26 0 1 "VDD_MESFET_DA" 1>
  <Sub MESFET_DA 1 370 300 -20 31 0 0 "SUBCIRCUIT_MESFET_DA.sch" 1>
  <Eqn Eqn1 1 640 60 -32 17 0 0 "S11_dB=dB(S[1,1])" 1 "S12_dB=dB(S[1,2])" 1 "S21_dB=dB(S[2,1])" 1 "S22_dB=dB(S[2,2])" 1 "RolletStabilityFactor=Rollet(S)" 1 "Determinant=det(S)" 1 "MuStabilityFactor=Mu(S)" 1 "MuPrimeStabilityFactor=Mu2(S)" 1 "yes" 0>
</Components>
<Wires>
  <400 300 520 300 "" 0 0 0 "">
  <200 300 340 300 "" 0 0 0 "">
  <200 140 200 140 "VDD" 230 110 0 "">
  <370 270 370 270 "VDD" 400 240 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 540 440 6 #000000 0 "DC-10 GHz 0.5 um GaAs MESFET Distributed Amplifier\nRF MEMS for Radar Tutorial\nK. Van Caekenberghe\nIEEE International Radar Conference, Washington D.C., May 14, 2010\n(Tested on Qucs 0.0.15)">
</Paintings>
