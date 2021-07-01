addpath('../../neural-network-octave');

load('or-gate.mat');

printf('Cost : %f\n', J);

X = [0 0; 0 1; 1 0; 1 1];
y = [0; 1; 1; 1];

evaluation(X, cellW, y);

% prediction = predict([0 0]', cellW);
% prediction
%
% prediction = predict([0 1]', cellW);
% prediction
% 
% prediction = predict([1 0]', cellW);
% prediction
%
% prediction = predict([1 1]', cellW);
% prediction
