% Analysis of Temperature Readings
% Project 2, CSE1010 Fall 2012
% Date: 9/10/2012
% Name: William Dickson
% Section: 009L
% TA: Levon Nazaryan
% Instructor: Jeffrey A. Meunier
clc     % clear command window
clear   % clear all variables

% Start of Program - Call allTemps and assign to Temps
Temps = allTemps;

% Display number of tmperature readings
disp('Number of temperature readings:')
length(Temps)

% Find Non-number vector locations and store to "Nans" variable
Nans = find(isnan(Temps));

% Use the means of previous and next values to create real numbers
Means = mean([Temps(Nans-1); Temps(Nans+1)]);

% Reaplace the NaNs
Temps(Nans) = Means;

% Calculate and Show Max, Min, and Mean Temperatures
disp('Maximum temperature:')
max(Temps)

disp('Minimum temperature:')
min(Temps)

disp('Mean temperature:')
mean(Temps)

% Find Temperatures below freezing
disp('Number of temperature readings below freezing:')
Freezing = find(Temps<32);
length(Freezing)

% Store durations between freezing values in a vector
Nonfreezing = Freezing(2:end)-Freezing(1:end-1)-1;

% Find longest above freezing duration
disp('Maximum consecutive readings above freezing:')
max(Nonfreezing)

% Determine mean number of consecutive readings above freezing
Nonzero_freezing_durations = Nonfreezing(find(Nonfreezing));
disp('Mean consecutive readings above freezing:')
mean(Nonzero_freezing_durations)

% Plot the temperatures (uncomment next line to run)
plot(Temps)