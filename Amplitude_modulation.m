Fs=10000;
t=0:1/Fs:0.01;
fc =1000;
fm=100;
Am= 1;
Ac= 1;
mu=0.5;
m=Am*cos(2*pi*fm*t);
c=Ac*cos(2*pi*fc*t);
s=(1+mu*cos(2*pi*fm*t)).*c;
figure;
subplot(3,1,1);
plot(t,m);
title('Message Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,2);
plot(t,c);
title('Carrier Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,3);
plot(t,s);
title('AM Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');