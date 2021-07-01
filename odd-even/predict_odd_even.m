addpath('../../neural-network');

load('odd-even.mat');

% 4 => [1; 0]
prediction = predict([0 1 0 0]', cellW);
prediction

% 4 => [0; 1]
prediction = predict([1 0 1 1]', cellW);
prediction
