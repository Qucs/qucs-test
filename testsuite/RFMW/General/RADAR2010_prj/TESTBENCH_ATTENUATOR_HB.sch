<Qucs Schematic 0.0.15>
<Properties>
  <View=-245,-19,605,582,0.963394,0,0>
  <Grid=10,10,1>
  <DataSet=TESTBENCH_ATTENUATOR_HB.dat>
  <DataDisplay=TESTBENCH_ATTENUATOR_HB.dpl>
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
  <GND * 1 -180 220 0 0 0 3>
  <GND * 1 120 220 0 0 0 1>
  <.DC DC1 1 -190 30 0 44 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.HB HB1 1 -20 30 0 73 0 0 "3 GHz" 1 "5" 1 "1 pA" 0 "1 uV" 0 "0.001" 0 "50" 1>
  <Pac P1 1 -150 220 -26 18 0 0 "1" 0 "50 Ohm" 1 "P_S" 1 "10 GHz" 1 "26.85" 0>
  <R R1 5 90 220 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Eqn Eqn3 1 -150 350 -32 17 0 0 "P_IN=1/(4*50)*real(V_IN.Vb*conj(V_IN.Vb))" 1 "P_IN_dBm=10*log10(P_IN)+30" 1 "P_OUT=1/(4*50)*real(V_OUT.Vb*conj(V_OUT.Vb))" 1 "P_OUT_dBm=10*log10(P_OUT)+30" 1 "G_dB=PlotVs(P_OUT_dBm[:,1],P_S)-PlotVs(P_IN_dBm[:,1],P_S)" 1 "HD2_dBc=PlotVs(P_OUT_dBm[:,2],P_S)-PlotVs(P_IN_dBm[:,1],P_S)" 1 "HD3_dBc=PlotVs(P_OUT_dBm[:,3],P_S)-PlotVs(P_IN_dBm[:,1],P_S)" 1 "yes" 0>
  <.SW SW2 1 200 30 0 73 0 0 "HB1" 1 "list" 1 "P_S" 1 "-50 dBm" 0 "30 dBm" 0 "[-20 dBm; -10 dBm; 0 dBm; 10 dBm; 20 dBm]" 1>
  <Sub SUB1 5 -30 220 -26 18 0 0 "SUBCIRCUIT_RFMEMS_ATTENUATOR.sch" 0 "4" 1>
</Components>
<Wires>
  <-120 220 -60 220 "" 0 0 0 "">
  <0 220 60 220 "" 0 0 0 "">
  <-120 220 -120 220 "V_IN" -90 190 0 "">
  <60 220 60 220 "V_OUT" 90 190 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 190 240 6 #000000 0 "RF MEMS Attenuator\nRF MEMS for Radar Tutorial\nK. Van Caekenberghe\nIEEE International Radar Conference, Washington D.C., May 14, 2010\n(Tested on Qucs 0.0.15)">
</Paintings>
