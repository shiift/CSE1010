%-------------------------------------------------------------------------
% Example 3_2 This program determines the distance between two points that
% are specified with latitude and logitude values that are in the Northern
% Hemisphere.
%
clear, clc
%
% Get locations of two points
lat1 = input('Enter latitude north for point 1: ');
long1 = input('Enter longitude west for point 1: ');
lat2 = input('Enter latitude north for point 2: ');
long2 = input('Enter longitude west for point 2: ');
%
% Convert latitude and logitude to rectangular coordinates.
rho = 3960;
phi = (90 - lat1)*(pi/180);
theta = (360 - long1)*(pi/180);
x1 = rho*sin(phi)*cos(theta);
y1 = rho*sin(phi)*sin(theta);
z1 = rho*cos(phi);
phi = (90 - lat2)*(pi/180);
theta = (360 - long2)*(pi/180);
x2 = rho*sin(phi)*cos(theta);
y2 = rho*sin(phi)*sin(theta);
z2 = rho*cos(phi);
% Compute the angle between vectors.
dot = x1*x2 + y1*y2 + z1*z2;
dist1 = sqrt(x1*x1 + y1*y1 + z1*z1);
dist2 = sqrt(x2*x2 + y2*y2 + z2*z2);
gamma = acos(dot/(dist1*dist2));
% Compute and print the great circle distance.
display('Great Circle Distance in miles:');
fprintf('%8.0f \n',gamma*rho)
%-------------------------------------------------------------------------