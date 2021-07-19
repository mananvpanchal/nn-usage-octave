addpath('../../neural-network-octave');

load('training-set.mat');
load('number-recognition-03-lambda.mat');

p = zeros(size(X_train, 1), 1);

for mi = 1:4900
    prediction = predict(X_train(mi, :)', cellW);
    [val, idx] = max(prediction);
    p(mi, :) = idx;
end

printf('Cost: ')
printf('\nTraining Set Accuracy: %f\n', mean(double(p == y_train)) * 100);
