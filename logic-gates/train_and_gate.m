addpath('../../neural-network-octave');

X = [0 0; 0 1; 1 0; 1 1];
y = [0; 0; 0; 1];

cellW = randomWeights(X, [3], y);

[ J, cellW ] = neuralNetwork(X, cellW, y, 100, 10.8);

save('and-gate.mat', 'cellW', 'J');

printf('Trained!!!\n');
