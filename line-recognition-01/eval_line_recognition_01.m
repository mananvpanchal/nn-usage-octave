addpath('../../neural-network');

load('line-recognition-01.mat');

X = [[1 0 0 1 0 0 0 0 0]; % vertical (upper left)
[0 1 0 0 1 0 0 0 0]; % vertical (upper center)
[0 0 1 0 0 1 0 0 0]; % vertical (upper right)
[0 0 0 1 0 0 1 0 0]; % vertical (lower left)
[0 0 0 0 1 0 0 1 0]; % vertical (lower center)
[1 1 0 0 0 0 0 0 0]; % horizontal (upper left)
[0 0 0 1 1 0 0 0 0]; % horizontal (center left)
[0 0 0 0 0 0 1 1 0]; % horizontal (lower left)
[0 1 1 0 0 0 0 0 0]; % horizontal (upper right)
[0 0 0 0 1 1 0 0 0] % horizontal (center right)
];

y = [[1 0]; [1 0]; [1 0]; [1 0]; [1 0]; % vertical
[0 1]; [0 1]; [0 1]; [0 1]; [0 1]]; % horizontal

p = zeros(size(X, 1), 1);

for mi = 1:10
    prediction = predict(X(mi, :)', cellW);
    if prediction(1) == y(mi, 1) && prediction(2) == y(mi, 2)
      p(mi, :) = 1;
    end;
end

fprintf('\nTraining Set Accuracy: %f\n', mean(double(p)) * 100);
