a=1;
f=5;;
alpha=2;
t=0:0.01:2;
x=a* exp(-alpha*t).*sin(2*pi*f*t);
plot(t,x);

title('Damped Sine Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;