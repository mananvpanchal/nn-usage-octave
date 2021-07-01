addpath('../../neural-network');

load('odd-even.mat');

printf('Cost : %f\n', J);

X = [[0 0 0 0];
[0 0 0 1];
[0 0 1 0];
[0 0 1 1];
% [0 1 0 0];
[0 1 0 1];
[0 1 1 0];
[0 1 1 1];
[1 0 0 0];
[1 0 0 1];
[1 0 1 0];
% [1 0 1 1];
[1 1 0 0];
[1 1 0 1];
[1 1 1 0];
[1 1 1 1]
];

y = [[1 0]; [0 1]; [1 0]; [0 1];
% [1; 0];
[0 1]; [1 0]; [0 1];
[1 0]; [0 1]; [1 0];
% [0; 1];
[1 0]; [0 1]; [1 0]; [0 1]];

evaluation(X, cellW, y);
