function estimatedPondArea = estimatePondArea(numSplash,numShot,fieldSize)
  % Estimates the area of the pond.
  % Use: estimatePondArea(numSplash,numShot,fieldSize)
    estimatedPondArea = numSplash/numShot*fieldSize^2;
end