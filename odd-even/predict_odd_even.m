addpath('../../neural-network-octave');

load('odd-even.mat');

% 4 => [1; 0]
prediction = predict([0 1 0 0]', cellW);
prediction

% 11 => [0; 1]
prediction = predict([1 0 1 1]', cellW);
prediction
