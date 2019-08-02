<Qucs Schematic 0.0.15>
<Properties>
  <View=55,61,915,663,0.961794,0,0>
  <Grid=10,10,1>
  <DataSet=TESTBENCH_PHASESHIFTER_HB.dat>
  <DataDisplay=TESTBENCH_PHASESHIFTER_HB.dpl>
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
  <GND * 1 120 300 0 0 0 3>
  <GND * 1 420 300 0 0 0 1>
  <.DC DC1 1 110 110 0 44 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Pac P1 1 150 300 -26 18 0 0 "1" 0 "50 Ohm" 1 "P_S" 1 "10 GHz" 1 "26.85" 0>
  <R R1 5 390 300 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Eqn Eqn1 1 150 430 -32 17 0 0 "P_IN=1/(4*50)*real(V_IN.Vb*conj(V_IN.Vb))" 1 "P_IN_dBm=10*log10(P_IN)+30" 1 "P_OUT=1/(4*50)*real(V_OUT.Vb*conj(V_OUT.Vb))" 1 "P_OUT_dBm=10*log10(P_OUT)+30" 1 "G_dB=PlotVs(P_OUT_dBm[:,1],P_S)-PlotVs(P_IN_dBm[:,1],P_S)" 1 "HD2_dBc=PlotVs(P_OUT_dBm[:,2],P_S)-PlotVs(P_IN_dBm[:,1],P_S)" 1 "HD3_dBc=PlotVs(P_OUT_dBm[:,3],P_S)-PlotVs(P_IN_dBm[:,1],P_S)" 1 "yes" 0>
  <.SW SW1 1 500 110 0 73 0 0 "HB1" 1 "list" 1 "P_S" 1 "-50 dBm" 0 "30 dBm" 0 "[-20 dBm; -10 dBm; 0 dBm; 10 dBm; 20 dBm]" 1>
  <Sub SUB1 5 270 300 -26 19 0 0 "SUBCIRCUIT_RFMEMS_PHASESHIFTER.sch" 0 "4" 1>
  <.HB HB1 1 280 110 0 73 0 0 "10 GHz" 1 "5" 1 "1 pA" 0 "1 uV" 0 "0.001" 0 "50" 1>
</Components>
<Wires>
  <180 300 240 300 "" 0 0 0 "">
  <300 300 360 300 "" 0 0 0 "">
  <180 300 180 300 "V_IN" 210 270 0 "">
  <360 300 360 300 "V_OUT" 390 270 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 490 320 6 #000000 0 "RF MEMS Phase Shifter\nRF MEMS for Radar Tutorial\nK. Van Caekenberghe\nIEEE International Radar Conference, Washington D.C., May 14, 2010\n(Tested on Qucs 0.0.15)">
</Paintings>
