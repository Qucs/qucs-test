<Qucs Schematic 0.0.12>
<Properties>
  <View=76,-59,1020,512,1.15528,0,14>
  <Grid=10,10,1>
  <DataSet=radiometer.dat>
  <DataDisplay=radiometer.dpl>
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
  <GND * 1 210 50 0 0 0 0>
  <GND * 1 470 210 0 0 0 0>
  <GND * 1 590 240 0 0 0 0>
  <GND * 1 390 160 0 0 0 0>
  <GND * 1 130 180 0 0 0 0>
  <GND * 1 310 100 0 0 0 0>
  <Pac OutputPort 1 590 210 18 -26 0 1 "2" 0 "50 Ohm" 0 "0 W" 0 "1 GHz" 0 "-273.15" 0>
  <Eqn Tsky 1 220 170 -31 16 0 0 "Tsky_K=10" 1 "Tsky_C=Tsky_K-273.15" 0 "yes" 0>
  <Pac SkyLoad 1 130 150 18 -26 0 1 "1" 0 "50 Ohm" 0 "0 W" 0 "1 GHz" 0 "Tsky_C" 0>
  <Eqn OutputVolts 1 410 260 -31 16 0 0 "outvolts_V=out_sqrtV.vn^2" 1 "Freq_GHz=acfrequency*1e-9" 0 "outvolts_log=10*log10(outvolts_V)" 1 "outvolts_tot_V=sum(outvolts_V)" 1 "yes" 0>
  <.AC SpectralResponse 1 120 250 0 46 0 0 "lin" 0 "35 GHz" 1 "50 GHz" 1 "151" 0 "yes" 0>
  <SPfile FEED_OMT 1 210 20 -26 -59 0 0 "data/feed_horn.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile LNA 1 310 70 -26 -59 0 0 "data/lownoiseamplifier.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile WG 1 390 130 -26 -59 0 0 "data/waveguide.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile DIODE 1 470 180 -26 -59 0 0 "data/diode.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
</Components>
<Wires>
  <500 180 590 180 "out_sqrtV" 484 240 60 "">
  <130 20 180 20 "in" 170 40 30 "">
  <130 20 130 120 "" 0 0 0 "">
  <420 180 440 180 "" 0 0 0 "">
  <420 130 420 180 "" 0 0 0 "">
  <340 130 360 130 "" 0 0 0 "">
  <340 70 340 130 "" 0 0 0 "">
  <240 20 280 20 "fem_in" 210 80 10 "">
  <280 20 280 70 "" 0 0 0 "">
  <420 180 420 180 "bem_in" 390 200 0 "">
  <340 130 340 130 "wg_in" 300 150 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 510 -30 12 #000000 0 "Radiometer Demo\nbuilt by Andrea Zonca\nall input data are fictitious\n\n">
</Paintings>
