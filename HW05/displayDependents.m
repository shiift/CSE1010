function displayDependents(d)
  % Displays the "dependents" (or any values stored in the first 8
  % elements of a vector) in order.
  % Use: displayDependents(d)
    fprintf('Velocity              = %g m/s\n',d(1))
    fprintf('Vx                    = %g m/s\n',d(2))
    fprintf('Vy                    = %g m/s\n',d(3))
    fprintf('Time to apogee        = %g s\n',d(4))
    fprintf('Height at apogee      = %g m\n',d(5))
    fprintf('Time to fall to earth = %g s\n',d(6))
    fprintf('Total time            = %g s\n',d(7))
    fprintf('Distance traveled     = %g m\n',d(8))
end