addpath('../../neural-network-octave');

load('line-recognition-01.mat');

printf('Cost : %f\n', J);

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

pred = evaluation(X, cellW, y);

printf('\nTraining Set Accuracy: %f\n', pred);
