close all
clc
data = loadQucsDataSet('Diode_Ring_Mixer.dat');
VIF = getQucsVariable(data, 'V_IF.Vt');
VLO = getQucsVariable(data, 'V_LO.Vt');
ILO = getQucsVariable(data, 'LO.It');
VRF = getQucsVariable(data, 'V_RF.Vt');
IRF = getQucsVariable(data, 'RF.It');

time = getQucsVariable(data, 'time');
R_LOAD = getQucsVariable(data, 'RL');
Z0 = getQucsVariable(data, 'Z0');

T = time(2)-time(1);
fs = 1/T;
N = length(time);

%Prepare freq axis
f_axis = linspace(-fs/2, fs/2, N);

RF_spectrum = fftshift(fft(IRF))/N;
IF_spectrum = fftshift(fft(VIF))/N;
LO_spectrum = fftshift(fft(ILO))/N;

%Remove the left side of the spectrum
IF_spectrum = IF_spectrum(ceil(N/2):end);%Voltage spectrum
RF_spectrum = RF_spectrum(ceil(N/2):end);%Current spectrum
LO_spectrum = LO_spectrum(ceil(N/2):end);%Current spectrum

%Calculate power spectrum
P_RF_spectrum = abs(RF_spectrum).^2*Z0;
P_IF_spectrum = abs(IF_spectrum).^2/R_LOAD;
P_LO_spectrum = abs(LO_spectrum).^2*Z0;

%Convert the power spectrum to dBm
P_RF_spectrum_dBm = 10*log10(P_RF_spectrum) + 30;
P_IF_spectrum_dBm = 10*log10(P_IF_spectrum) + 30;
P_LO_spectrum_dBm = 10*log10(P_LO_spectrum) + 30;

f_axis = f_axis(ceil(N/2):end)*1e-3;%kHz

%Plot voltage spectrum
plot(f_axis, P_RF_spectrum_dBm, 'o-b')
hold on
plot(f_axis, P_IF_spectrum_dBm, 'o-r')
plot(f_axis, P_LO_spectrum_dBm, 'o-k')
grid on;
% Plot settings
f1 = 0;
f2 = 15;
ymin = -100;
ymax = 20;

axis([f1, f2, ymin, ymax])
set(gca, 'xtick', f1:1:f2)
set(gca, 'ytick', ymin:5:ymax)
legend('RF', 'IF', 'LO')
title('Diode ring mixer')
ylabel('Pout (dBm)')
xlabel('freq (kHz)')
