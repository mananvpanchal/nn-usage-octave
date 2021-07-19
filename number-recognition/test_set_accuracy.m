addpath('../../neural-network-octave');

load('test-set.mat');
load('number-recognition-03-lambda.mat');

p = zeros(size(X_test, 1), 1);
testCount = size(X_test, 1);
for mi = 1:testCount
    prediction = predict(X_test(mi, :)', cellW);
    [val, idx] = max(prediction);
    p(mi, :) = idx;
end

for mi = 1:testCount
  printf('Y : %d => P: %d\n', y_test(mi), p(mi));
end

printf('Cost: %f', J);
printf('\nTest Set Accuracy: %f\n', mean(double(p == y_test)) * 100);
