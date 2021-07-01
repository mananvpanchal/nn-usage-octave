addpath('../../neural-network-octave');

X = [0 0; 0 1; 1 0; 1 1];
y = [0; 1; 1; 0];

cellW = randomWeights(X, [3], y);

[ J, cellW ] = neuralNetwork(X, cellW, y, 500, 8.2);

save('xor-gate.mat', 'cellW', 'J');

printf('Trained!!!\n');
