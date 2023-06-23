function [ R ] = convertToDisplay(M)
  [r, c] = size(M);
  R = zeros(size(M));
  for i = 1:r
    for j = 1:c
      if M(i, j) > 0.5
        R(i, j) = 1;
      else
        R(i, j) = 0;
      end
    end
  end
end
