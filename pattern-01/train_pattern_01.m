addpath('../../neural-network-octave');

eval('x_data');
eval('y_data');

cellW = randomWeights(X, [40; 8], y);

[ J, cellW ] = neuralNetwork(X, cellW, y, 5000, 0.2);

save('pattern-01.mat', 'cellW', 'J');

printf('Trained!!!\n');
