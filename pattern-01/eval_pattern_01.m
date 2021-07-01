addpath('../../neural-network-octave');

load('pattern-01.mat');

printf('Cost : %f\n', J);

eval('x_data');
eval('y_data');

evaluation(X, cellW, y);
