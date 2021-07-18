addpath('../../neural-network-octave');

load('pattern-01-lambda.mat');

printf('Cost : %f\n', J);

eval('x_data');
eval('y_data');

pred = evaluation(X, cellW, y);

printf('\nTraining Set Accuracy: %f\n', pred);
