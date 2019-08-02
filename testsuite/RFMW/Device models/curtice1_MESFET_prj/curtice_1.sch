<Qucs Schematic 0.0.12>
<Properties>
  <View=-167,-127,1490,589,1,0,0>
  <Grid=10,10,1>
  <DataSet=curtice_1.dat>
  <DataDisplay=curtice_1.dpl>
  <OpenDisplay=1>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.PortSym -30 0 2 0>
  <Line -30 0 20 0 #000080 2 1>
  <Line -10 -20 0 40 #000080 2 1>
  <Line 0 40 0 -30 #000080 2 1>
  <Line 0 -10 0 -30 #000080 2 1>
  <.ID 20 -46 Curtice "1=RG=1m=external gate resistance" "1=RD=1m=external drain resistance" "1=RS=1m=external source resistance" "1=VBR=10e10=reverse GD resp. GS breakdown voltage" "1=LG=0=external gate inductance" "1=LD=0=external drain inductance" "1=LS=0=external source inductance" "1=IS=10f=diode saturation current" "1=N=1=diode emission coefficient" "1=XTI=0=diode saturation current temperature coefficient" "1=EG=1.11=diode energy gap" "1=Beta=3m=transconductance parameter" "1=Lambda=40m=channel length modulation parameter for quadr. model" "1=VT0=-6=quadr. model gate threshold voltage" "1=Temp=27=simulation temperature" "1=Alpha=0.8=coefficient of Vds in tanh function for quadr. model" "1=CDS=300f=interelectrode drain-source bias-independent capacitance" "1=TAU=10p=internal time delay from drain to source" "1=RIN=1m=series res. to CGS" "1=CGS=300f=interelectrode gate-source cap." "1=CGD=300f=interelectrode gate-drain cap." "1=Tnom=27=temperature at which model parameter were extracted">
  <.PortSym 0 -40 3 0>
  <.PortSym 0 40 1 0>
  <Line -10 -10 10 0 #000080 2 1>
  <Line -10 10 10 0 #000080 2 1>
  <Line -5 35 10 -10 #000080 2 1>
</Symbol>
<Components>
  <R Rs 1 70 360 -26 15 0 0 "RS" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <L Ls 1 -10 360 -26 10 0 0 "LS" 1 "" 0>
  <Port Source 1 -120 360 -23 12 0 0 "1" 1 "analog" 0>
  <R Rin 1 30 270 -26 15 0 0 "RIN" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <EDD D2 1 100 130 -50 -81 1 2 "explicit" 0 "1" 0 "0" 1 "CGD*V1" 1>
  <Port Drain 1 -120 130 -23 -44 1 0 "3" 1 "analog" 0>
  <R Rd 1 10 130 -26 -47 1 0 "RD" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <L Ld 1 -70 130 -26 10 0 0 "LD" 1 "" 0>
  <R Rg 1 150 80 15 -26 0 1 "RG" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <L Lg 1 150 10 10 -26 0 1 "LG" 1 "" 0>
  <Port Gate 1 150 -20 -58 -23 0 3 "2" 1 "analog" 0>
  <Eqn Eqn2 1 280 110 -32 16 0 0 "TR=TK/TnK" 1 "IsT=IS*exp(XTI/N*ln(TR) - EG/N/Vt*(1-TR))" 1 "yes" 0>
  <EDD D1 1 90 220 126 -26 0 3 "explicit" 0 "4" 0 "V1<-VBR+50*Vt ? -IsT*(1+exp(-(VBR+V1)/Vt)) + GMIN*V1 : 0" 1 "0" 1 "V1>=-VBR+50*Vt && V1<-5*Vt ? -IsT+GMIN*V1 : V1>=-5*Vt ? IsT*(exp(V1/(N*Vt))-1) + GMIN*V1 : 0" 1 "0" 1 "V1-VT0>0 ? Beta*(V1-VT0)^2*(1+Lambda*V3)*tanh(Alpha*V3) : 0" 1 "CDS*V3 + TAU*I3" 1 "0" 1 "CGS*V4" 1>
  <Eqn Eqn1 1 280 -30 -32 16 0 0 "Vt=kB/q*TK" 1 "GMIN=1e-12" 1 "TK=Temp+273.15" 1 "TnK=Tnom+273.15" 1 "yes" 0>
</Components>
<Wires>
  <60 250 60 270 "" 0 0 0 "">
  <180 250 180 270 "" 0 0 0 "">
  <60 270 120 270 "" 0 0 0 "">
  <120 270 180 270 "" 0 0 0 "">
  <120 250 120 270 "" 0 0 0 "">
  <120 170 120 190 "" 0 0 0 "">
  <180 170 180 190 "" 0 0 0 "">
  <120 170 150 170 "" 0 0 0 "">
  <150 170 180 170 "" 0 0 0 "">
  <0 250 0 270 "" 0 0 0 "">
  <0 170 120 170 "" 0 0 0 "">
  <0 170 0 190 "" 0 0 0 "">
  <120 270 120 360 "" 0 0 0 "">
  <100 360 120 360 "" 0 0 0 "">
  <20 360 40 360 "" 0 0 0 "">
  <-120 360 -40 360 "" 0 0 0 "">
  <150 130 150 170 "" 0 0 0 "">
  <130 130 150 130 "" 0 0 0 "">
  <60 130 60 190 "" 0 0 0 "">
  <60 130 70 130 "" 0 0 0 "">
  <40 130 60 130 "" 0 0 0 "">
  <-40 130 -20 130 "" 0 0 0 "">
  <-120 130 -100 130 "" 0 0 0 "">
  <150 110 150 130 "" 0 0 0 "">
  <150 40 150 50 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
