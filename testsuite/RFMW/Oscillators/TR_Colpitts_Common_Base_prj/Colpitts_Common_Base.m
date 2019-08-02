close all
clc
data = loadQucsDataSet('Colpitts_Common_Base.dat');
RF = getQucsVariable(data, 'Output.Vt');
time = getQucsVariable(data, 'time');
R_LOAD = getQucsVariable(data, 'RL');
T = time(2)-time(1);
fs = 1/T;
N = length(time);

%Prepare freq axis
f_axis = linspace(-fs/2, fs/2, N);



RF_spectrum = fftshift(fft(RF))/N;

%Remove the left side of the spectrum
RF_spectrum = RF_spectrum(ceil(N/2):end);%Voltage spectrum

%Calculate power spectrum
P_spectrum = abs(RF_spectrum).^2/R_LOAD;

%Convert the power spectrum to dBm
P_spectrum_dBm = 10*log10(P_spectrum) + 30;


f_axis = f_axis(ceil(N/2):end)*1e-6;%MHz

%Plot voltage spectrum
plot(f_axis, P_spectrum_dBm, 'o-b')
grid on;
% Plot settings
f1 = 6.5;
f2 = 8;
ymin = -40;
ymax = 10;

axis([f1, f2, ymin, ymax])
set(gca, 'xtick', f1:0.1:f2)
set(gca, 'ytick', ymin:5:ymax)
legend('Pout')
title('Common base Colpitts oscillator')
ylabel('Pout (dBm)')
xlabel('freq (MHz)')

%Get the fundamental frequency
[val, f_index] = max(abs(RF_spectrum));
display(sprintf('f_0 %1.3g MHz', f_axis(f_index)))
