% Simple Frequency vs Amplitude plot
fs=200;
t=0:1/fs:1-1/fs;
x=sin(2*pi*50*t);
N =length(x);
X=fft(x);
f= (0:N-1)*(fs/N);
amplitude =abs(X)/N;
disp(amplitude);
figure;
plot(f,amplitude);


