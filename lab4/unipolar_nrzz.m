data =[0 1 0 0 1 0 1 1];
fs=100;
bd=1;
t=0:1/fs:bd-1/fs;
n=length(data);
T=0:1/fs:bd*n-1/fs;
up =[];
for i = 1:n
    if data(i)==1
        up= [up ones(1,length(t))];
    else
        up =[up zeros(1,length(t))];

    end
end
figure;
plot(T,up,'LineWidth',2);
axis([0 bd*n 0 1]);
xlabel('Time (s)');
ylabel('Amplitude');
title('Unipolar NRZ Line Coding');
xticks(0:bd:bd*n)
yticks([0 1])