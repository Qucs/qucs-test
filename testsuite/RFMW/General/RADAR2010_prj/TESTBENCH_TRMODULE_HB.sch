<Qucs Schematic 0.0.15>
<Properties>
  <View=310,125,1565,1150,0.564878,0,0>
  <Grid=10,10,1>
  <DataSet=TESTBENCH_TRMODULE_HB.dat>
  <DataDisplay=TESTBENCH_TRMODULE_HB.dpl>
  <OpenDisplay=1>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID -20 -16 SUB>
  <Line -20 20 40 0 #000080 2 1>
  <Line 20 20 0 -40 #000080 2 1>
  <Line -20 -20 40 0 #000080 2 1>
  <Line -20 20 0 -40 #000080 2 1>
</Symbol>
<Components>
  <GND * 0 1500 1040 0 0 0 1>
  <Circulator X20 4 1400 1040 -30 -26 0 1 "50 Ohm" 0 "50 Ohm" 0 "50 Ohm" 0>
  <PShift X22 4 1190 1040 -26 21 0 0 "PHI" 1 "50 Ohm" 0>
  <GND * 0 1020 1040 0 0 0 3>
  <GND * 1 1500 750 0 0 0 1>
  <Circulator X6 5 1400 750 -30 -26 0 1 "50 Ohm" 0 "50 Ohm" 0 "50 Ohm" 0>
  <GND * 1 1020 750 0 0 0 3>
  <Attenuator X25 4 1110 1040 -26 21 1 2 "L" 1 "50 Ohm" 0 "26.85" 0>
  <GND * 0 1500 250 0 0 0 1>
  <Circulator X11 4 1400 250 -30 -26 0 1 "50 Ohm" 0 "50 Ohm" 0 "50 Ohm" 0>
  <PShift X13 4 1270 220 -26 -43 1 0 "PHI" 1 "50 Ohm" 0>
  <GND * 0 1140 220 0 0 0 3>
  <PShift X12 4 1270 280 -26 21 1 2 "PHI" 1 "50 Ohm" 0>
  <GND * 0 1000 280 0 0 0 3>
  <Attenuator X14 4 1110 280 -26 21 1 2 "L" 1 "50 Ohm" 0 "26.85" 0>
  <GND * 0 1500 450 0 0 0 1>
  <Circulator X15 4 1400 450 -30 -26 0 1 "50 Ohm" 0 "50 Ohm" 0 "50 Ohm" 0>
  <PShift X19 4 1030 450 -26 21 0 0 "PHI" 1 "50 Ohm" 0>
  <GND * 0 920 450 0 0 0 3>
  <Attenuator X23 4 1270 480 -26 21 1 2 "L" 1 "50 Ohm" 0 "26.85" 0>
  <Sub LNA4 4 1350 1070 -26 -30 0 2 "SUBCIRCUIT_MESFET_DA.sch" 0>
  <Sub PA4 4 1350 1010 -26 28 0 0 "SUBCIRCUIT_MESFET_DA.sch" 0>
  <Sub SPDT7 4 1270 1040 -26 48 0 0 "SUBCIRCUIT_MESFET_SPDT.sch" 0 "0" 1>
  <GND * 0 1350 980 0 0 0 2>
  <GND * 1 1370 570 0 0 0 2>
  <GND * 0 1270 390 0 0 0 2>
  <GND * 0 1350 190 0 0 0 2>
  <Sub SUB1 5 1370 900 -26 -51 0 2 "SUBCIRCUIT_MESFET_DA.sch" 0>
  <Sub SPDT2 5 1220 870 -119 -26 0 3 "SUBCIRCUIT_MESFET_SPDT.sch" 0 "0" 1>
  <Sub SUB2 5 1220 750 28 -26 0 1 "SUBCIRCUIT_MESFET_DA.sch" 0>
  <Sub SPDT3 5 1220 630 48 -26 0 1 "SUBCIRCUIT_MESFET_SPDT.sch" 0 "1" 1>
  <Sub SUB3 5 1370 600 -26 28 0 0 "SUBCIRCUIT_MESFET_DA.sch" 0>
  <Sub SUB11 4 1350 480 -26 -51 0 2 "SUBCIRCUIT_MESFET_DA.sch" 0>
  <Sub SUB13 4 1190 480 -26 -28 0 2 "SUBCIRCUIT_MESFET_DA.sch" 0>
  <Sub SPDT6 4 1110 450 -26 48 0 0 "SUBCIRCUIT_MESFET_SPDT.sch" 0 "0" 1>
  <Sub SUB12 4 1270 420 -26 28 0 0 "SUBCIRCUIT_MESFET_DA.sch" 0>
  <Sub SUB7 4 1350 280 -26 -51 0 2 "SUBCIRCUIT_MESFET_DA.sch" 0>
  <Sub SUB10 4 1190 280 -26 -28 0 2 "SUBCIRCUIT_MESFET_DA.sch" 0>
  <Sub SUB8 4 1350 220 -26 28 0 0 "SUBCIRCUIT_MESFET_DA.sch" 0>
  <.DC DC1 1 360 190 0 45 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.SW SW1 1 750 190 0 73 0 0 "HB1" 1 "list" 1 "P_S" 1 "-50 dBm" 0 "30 dBm" 0 "[-20 dBm; -10 dBm; 0 dBm; 10 dBm; 20 dBm]" 1>
  <Eqn Eqn6 1 390 350 -32 17 0 0 "P_IN=1/(4*50)*real(V_IN.Vb*conj(V_IN.Vb))" 1 "P_IN_dBm=10*log10(P_IN)+30" 1 "P_OUT=1/(4*50)*real(V_OUT.Vb*conj(V_OUT.Vb))" 1 "P_OUT_dBm=10*log10(P_OUT)+30" 1 "G_dB=PlotVs(P_OUT_dBm[:,1],P_S)-PlotVs(P_IN_dBm[:,1],P_S)" 1 "HD2_dBc=PlotVs(P_OUT_dBm[:,2],P_S)-PlotVs(P_IN_dBm[:,1],P_S)" 1 "HD3_dBc=PlotVs(P_OUT_dBm[:,3],P_S)-PlotVs(P_IN_dBm[:,1],P_S)" 1 "yes" 0>
  <IProbe Pr1 1 590 970 16 -26 0 1>
  <GND * 1 590 1060 0 0 0 0>
  <Vdc V1 5 590 1030 18 -26 0 1 "VDD_MESFET_DA" 1>
  <R R1 5 1050 750 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Attenuator X24 5 1220 690 21 -26 1 3 "10" 1 "50 Ohm" 0 "26.85" 0>
  <PShift X4 5 1220 810 21 -26 0 1 "180" 1 "50 Ohm" 0>
  <Eqn Eqn2 1 400 930 -32 17 0 0 "VDD_MESFET_DA=10" 1 "yes" 0>
  <.HB HB1 1 530 190 0 73 0 0 "3 GHz" 1 "3" 1 "1 pA" 0 "1 uV" 0 "0.001" 0 "50" 1>
  <Pac P1 1 1470 750 -26 -26 1 2 "1" 1 "50 Ohm" 1 "P_S" 1 "3 GHz" 1 "26.85" 0>
</Components>
<Wires>
  <1430 1040 1440 1040 "" 0 0 0 "">
  <1380 1070 1400 1070 "" 0 0 0 "">
  <1300 1070 1320 1070 "" 0 0 0 "">
  <1220 1040 1240 1040 "" 0 0 0 "">
  <1140 1040 1160 1040 "" 0 0 0 "">
  <1120 600 1190 600 "" 0 0 0 "">
  <1120 900 1190 900 "" 0 0 0 "">
  <1430 750 1440 750 "" 0 0 0 "">
  <1400 600 1400 720 "" 0 0 0 "">
  <1250 600 1340 600 "" 0 0 0 "">
  <1250 900 1340 900 "" 0 0 0 "">
  <1400 780 1400 900 "" 0 0 0 "">
  <1080 750 1120 750 "" 0 0 0 "">
  <1120 750 1120 900 "" 0 0 0 "">
  <1120 600 1120 750 "" 0 0 0 "">
  <1430 250 1440 250 "" 0 0 0 "">
  <1380 280 1400 280 "" 0 0 0 "">
  <1380 220 1400 220 "" 0 0 0 "">
  <1300 220 1320 220 "" 0 0 0 "">
  <1220 220 1240 220 "" 0 0 0 "">
  <1140 220 1160 220 "" 0 0 0 "">
  <1300 280 1320 280 "" 0 0 0 "">
  <1220 280 1240 280 "" 0 0 0 "">
  <1140 280 1160 280 "" 0 0 0 "">
  <1060 280 1080 280 "" 0 0 0 "">
  <1430 450 1440 450 "" 0 0 0 "">
  <1380 480 1400 480 "" 0 0 0 "">
  <1300 480 1320 480 "" 0 0 0 "">
  <1300 420 1400 420 "" 0 0 0 "">
  <1220 480 1240 480 "" 0 0 0 "">
  <1140 480 1160 480 "" 0 0 0 "">
  <1140 420 1240 420 "" 0 0 0 "">
  <1060 450 1080 450 "" 0 0 0 "">
  <980 450 1000 450 "" 0 0 0 "">
  <1380 1010 1400 1010 "" 0 0 0 "">
  <1300 1010 1320 1010 "" 0 0 0 "">
  <1430 750 1430 750 "V_IN" 1460 720 0 "">
  <1350 1100 1350 1100 "VDD" 1380 1070 0 "">
  <1370 930 1370 930 "VDD" 1400 900 0 "">
  <1190 750 1190 750 "VDD" 1220 720 0 "">
  <1350 510 1350 510 "VDD" 1380 480 0 "">
  <1190 510 1190 510 "VDD" 1220 480 0 "">
  <1350 310 1350 310 "VDD" 1380 280 0 "">
  <1190 310 1190 310 "VDD" 1220 280 0 "">
  <1080 750 1080 750 "V_OUT" 1110 720 0 "">
  <590 940 590 940 "VDD" 620 910 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 360 570 12 #000000 0 "Notes:\n- Limiter not included in Rx leg.\n- Please, replace ideal attenuator and phase shifter with self-designed attenuator and phase shifter.\n- Please, disconnect VDD supply voltage from PA in RX mode, and from LNAs in Tx mode.">
  <Text 360 770 6 #000000 0 "S-Band 0.5 um GaAs MESFET T/R Module for Pulse-Doppler Radar\nRF MEMS for Radar Tutorial\nK. Van Caekenberghe\nIEEE International Radar Conference, Washington D.C., May 14, 2010\n(Tested on Qucs 0.0.15)">
</Paintings>
