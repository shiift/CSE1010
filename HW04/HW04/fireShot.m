function plotShotResult = fireShot(fieldSize,pondRadius)
  % Fires a single shot and returns either a 'thud' or 'splash' for missing
  % or hitting the pond respectively.
  % Use: fireShot(fieldSize,pondRadius)
    xLoc = rand*fieldSize-fieldSize/2;
    yLoc = rand*fieldSize-fieldSize/2;
    plotShotResult = plotShot(pondRadius,xLoc,yLoc);
end