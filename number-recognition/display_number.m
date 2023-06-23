
load('test-set.mat');
load('training-set.mat');

idx = floor(100 * rand(1));

idx2 = floor(4900 * rand(1));

displayData(X_test(idx, :)');
displayData(X_train(idx2, :)');
