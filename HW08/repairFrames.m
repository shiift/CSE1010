function [repairedFrames errorFrames] = repairFrames(frames, desiredParity)
% This function uses the repairFrame function to repair the frames of a 3-D
% matrix. It will determine whether or not the frame can be repaired. This
% function will also output the number of each frame that cannot be
% repaired and will display a statement for each frame describing the
% result of each frame.
% Use: repairFrames(frames, desiredParity)
  repairedFrames = [];
  errorFrames = [];
  numFrames = size(frames, 3);
  for i = 1:numFrames
    frame = frames(:, :, i);
    [errRows errCols] = checkParityOfFrame(frame, desiredParity);
    [repairedFrame repairStatus] = repairFrame(frame, errRows, errCols);
    switch repairStatus
      case 0
        fprintf('frame %g could not be repaired\n', i);
        errorFrames(end+1) = i; %#ok<AGROW>
      case 1
        fprintf('frame %g is correct\n', i);
      case 2
        fprintf('frame %g has been repaired\n', i);
    end
    repairedFrames(:, :, i) = repairedFrame; %#ok<AGROW>
  end
end