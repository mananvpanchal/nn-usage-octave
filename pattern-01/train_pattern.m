addpath('../../neural-network-octave');

eval('x_data');
eval('y_data');

shuffle = randperm(size(X, 1));

X_shuffle = X(shuffle, :);

y_shuffle = y(shuffle, :);

cellW = randomWeights(X_shuffle, [64, 36, 16], y_shuffle);

[ J, cellW ] = neuralNetwork(X_shuffle, cellW, y_shuffle, 100, 0.8, 0.9);

save('pattern-02.mat', 'cellW', 'J');

printf('Trained!!!\n');


pred = evaluation(X, cellW, y);
printf('\nTraining Set Accuracy: %f\n', pred);


eval('x_test_data');
eval('y_test_data');
pred = evaluation(X_test, cellW, y_test);
printf('Test Set Accuracy: %f\n', pred);
