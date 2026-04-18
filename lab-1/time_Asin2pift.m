f=5;
a=3
d=4
sr=100;
t=0:1/sr:d;
y=a*sin(2*pi*f*t);
plot(t,y);
xlabel('Time (s)');
ylabel('Amplitude');
title('Simple Sinusoidal Signal');