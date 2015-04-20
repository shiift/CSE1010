function result = hitPond(pondRadius,xLoc,yLoc)
  % Determines whether a point is inside or outside the pond and returns
  % true of false respectively.
  % Use: hitPond(pondRadius,xLoc,yLoc)
    if sqrt(xLoc^2+yLoc^2)<pondRadius
        result=true;
    else
        result=false;
    end
end