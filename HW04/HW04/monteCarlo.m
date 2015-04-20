% Monte Carlo Area calculation
% CSE1010 Project 4, Fall 2012
% William Dickson
% 10/1/2012
% TA: Levon Nazaryan
% Section: 009L
% Instructor: Jeffrey A. Meunier


clc             % clear command window
clear           % clear all variables
clf             % clear plot area
rng('shuffle')  % shuffle the random number generator

fieldSize = input('Enter the size of the field: ');
pondRadius = input('Enter the radius of the pond: ');
numShots = input('Enter the number of shots: ');

setupField(fieldSize);
plotPond(pondRadius);
numSplashes = fireShots(numShots,fieldSize,pondRadius);
fprintf('Number of shots = %g\n',numShots)
fprintf('Number of splashes = %g\n',numSplashes)
estimatedPondArea = estimatePondArea(numSplashes,numShots,fieldSize);
fprintf('Estimated pond area = %g\n',estimatedPondArea)
estimatedPi = estimatePi(estimatedPondArea,pondRadius);
fprintf('Estimated value of pi = %g\n',estimatedPi)
piErrorPercentage = piErrorPercent(estimatedPi);
fprintf('Error in estimation of pi = %4.5g%%\n',piErrorPercentage)