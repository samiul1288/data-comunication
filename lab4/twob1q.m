data =[0 0 1 1 0 1 1 0];
if mod(length(data),2) ~=0;
    error('input data is wrong');
end;


fs=100;
d=1;
sps=fs*d;
n=length(data)/2;

t= 0:1/fs:n*d-1/fs;
map = containers.Map({'00','01','10','11'} ,[-3,-1,3,1]);
tB=[];
for i =1:2:length(data)
    pair=sprintf('%d%d', data(i), data(i+1));
    level = map(pair);
    tB=[tB level*ones(1,sps)];
end
figure;
plot(t,tB,'LineWidth',2);
axis([0 n*d -3.5 3.5]);
grid on;
xlabel('Time (s)');
ylabel('Amplitude (V)');
title('2B1Q (2 Binary 1 Quaternary) Line Coding');
xticks(0:d:n);
yticks([-3 -1 0 1 3]);