addpath('../../neural-network-octave');

load('pattern-02.mat');

printf('Cost : %f\n', J);

eval('x_test_data');
eval('y_test_data');

pred = evaluation(X_test, cellW, y_test);

printf('Test Set Accuracy: %f\n', pred);
printf('Not working properly... :(\n');
