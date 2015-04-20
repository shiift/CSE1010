% N-Body Simulation
% CSE1010 Project 6, Fall 2012
% William Dickson
% 10/22/2012
% TA: Levon Nazaryan
% Section: 009L
% Instructor: Jeffrey A. Meunier
clc   % clear command window
clear % clear all variables
clf   % clear plot area
axis equal
hold on


numBodies       =  4;
global G
G               =  50; % not -9.8 in this project!
massFactor      =  40;
minMass         =  5;
distanceFactor  =  1000;
velocityFactor  =  3;
color           = 'green';

% Calculations
for n = 1:numBodies
   Masses(n) = rand * massFactor + minMass;
   Xs(n) = rand * distanceFactor - distanceFactor/2;
   Ys(n) = rand * distanceFactor - distanceFactor/2;
   Dxs(n) = rand * velocityFactor - velocityFactor/2;
   Dys(n) = rand * velocityFactor - velocityFactor/2;
end

% Draw circle
plotBodies(Xs,Ys,Masses,color)

% Change Xs and Ys
[Xs Ys] = moveBodies(Xs, Ys, Dxs, Dys);

% Plot all changes
while true
    plotBodies(Xs,Ys,Masses,color)
    [Xs,Ys] = moveBodies(Xs,Ys,Dxs,Dys);
    [Dxs,Dys] = accelerateBodies(Xs,Ys,Dxs,Dys,Masses);
    plotBodies(Xs,Ys,Masses,'black')
    pause(eps)
end
