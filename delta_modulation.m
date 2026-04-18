clc; clear; close all

fs=200; t=0:1/fs:1; x=sin(2*pi*5*t);
delta=0.2;

x_dm=zeros(size(x)); 
bits=zeros(size(x));

for i=2:numel(x)
    bits(i) = x(i) > x_dm(i-1);                 % 1 if up, 0 if down
    x_dm(i) = x_dm(i-1) + delta*(2*bits(i)-1);  % +delta for 1, -delta for 0
end

plot(t,x); hold on; stairs(t,x_dm);
grid on; title('Delta Modulation'); legend('Original','Reconstruction');
