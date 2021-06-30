addpath('../../neural-network');

load('line-recognition-01.mat');

prediction = predict([0 0 0 0 0 1 0 0 1]', cellW);  % vertical (lower right)

printf('Real value: vertical\n');
if(prediction == [1; 0])
  printf('Predicted value: vertical\n');
else
  printf('wrong prediction [%d; %d]\n', prediction); % horizontal (lower right)
end;

prediction = predict([0 0 0 0 0 0 0 1 1]', cellW);

printf('Real value: horizontal\n');
if(prediction == [0; 1])
  printf('Predicted value: horizontal\n');
else
  printf('wrong prediction [%d; %d]\n', prediction);
end;
