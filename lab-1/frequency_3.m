%important 
%"A signal consists of sine waves at 50 Hz, 150 Hz, and 300 Hz.
%Using FFT, represent the signal in the frequency domain and 
%identify its frequency components."
Fs= 800;
t=0:1/Fs:1-1/Fs
x = sin(2*pi*50*t) + 0.5*sin(2*pi*150*t)+ 0.25*sin(2*pi*300*t);
N= length(x);
X=fft(x);
f=(0:N-1)*(Fs/N);
amplitude =abs(X)/N;
figure;
plot(f,amplitude);
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Frequency Domain Representation');
xlim([0 Fs/2]);
grid on;