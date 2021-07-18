addpath('../neural-network-octave');

load('data.mat');
load('number-recognition-02-lambda.mat');

y_bits = (1 : 10) == y;

idx = floor(5000 * rand(1));

printf('Real value %d\n', y(idx, :));

prediction = predict(X(idx, :)', cellW);

[val, idx] = max(prediction);

printf('prediction %d\n', idx);
