<Qucs Schematic 0.0.15>
<Properties>
  <View=-270,1,880,688,0.842795,0,0>
  <Grid=10,10,1>
  <DataSet=TESTBENCH_SPDT_HB.dat>
  <DataDisplay=TESTBENCH_SPDT_HB.dpl>
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
  <GND * 1 -40 300 0 0 0 3>
  <Sub SPDT1 1 90 300 -26 48 0 0 "SUBCIRCUIT_MESFET_SPDT.sch" 1 "0" 1>
  <.DC DC1 1 -50 480 0 43 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.HB HB1 1 -50 40 0 73 0 0 "3 GHz" 1 "5" 1 "1 pA" 0 "1 uV" 0 "0.001" 0 "50" 1>
  <.SW SW1 1 160 40 0 72 0 0 "HB1" 1 "list" 1 "P_S" 1 "-50 dBm" 0 "30 dBm" 0 "[-20 dBm; -10 dBm; 0 dBm; 10 dBm; 20 dBm]" 1>
  <Eqn Eqn1 1 170 490 -32 17 0 0 "P_IN=1/(4*50)*real(V_IN.Vb*conj(V_IN.Vb))" 1 "P_IN_dBm=10*log10(P_IN)+30" 1 "P_OUT=1/(4*50)*real(V_OUT.Vb*conj(V_OUT.Vb))" 1 "P_OUT_dBm=10*log10(P_OUT)+30" 1 "G_dB=PlotVs(P_OUT_dBm[:,1],P_S)-PlotVs(P_IN_dBm[:,1],P_S)" 1 "HD2_dBc=PlotVs(P_OUT_dBm[:,2],P_S)-PlotVs(P_IN_dBm[:,1],P_S)" 1 "HD3_dBc=PlotVs(P_OUT_dBm[:,3],P_S)-PlotVs(P_IN_dBm[:,1],P_S)" 1 "yes" 0>
  <GND * 1 220 270 0 0 0 1>
  <GND * 1 220 330 0 0 0 1>
  <R R1 5 190 270 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R2 5 190 330 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Pac P1 1 -10 300 -26 -4 0 0 "1" 0 "50 Ohm" 1 "P_S" 1 "3 GHz" 1 "26.85" 0>
</Components>
<Wires>
  <20 300 60 300 "" 0 0 0 "">
  <120 330 160 330 "" 0 0 0 "">
  <120 270 160 270 "V_OUT" 160 220 15 "">
  <20 300 20 300 "V_IN" 50 270 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text -60 420 6 #000000 0 "RF MEMS for Radar Tutorial\nK. Van Caekenberghe\nIEEE International Radar Conference, Washington D.C., May 14, 2010\n(Tested on Qucs 0.0.15)">
</Paintings>
