clc;
clear;

% Input binary data
data = [1 0 1 1 0 1 0 0 1];

% Bit and sampling specifications
bit_duration = 1;      % duration of one bit in seconds
fs = 100;              % sampling frequency in Hz
samples_per_bit = fs * bit_duration;

% Time vector for full signal
time = 0:1/fs:(length(data)*bit_duration) - 1/fs;

% Initialize signal
ami = [];
last_polarity = -1;  % Initialize to -1 so first '1' becomes +1

for i = 1:length(data)
    if data(i) == 1
        last_polarity = -last_polarity;  % Alternate polarity
        bit_wave = last_polarity * ones(1, samples_per_bit);
    else
        bit_wave = zeros(1, samples_per_bit);
    end
    ami = [ami bit_wave];
end

% Plotting
figure;
plot(time, ami, 'LineWidth', 2);
axis([0 length(data) * bit_duration -1.5 1.5]);
grid on;
xlabel('Time (s)');
ylabel('Amplitude (V)');
title('Bipolar AMI (Alternate Mark Inversion) Line Coding');
xticks(0:bit_duration:length(data));
yticks([-1 0 1]);