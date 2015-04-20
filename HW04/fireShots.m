function splashCount = fireShots(numShots,fieldSize,pondRadius)
  % Fires a number of shots into the pond using the fireShot function and
  % returns the number of shots that hit the pond.
  % Use: fireShots(numShots,fieldSize,pondRadius)
    splashCount = 0;
    while numShots>0
        numShots=numShots-1;
        plotShotResult = fireShot(fieldSize,pondRadius);
        if strcmp(plotShotResult,'splash') == 1
            splashCount = splashCount + 1;
        end
    end
end