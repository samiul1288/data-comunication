clc;
clear;

% Input binary data
data = [1 0 1 1 0 0 1 0];

% Bit and sampling parameters
bit_duration = 1;     % seconds
fs = 500;             % samples per second
N = length(data);
samples_per_bit = fs * bit_duration;
half_samples = samples_per_bit / 2;

% Time vector for full signal
time = 0:1/fs:(N*bit_duration) - 1/fs;

% Initialize Manchester waveform
manchester = [];

for i = 1:N
    if data(i) == 0
        % Bit 0: High to Low
        bit_wave = [ones(1, half_samples), -ones(1, half_samples)];
    else
        % Bit 1: Low to High
        bit_wave = [-ones(1, half_samples), ones(1, half_samples)];
    end
    manchester = [manchester bit_wave];
end

% Plot Manchester waveform
figure;
plot(time, manchester, 'LineWidth', 2);
axis([0 N*bit_duration -1.5 1.5]);
grid on;
xlabel('Time (s)');
ylabel('Amplitude (V)');
title('Polar Biphase (Manchester) Line Coding');
xticks(0:bit_duration:N);
yticks([-1 0 1]);