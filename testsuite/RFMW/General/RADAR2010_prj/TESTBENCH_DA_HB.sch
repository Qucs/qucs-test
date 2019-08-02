<Qucs Schematic 0.0.15>
<Properties>
  <View=146,11,1114,644,0.914692,0,0>
  <Grid=10,10,1>
  <DataSet=TESTBENCH_DA_HB.dat>
  <DataDisplay=TESTBENCH_DA_HB.dpl>
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
  <GND * 1 200 340 0 0 0 0>
  <GND * 1 520 340 0 0 0 0>
  <Pac P1 1 200 310 18 -26 0 1 "1" 0 "50 Ohm" 1 "P_S" 1 "3 GHz" 1 "26.85" 0>
  <IProbe Pr1 1 220 460 16 -26 0 1>
  <GND * 1 220 550 0 0 0 0>
  <Eqn Eqn3 1 330 410 -32 17 0 0 "VDD_MESFET_DA=10" 1 "VDD_MOSFET_DA=6" 1 "yes" 0>
  <R R1 5 520 310 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Vdc V1 5 220 520 18 -26 0 1 "VDD_MOSFET_DA" 1>
  <Sub MOSFET_DA 1 370 280 -20 31 0 0 "SUBCIRCUIT_MOSFET_DA.sch" 1>
  <.DC DC1 1 210 50 0 44 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.SW SW1 1 580 50 0 71 0 0 "HB1" 1 "list" 1 "P_S" 1 "-50 dBm" 0 "30 dBm" 0 "[-20 dBm; -10 dBm; 0 dBm; 10 dBm; 20 dBm]" 1>
  <.HB HB1 1 370 50 0 73 0 0 "3 GHz" 1 "4" 1 "1 pA" 0 "1 uV" 0 "0.001" 0 "100" 1>
  <Eqn Eqn2 1 510 410 -32 17 0 0 "P_IN=1/(4*50)*real(V_IN.Vb*conj(V_IN.Vb))" 1 "P_IN_dBm=10*log10(P_IN)+30" 1 "P_OUT=1/(4*50)*real(V_OUT.Vb*conj(V_OUT.Vb))" 1 "P_OUT_dBm=10*log10(P_OUT)+30" 1 "G_dB=PlotVs(P_OUT_dBm[:,1],P_S)-PlotVs(P_IN_dBm[:,1],P_S)" 1 "HD2_dBc=PlotVs(P_OUT_dBm[:,2],P_S)-PlotVs(P_IN_dBm[:,1],P_S)" 1 "HD3_dBc=PlotVs(P_OUT_dBm[:,3],P_S)-PlotVs(P_IN_dBm[:,1],P_S)" 1 "yes" 0>
</Components>
<Wires>
  <400 280 520 280 "" 0 0 0 "">
  <200 280 340 280 "" 0 0 0 "">
  <200 280 200 280 "V_IN" 230 250 0 "">
  <220 430 220 430 "VDD" 250 400 0 "">
  <520 280 520 280 "V_OUT" 550 250 0 "">
  <370 250 370 250 "VDD" 400 220 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 660 360 6 #000000 0 "DC-10 GHz 0.5 um GaAs MESFET Distributed Amplifier\nRF MEMS for Radar Tutorial\nK. Van Caekenberghe\nIEEE International Radar Conference, Washington D.C., May 14, 2010\n(Tested on Qucs 0.0.15)">
</Paintings>
