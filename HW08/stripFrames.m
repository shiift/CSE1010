function blocks = stripFrames(frames)
% This function takes a 3-d matrix of 9x9 frames and removes the parity row
% and column, returning a 3-d matrix of 8x8 payload bits.
% Use: stripFrames(frames)
  blocks = frames(1:8, 1:8, :);
end