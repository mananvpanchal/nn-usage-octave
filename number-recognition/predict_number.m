addpath('../../neural-network-octave');

load('test-set.mat');
load('number-recognition-03-lambda.mat');

%size(X)
y_bits = (1 : 10) == y_test;

idx = floor(100 * rand(1));
%idx = 50;

idx

realValue = y_test(idx, :);
if(realValue == 10)
  realValue = 0;
end
printf('Real value %d\n', realValue);

%size(X(idx, :))
prediction = predict(X_test(idx, :)', cellW, @displayData);

[val, idx] = max(prediction);

if(idx == 10)
  idx = 0;
end
printf('Prediction %d\n', idx);
