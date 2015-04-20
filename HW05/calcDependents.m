function d = calcDependents(ci)
  % Calculates the dependents given the converted inputs. Returns the
  % values for velocity, x velocity, initial y velocity, time to apogee,
  % the y coordinate of apogee, the time to fall, the total time, and
  % horizontal distance in a vector (in that order).
  % Use: calcDependents(ci)
    global G
    m = ci(1);
    e = ci(2);
    a = ci(3);
    y0 = ci(4);
    v = sqrt(2*e/m);
    vx = v*cos(a);
    vy = v*sin(a);
    tap = -vy/G;
    yap = y0 + vy*tap + .5*G*tap^2;
    tfall = sqrt(-2*yap/G);
    t = tap + tfall;
    dh = vx*t;
    d = [v vx vy tap yap tfall t dh];
end