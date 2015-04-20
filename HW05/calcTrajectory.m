function t = calcTrajectory(ci,d)
  % Calculates the trajectory of a particle given the converted inputs and
  % the dependents. Returns the path of the trajectory as (x,y) coordinates
  % with the x coordinates in the first row of the return vector and the y
  % coordinates in the second row.
  % Use: calcTrajectory(ci,d)
    global G
    ts = 0:.01:d(7);
    xs = linspace(0,d(8),length(ts));
    ys = ci(4) + d(3).*ts + .5*G.*ts.^2;
    t = [xs;ys];
end