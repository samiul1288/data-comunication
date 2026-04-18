a=5;
alpha=2;
d=2;
sr=30;
t=0:1/sr:d;
x=a* exp(-alpha *t);
plot(t, x );
xlabel('Time (s)');
ylabel('Amplitude');
