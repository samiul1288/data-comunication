data = [1  0 1 0 1  1 0 0];
d=1;
fs=100;
t= 0:1/fs:d-1/fs;
n=length(data);
T=0:1/fs:n*d-1/fs;
p =  [];
for i =1:n
    if  data(i)  == 0;
p=[p ones(1,  length(t))];
    else
        p=[p -ones(1,length(t))];
    end
end
figure;
plot(T,p,'LineWidth',2);
axis([0 n*d  -1.5  1.5]);
xlabel('Time  (t)');
ylabel('Amplitude(v)');
title('polar NRZ');
xticks(0:d:n);
yticks([ -1 0 1]);