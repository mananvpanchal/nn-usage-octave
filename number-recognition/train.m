addpath('../../neural-network-octave');

printf('train set loading...\n');
load('training-set.mat');
printf('train set loaded\n');
load('test-set.mat');
printf('test set loaded\n');

y_bits_train = (1 : 10) == y_train;
y_bits_test = (1 : 10) == y_test;

% ---------------------------------------------
%load('number-recognition-03-lambda.mat');
%printf('parameters loaded');
% ------------- enable above code and disable below to use trained weight for further training -------------
cellW = randomWeights(X_train, [25], y_bits_train);
% -------------------------------------------------------

[ J, cellW ] = neuralNetwork(X_train, cellW, y_bits_train, 50, 1.5, 0.5);

save('number-recognition-03-lambda.mat', 'cellW', 'J');

printf('Trained!!!\n');
% --------------------------------------------------
m = size(X_train, 1);
p = zeros(size(X_train, 1), 1);

for mi = 1:m
    prediction = predict(X_train(mi, :)', cellW);
    [val, idx] = max(prediction);
    p(mi, :) = idx;
end

printf('Cost: %f', J);
printf('\nTraining Set Accuracy: %f\n', mean(double(p == y_train)) * 100);

% -------------------------------------------------------------
p = zeros(size(X_test, 1), 1);
testCount = size(X_test, 1);
for mi = 1:testCount
    prediction = predict(X_test(mi, :)', cellW);
    [val, idx] = max(prediction);
    p(mi, :) = idx;
end

printf('Cost: %f', J);
printf('\nTest Set Accuracy: %f\n', mean(double(p == y_test)) * 100);
