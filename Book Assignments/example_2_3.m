clear, clc
time = 0:10:120;
velocity = .00001*time.^3-0.00488*time.^2+0.75795*time+181.3566;
acceleration = 3-6.2e-05*velocity.^2;
disp('Time, Velocity, Acceleration Values');
disp([time',velocity',acceleration']);