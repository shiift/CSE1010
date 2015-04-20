function plotShotResult = plotShot(pondRadius,xLoc,yLoc)
  % Plots a point on the pond and returns a splash or a thud for a point
  % inside or outside the pond respectively.
  % Use: plotShot(pondRadius,xLoc,yLoc)
    if hitPond(pondRadius,xLoc,yLoc)==true
        plot(xLoc,yLoc, 'b*')
        plotShotResult = 'splash';
    else
        plot(xLoc,yLoc, 'go')
        plotShotResult = 'thud';
    end
    % disp(plotShotResult)
end