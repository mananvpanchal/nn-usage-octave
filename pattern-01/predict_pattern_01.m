addpath('../../neural-network-octave');

load('pattern-01.mat');

printf('Cost : %f\n', J);

eval('x_test_data');
eval('y_test_data');

evaluation(X_test, cellW, y_test);


printf('Not working properly... :(\n');
