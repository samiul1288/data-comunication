fs=10000;
t=0:1/fs:0.01;
fc=1000;
fm=100;
am=1;
ac=1;
kf=2*pi*75;
% Message signal
m=am*cos(2*pi*fm*t);
% Integrate the message signal
int_m=cumsum(m)/fs;

% FM signal
s_fm= ac*cos(2*pi*fc*t +kf*int_m);
figure;
subplot(3,1,1);
plot(t,m);
title('Message Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,2);
plot(t,cos(2*pi*fc*t));
title('Carrier Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,3);
plot(t, s_fm);
title('FM Signal');
xlabel('Time (s)');
ylabel('Amplitude');