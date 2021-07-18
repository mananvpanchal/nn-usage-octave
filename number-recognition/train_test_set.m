load('data.mat');

testCount = 100;

X_train = zeros(size(X));
X_test = zeros(testCount, size(X, 2));

y_train = zeros(size(y));
y_test = zeros(testCount, 1);

m = size(X, 1);

x_idx = randperm(m);

for mi = 1:m
  X_train(mi, :) = X(x_idx(mi), :);
  y_train(mi) = y(x_idx(mi));
end

idx = 1;
for mi = (m - testCount + 1):m
  X_test(idx, :) = X_train(mi, :);
  y_test(idx) = y_train(mi);
  idx = idx + 1;
end

X_train((m - testCount + 1):m, :) = [];
y_train((m - testCount + 1):m, :) = [];

save('training-set.mat', 'X_train', 'y_train');
save('test-set.mat', 'X_test', 'y_test');
