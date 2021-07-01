
addpath('../../neural-network-octave');

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


cellW = randomWeights(X, [12; 4], y);

[ J, cellW ] = neuralNetwork(X, cellW, y, 700, 2.8);

save('line-recognition-01.mat', 'cellW', 'J');

printf('Trained!!!\n');
