frequency = 2; % Hz
amplitude = 3;
duration = 4; % seconds
samplingRate = 100; % Samples per second
theta=pi;
% Create the time vector
t = 0:1/samplingRate:duration;

% Create the signal
y = amplitude * cos(2 * pi * frequency * t+theta);

% Plot the signal
plot(t, y);
xlabel('Time (s)');
ylabel('Amplitude');
title('Simple cosine Signal with theta');