% Trajectories
% CSE1010 Project 5, Fall 2012
% Name: William Dickson
% Date: 10/10/2012
% Section: 009L
% TA: Levon Nazaryan
% Instructor: Jeffrey A. Meunier

clc    % clear command window
clear  % clear all variables
clf    % clear plot area

while true
    setupGlobals
    
    i = getInputs;

    if isempty(i) == 1
        break
    end

    ci = convertInputs(i);
    displayConvertedInputs(ci);
    d = calcDependents(ci);
    displayDependents(d);
    t = calcTrajectory(ci,d);

    plot(t(1,1:end),t(2,1:end),'o')
end